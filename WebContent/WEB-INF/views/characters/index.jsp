<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>
        <h2>登場人物</h2>
        <ul>
            <c:if test="${empty characters}">
            <h2>登録されていません</h2>
            </c:if>
            <c:forEach var="character" items="${characters}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${character.id}">
                        <c:out value="${character.id}" />:
                    </a>
                    <img src="${character.url}" width="200" >　<c:out value="${character.character_name}" /><br />
                    <p>年齢:<c:out value="${character.age}" />歳|性別:<c:out value="${character.gender}" />
                    |出身地(住所):<c:out value="${characte.hometown}" />|初登場(原作):<c:out value="${character.first_appearance}" />
                    |声の出演:<c:out value="${character.voice_actor}" /><br />
                    職歴・学歴:<c:out value="${character.occupation}" /> |特技:<c:out value="${character.speciality}" />
                    |カテゴリー:<c:choose>
                                    <c:when test="${character.category == '01'}">毛利探偵事務所</c:when>
                                    <c:when test="${character.category == '02'}">阿笠博士邸</c:when>
                                    <c:when test="${character.category == '03'}">工藤優作邸</c:when>
                                    <c:when test="${character.category == '04'}">大阪</c:when>
                                    <c:when test="${character.category == '05'}">怪盗</c:when>
                                    <c:when test="${character.category == '06'}">FBI</c:when>
                                    <c:when test="${character.category == '07'}">公安</c:when>
                                    <c:when test="${character.category == '08'}">CIA</c:when>
                                    <c:when test="${character.category == '09'}">黒ずくめの組織</c:when>
                                 </c:choose>
                    </p>
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
        <div align="right">
        <form method="GET" >
            <input type="text" name="nameSearch" placeholder="キャラクター名" size="10" required/>
            <button type="submit" name="search" value="chara">検索</button>
        </form>
        <form method="GET" >
            <select name="categorySearch" required>
                <option disabled selected value="">カテゴリー選択</option>
                <option value="01">毛利探偵事務所</option>
                <option value="02">阿笠博士邸</option>
                <option value="03">工藤優作邸</option>
                <option value="04">大阪</option>
                <option value="05">怪盗</option>
                <option value="06">FBI</option>
                <option value="07">公安</option>
                <option value="08">CIA</option>
                <option value="09">黒ずくめの組織</option>
             </select>
             <button type="submit" name="search" value="category">検索</button>
        </form>
        </div>
        <p><a href="${pageContext.request.contextPath}/new">キャラクターの登録</a></p>
        <p><a href="${pageContext.request.contextPath}/index">一覧</a></p>
    </c:param>
</c:import>
