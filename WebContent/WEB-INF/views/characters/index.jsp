<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>登場人物　一覧</h2>
        <ul>
            <c:forEach var="character" items="${characters}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${character.id}">
                        <c:out value="${character.id}" />
                    </a>
                    ：<img src="${character.url}" width="200"> | <c:out value="${character.character_name}" />
                    |年齢： <c:out value="${character.age}" />歳 |性別： <c:out value="${character.gender}" />
                    |出身地(住所)： <c:out value="${character.hometown}" /> |初登場(原作)： <c:out value="${character.first_appearance}" />
                    |声の出演： <c:out value="${character.voice_actor}" />
                    |職歴・学歴： <c:out value="${character.occupation}" /> |特技： <c:out value="${character.speciality}" />
                    |所属： <c:out value="${character.category}" />
                </li>
            </c:forEach>
        </ul>
        <div id="pagination">
            （全 ${characters_count} 件）<br />
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
