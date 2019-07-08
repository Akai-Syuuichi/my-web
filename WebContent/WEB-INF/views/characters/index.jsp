<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>    キャラクター一覧</h2>
        <ul>
            <c:forEach var="character" items="${characters}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${character.id}">
                        <c:out value="${character.id}" />
                    </a>
                    ：<c:out value="${character.url}"></c:out> <c:out value="${character.character_name}"></c:out> &gt; <c:out value="${character.age}" />
                    &gt; <c:out value="${character.gender}" /> &gt; <c:out value="${character.hometown}" />
                    &gt; <c:out value="${character.first_appearance}" /> &gt; <c:out value="${character.voice_actor}" />
                    &gt; <c:out value="${character.occupation}" /> &gt; <c:out value="${character.speciality}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">キャラクターの登録</a></p>

    </c:param>
</c:import>
