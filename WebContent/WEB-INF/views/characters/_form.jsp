<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="url"> 画像のURL</label><br />
<input type="text" name="url" value="${character.url}" />
<br /><br />

<label for="character"> キャラクター名</label><br />
<input type="text" name="character_name" value="${character.character_name}" />
<br /><br />

<label for="aget">年齢</label><br />
<input type="number" name="age" value="${character.age}" min="0" max="150"/>
<br /><br />

<label for="gender">性別</label><br />
<input type="text" name="gender" value="${character.gender}" />
<br /><br />

<label for="first_appearance">初登場(原作)</label><br />
<input type="text" name="first_appearance" value="${character.first_appearance}" />
<br /><br />

<label for="voice_actor">声優</label><br />
<input type="text" name="voice_actor" value="${character.voice_actor}" />
<br /><br />

<label for="homettown">出身地(住所)</label><br />
<input type="text" name="hometown" value="${character.hometown}" />
<br /><br />

<label for="occupation">職歴・学歴</label><br />
<input type="text" name="occupation" value="${character.occupation}" />
<br /><br />

<label for="speciality">特技</label><br />
<input type="text" name="speciality" value="${character.speciality}" />
<br /><br />

<label for="category">所属</label><br />
<select name="category">
    <option value="01">毛利探偵事務所</option>
    <option value="阿笠博士邸">阿笠博士邸</option>
    <option value="工藤優作邸">工藤優作邸</option>
    <option value="大阪">大阪</option>
    <option value="怪盗">怪盗</option>
    <option value="FBI">FBI</option>
    <option value="公安">公安</option>
    <option value="CIA">CIA</option>
    <option value="黒ずくめの組織">黒ずくめの組織</option>
</select>
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>