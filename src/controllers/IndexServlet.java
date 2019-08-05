package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Character;
import utils.DBUtil;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @return
     * @return
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    public static List<Character> buildCriteria(String search, String similar, Integer page) {
        search = "%" + search + "%";
        EntityManager manager = DBUtil.createEntityManager();

        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Character> criteria_query = builder.createQuery(Character.class);
        Root<Character> root = criteria_query.from(Character.class);
        criteria_query.select(root)
                .where(builder.like(root.get(similar).as(String.class), search));

        Query query = manager.createQuery(criteria_query);
        List<Character> result = query.getResultList();

        return result;
    }

    public static long buildCountCriteria(String search, String similar, Integer page) {
        search = "%" + search + "%";
        EntityManager manager = DBUtil.createEntityManager();

        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Long> criteria_query = builder.createQuery(Long.class);
        Root<Character> root = criteria_query.from(Character.class);
        criteria_query.select(builder.count(root))
                .where(builder.like(root.get(similar).as(String.class), search));

        long query = manager.createQuery(criteria_query).getSingleResult().longValue();
        return query;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

        int page = 1;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch (NumberFormatException e) {
        }

        long characters_count = (long) em.createNamedQuery("getCharactersCount", Long.class)
                .getSingleResult();

        String btn = request.getParameter("search");
        if (btn == null) {
            List<Character> characters = em.createNamedQuery("getAllCharacters", Character.class)
                    .setFirstResult(15 * (page - 1))
                    .setMaxResults(15)
                    .getResultList();

            em.close();

            request.setAttribute("characters", characters);
            request.setAttribute("characters_count", characters_count);
            request.setAttribute("page", page);

        } else if (btn.equals("chara")) {

            String nameSearch = request.getParameter("nameSearch");
            List<Character> result = buildCriteria(nameSearch, "character_name", page);
            long nameCount = buildCountCriteria(nameSearch, "character_name", page);

            request.setAttribute("characters", result);
            request.setAttribute("characters_count", nameCount);
            request.setAttribute("page", page);

        } else if (btn.equals("category")) {

            String categorySearch = request.getParameter("categorySearch");
            List<Character> result = buildCriteria(categorySearch, "category", page);
            long categoryCount = buildCountCriteria(categorySearch, "category", page);

            request.setAttribute("characters", result);
            request.setAttribute("characters_count", categoryCount);
            request.setAttribute("page", page);

        }

        if (request.getSession().getAttribute("flush") != null) {
            request.setAttribute("flush", request.getSession().getAttribute("flush"));
            request.getSession().removeAttribute("flush");
        }

        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/characters/index.jsp");
        rd.forward(request, response);

    }

}
