package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Character;
import models.validators.CharacterValidator;
import utils.DBUtil;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String _token = (String) request.getParameter("_token");
        if (_token != null && _token.equals(request.getSession().getId())) {
            EntityManager em = DBUtil.createEntityManager();

            Character m = em.find(Character.class, (Integer) (request.getSession().getAttribute("character_id")));

            String url = request.getParameter("url");
            m.setUrl(url);

            String character_name = request.getParameter("character_name");
            m.setCharacter_name(character_name);

            Integer age = Integer.parseInt("age");
            m.setAge(age);

            String gender = request.getParameter("gender");
            m.setGender(gender);

            String hometown = request.getParameter("hometown");
            m.setHometown(hometown);

            String first_appearance = request.getParameter("first_appearance");
            m.setFirst_appearance(first_appearance);

            String voice_actor = request.getParameter("voice_actor");
            m.setVoice_actor(voice_actor);

            String occupation = request.getParameter("occupation");
            m.setOccupation(occupation);

            String speciality = request.getParameter("speciality");
            m.setSpeciality(speciality);

            List<String> errors = CharacterValidator.validate(m);
            if (errors.size() > 0) {
                em.close();

                request.setAttribute("_token", request.getSession().getId());
                request.setAttribute("character", m);
                request.setAttribute("errors", errors);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/characters/new.jsp");
                rd.forward(request, response);
            } else {

                em.getTransaction().begin();
                em.persist(m);
                em.getTransaction().commit();
                request.getSession().setAttribute("flush", "更新が完了しました。");
                em.close();

            }

            request.getSession().removeAttribute("character_id");

            response.sendRedirect(request.getContextPath() + "/index");

        }

    }
}
