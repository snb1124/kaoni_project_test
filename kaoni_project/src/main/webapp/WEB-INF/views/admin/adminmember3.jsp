<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.kaoni.Member.VO.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <!-- bootswatch journal-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css" integrity="sha384-QDSPDoVOoSWz2ypaRUidLmLYl4RyoBWI44iA5agn6jHegBxZkNqgm2eHb6yZ5bYs" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <title>kaoni_prject index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: eNno - v4.7.0
  * Template URL: https://bootstrapmade.com/enno-free-simple-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function selectMember(emnum){
	
	var id = emnum.id;
	alert(id);
	$("#emnum").val(id);
	
	$("#adminmemberselect").attr({
		"action":"/updateInfo.kaoni",
		"method":"GET",
		"enctype":"application/x-www-form-urlencoded"
	}).submit();
}

function addmemeber(){
	location.href="http://localhost:8080/memberSignUp.kaoni";
	
}


</script>
<style type="text/css">


table tr td {
border: 1px solid rgba(255, 0, 0, 2);
border-right: none;
border-top: none;
border-left: none;
border-color: black 
}


</style>
</head>
<body>
 <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="http://localhost:8080/">Kaoni</a></h1>
	<!-- 헤더 -->
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto" href="http://localhost:8080/adminMemberlist.kaoni">사원관리하기</a></li>
          <li><a class="nav-link scrollto" href="http://localhost:8080/adminmain.kaoni">사원PCR정보보기</a></li>
          <li><a class="nav-link scrollto" href="http://localhost:8080/adminPcrInsertForm.kaoni">사원 PCR정보 입력하기</a></li>
          <li><a class="nav-link scrollto" href="http://localhost:8080/ShowAllPost.kaoni">공지사항</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  <main id="main" style="padding-top:85px">
  <form id ="adminmemberselect" name="adminmemberselect">
  <table  align="center" class="selectall">
<thead>
  <tr class="table-info">
  	<th>사원번호</th>
    <th>이름</th>
    <th>직책</th>
    <th>부서</th>
    <th>아이디</th>
    <th>패스워드</th>
  </tr>
  <%
  //세션, 쿼리 조인 후 직책 부서 추가. 
  //사원번호, 이름, 직책, 부서, id, passwd
Object obj = request.getAttribute("list");
List<MemberVO> list = (List)obj;
for(int i = 0; i < list.size(); i++){
MemberVO mvo = list.get(i);


%>

  <tr style="cursor: pointer;" id="<%= mvo.getEmnum() %>" onclick="selectMember(this)">
  	<td><%= mvo.getEmnum() %></td>
    <td><%=mvo.getName() %></td>
    <td><%=mvo.getPosition() %></td>
    <td><%=mvo.getDname() %></td>
    <td><%=mvo.getId() %></td>
    <td><%=mvo.getPasswd() %></td>
    <td><input type="hidden" id="emnum" name="emnum" value=""></td>
  </tr>
  
<%
}
%>
	<tr>
		<td><input type="button" id="insertbtn" onclick="addmemeber()" value="회원 추가하기"></td>
	</tr>
</table>

</form>
  </main><!-- End #main -->
  
  <%@include file ="/WEB-INF/views/footer.jsp" %>
</body>
</html>