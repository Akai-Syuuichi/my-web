<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${character != null}">
                <h2>人物ファイル</h2>

                <table>
                    <tbody>
                        <tr>
                            <th>画像</th>
                            <td><img src="${character.url}" width="300" ></td>
                        </tr>
                        <tr>
                            <th>名前</th>
                            <td><c:out value="${character.character_name}" /></td>
                        </tr>
                        <tr>
                            <th>年齢</th>
                            <td><c:out value="${character.age}" />歳</td>
                        </tr>
                        <tr>
                            <th>性別</th>
                            <td><c:out value="${character.gender}" /></td>
                        </tr>
                        <tr>
                            <th>出身地</th>
                            <td><c:out value="${character.hometown}" /></td>
                        </tr>
                        <tr>
                            <th>初登場(原作)</th>
                            <td><c:out value="${character.first_appearance}" /></td>
                        </tr>
                        <tr>
                            <th>声の出演</th>
                            <td><c:out value="${character.voice_actor}" /></td>
                        </tr>
                        <tr>
                            <th>職歴・学歴</th>
                            <td><c:out value="${character.occupation}" /></td>
                        </tr>
                        <tr>
                            <th>特技</th>
                            <td><c:out value="${character.speciality}" /></td>
                        </tr>
                        <tr>
                            <th>カテゴリー</th>
                            <td>
                            <c:choose>
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
                            </td>
                        </tr>
                    </tbody>
                </table>

                <p><a href="${pageContext.request.contextPath}/edit?id=${character.id}">キャラクター情報を編集する</a></p>
                <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
            </c:when>
            <c:otherwise>
                <h2>キャラクターが登録されていません</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>
