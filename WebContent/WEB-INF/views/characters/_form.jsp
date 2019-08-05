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
<p><label for="url"> 画像のURL</label></p>
<input type="text" name="url" value="${character.url}" />

<p><label for="character"> キャラクター名</label></p>
<input type="text" name="character_name" value="${character.character_name}" />

<p><label for="aget">年齢</label></p>
<input type="number" name="age" value="${character.age}" min="0" max="150"/>歳

<p><label for="gender">性別</label></p>
<input type="text" name="gender" value="${character.gender}" />

<p><label for="first_appearance">初登場(原作)</label></p>
<input type="text" name="first_appearance" value="${character.first_appearance}" />

<p><label for="voice_actor">声優</label></p>
<input type="text" name="voice_actor" value="${character.voice_actor}" />

<p><label for="homettown">出身地(住所)</label></p>
<input type="text" name="hometown" value="${character.hometown}" />

<p><label for="occupation">職歴・学歴</label></p>
<input type="text" name="occupation" value="${character.occupation}" />

<p><label for="speciality">特技</label></p>
<input type="text" name="speciality" value="${character.speciality}" />

<p><label for="category">カテゴリー</label></p>
<select name="category" >
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

<input type="hidden" name="_token" value="${_token}" />
<p><button type="submit">登録</button>
</p>