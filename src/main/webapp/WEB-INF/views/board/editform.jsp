<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
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
    <h1>한동대학교 공지 게시판 - <span style="color : yellow">수정</span> 화면</h1>
    <form action="editok" method="post" id="inputform">
        <input type="hidden" name="seq" value="${u.seq}"/>
        <div>
            <span>제목</span>
            <input type="text" name="title" value="${u.title}"/>
        </div>
        <div>
            <span>작성자</span>
            <input type="text" name="writer" value="${u.writer}"/>
        </div>
        <div>
            <span>공지 내용</span>
            <input type="text" name="content2" value="${u.content2}"/>
        </div>
        <div>
            <span>허용 댓글 수</span>
            <input type="number" name="letters" value="${u.letters}"/>
        </div>
        <div>
            <span>추천 학년</span>
            <input type="number" name="total" value="${u.letters}"/>
        </div>
        <div>
            <span>상세 내용</span>
            <textarea cols="50" rows="5" name="content">${u.content}</textarea>
        </div>

        <div id="button">
            <input type="submit" value="EDIT"/>
            <input type="button" value="CANCLE" onclick="history.back()"/>
        </div>


    </form>
</div>
<%
    } else {
        response.sendRedirect("../../login");
    }
%>

</body>
</html>