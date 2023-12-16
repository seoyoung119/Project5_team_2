<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>아시안 게임 순위 집계표</title>
  <link href="<c:url value="/css/font.css" />" rel="stylesheet">
  <link href="<c:url value="/css/input.css" />" rel="stylesheet">
</head>
<body>
<%
  String id = (String) session.getAttribute("id");
  String pw = (String) session.getAttribute("pw");
  if (id != null && pw != null) {
%>
<div id="section">

  <h1>공지 게시판 - 상세 화면</h1>
  <form id="inputform">
    <input type="hidden" name="seq" value="${u.seq}"/>
    <div>
      <span>title</span>
      <input type="text" name="title" value="${u.title}" disabled/>
    </div>
    <div>
      <span>writer</span>
      <input type="text" name="writer" value="${u.writer}" disabled/>
    </div>
    <div>
      <span>content2</span>
      <input type="text" name="content2" value="${u.content2}" disabled/>
    </div>
    <div>
      <span>letters</span>
      <input type="text" name="letters" value="${u.letters}" disabled/>
    </div>
    <div>
      <span>CONTENT</span>
      <textarea cols="50" rows="5" name="content" disabled>${u.content}</textarea>
    </div>
    <div id="button">
      <a href="../editform/${u.seq}">
        <input type="button" value="수정하기" )/>
      </a>
      <input type="button" value="홈으로 가기" onclick="history.back()"/>
    </div>
  </form>
</div>
<%
  } else {
    response.sendRedirect("../../login");
  }
%>판
</body>
</html>