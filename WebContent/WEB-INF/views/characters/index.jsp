<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>    キャラクター一覧</h2>
        <ul>
            <c:forEach var="character" items="${characters}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${character.id}">
                        <c:out value="${character.id}" />
                    </a>
                    ：<img src="${chracter.url}"> &gt;<c:out value="${character.character_name}" />
                    &gt; <c:out value="${character.age}" /> &gt; <c:out value="${character.gender}" />
                    &gt; <c:out value="${character.hometown}" /> &gt; <c:out value="${character.first_appearance}" />
                    &gt; <c:out value="${character.voice_actor}" />
                    &gt; <c:out value="${character.occupation}" /> &gt; <c:out value="${character.speciality}" />
                </li>
            </c:forEach>
        </ul>
        <div id="pagination">
            （全 ${messages_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((characters_count - 1) / 15) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
        <p><a href="${pageContext.request.contextPath}/new">キャラクターの登録</a></p>

    </c:param>
</c:import>
