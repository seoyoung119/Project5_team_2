<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.BoardDAO, com.example.BoardVO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link href="<c:url value="../css/font.css" />" rel="stylesheet">
    <link href="<c:url value="../css/list.css" />" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>한동대학교 공지 게시판</title>
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제하겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
</head>
<body>
<%
    String id = (String) session.getAttribute("id");
    String pw = (String) session.getAttribute("pw");
    String username = (String) session.getAttribute("username");
    if (id != null && pw != null) {
%>
<img src="../img/banner.png" alt="배너 사진" width="100%" id="img1"/>
<div id="myDiv">
    <h1>한동대학교 공지 게시판<p>${username}님 반갑습니다.</p></h1>
    <div id="myDiv2">
        <button onclick="location.href='add'" id="button1">Add New Post</button>
        <button onclick="location.href='../logout'" id="button1">Logout</button>
    </div>
</div>
<table id="list" width="100%">
    <tr>
        <th>Id</th>
        <th>공지 제목</th>
        <th>작성자</th>
        <th>공지 내용</th>
        <th>허용 댓글 수</th>
        <th>추천 학년</th>
        <th>상세 내용</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${list}" var="u" varStatus="status">
        <tr>
            <td>${status.index + 1}</td>
            <td>${u.gettitle()}</td>
            <td>${u.getwriter()}</td>
            <td>${u.getcontent2()}</td>
            <td>${u.getletters()}</td>
            <td>${u.getTotal()}학년</td>
            <td><a href="view/${u.seq}">보러가기️</a></td>
            <td><a href="editform/${u.seq}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
        </tr>
    </c:forEach>


    <%
        } else {
            response.sendRedirect("../login");
        }
    %>


</table>
</body>
</html>