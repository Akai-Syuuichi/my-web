<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">

        <h2>id : ${character.id} のキャラクター詳細ページ</h2>

        <p>画像：<c:out value="${character.url}" /></p>
        <p>キャラクター名：<c:out value="${character.character_name}" /></p>
        <p>年齢：<c:out value="${character.age}" /></p>
        <p>性別：<c:out value="${character.gender}" /></p>
        <p>出身地：<c:out value="${character.hometown}" /></p>
        <p>初登場：<c:out value="${characterfirst_appearance}" /></p>
        <p>声優：<c:out value="${character.voice_actor}" /></p>
        <p>職業：<c:out value="${characteroccupation}" /></p>
        <p>特技：<c:out value="${character.speciality}" /></p>

        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>

    </c:param>
</c:import>
