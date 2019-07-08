package controllers;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Character;
import utils.DBUtil;

/**
 * Servlet implementation class CreateServlet
 */
@WebServlet("/create")
public class CreateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String _token = (String) request.getParameter("_token");
        if (_token != null && _token.equals(request.getSession().getId())) {
            EntityManager em = DBUtil.createEntityManager();

            Character m = new Character();

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

            Integer first_appearance = Integer.parseInt("first_appearance");
            m.setFirst_appearanse(first_appearance);

            String voice_actor = request.getParameter("voice_actor");
            m.setVoice_actor(voice_actor);

            String occupation = request.getParameter("occupation");
            m.setOccupation(occupation);

            String speciality = request.getParameter("speciality");
            m.setSpeciality(speciality);

            response.sendRedirect(request.getContextPath() + "/index");
        }

    }
}
