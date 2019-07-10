<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label for="title"> 画像のURL</label><br />
<input type="text" name="url" value="${character.url}" />
<br /><br />

<label for="title"> キャラクター名</label><br />
<input type="text" name="character_name" value="${character.character_name}" />
<br /><br />

<label for="content">年齢</label><br />
<input type="text" name="age" value="${character.age}" />
<br /><br />

<label for="content">性別</label><br />
<input type="text" name="gender" value="${character.gender}" />
<br /><br />

<label for="content">初登場</label><br />
<input type="text" name="first_appearance" value="${character.first_appearance}" />
<br /><br />

<label for="content">声の出演</label><br />
<input type="text" name="voice_actor" value="${character.voice_actor}" />
<br /><br />

<label for="content">出身地</label><br />
<input type="text" name="hometown" value="${character.hometown}" />
<br /><br />

<label for="content">職業</label><br />
<input type="text" name="occupation" value="${character.occupation}" />
<br /><br />

<label for="content">特技</label><br />
<input type="text" name="speciality" value="${character.speciality}" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>