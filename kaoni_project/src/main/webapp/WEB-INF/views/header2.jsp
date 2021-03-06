<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    <title>Kaoni</title>

	<!-- jquery -->
	<script src="./resources/vendor/jquery/jquery.min.js"></script>
    <!-- Custom fonts for this template 푸터에 없음-->
    <link href="/resources/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template 푸터에 있음-->
    <link href="./resources/css/sb-admin-2.min.css" rel="stylesheet">
	</head>
	<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="http://localhost:8080/">
                <div class="sidebar-brand-icon rotate-n-15">
                </div>
                <div class="sidebar-brand-text mx-3">Kaoni</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">



            <!-- Divider -->
            <hr class="sidebar-divider">

 
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>코로나</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">코로나</h6>
                        <c:choose>
                        <c:when test="${emnum eq 'EM0000'}">
                        <a class="collapse-item" href="adminmain.kaoni">관리자용 사내 코로나 결과</a>
                        </c:when>
                        	
                        <c:otherwise>
                        <a class="collapse-item" href="http://localhost:8080/pcrForm.kaoni">내 코로나 결과 입력하기</a>
                        <a class="collapse-item" href="http://localhost:8080/pcrMine.kaoni">내 코로나 결과 모두보기</a>
                        <a class="collapse-item" href="http://localhost:8080/pcrSelectAll.kaoni">사내 코로나 정보 모두보기</a>
                       </c:otherwise>
                        	
                        </c:choose>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
           
           <c:choose>
           <c:when test="${emnum eq 'EM0000'}"></c:when>
           
           <c:otherwise>
           
            <li class="nav-item">
                <a class="nav-link collapsed" href="http://localhost:8080/pcrSelectAll.kaoni" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities" >
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>자가진단</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">자가진단</h6>
                        <a class="collapse-item" href="http://localhost:8080/selfForm.kaoni">자가진단하기</a>
                        <a class="collapse-item" href="http://localhost:8080/selfSelectAll.kaoni">내 자가진단 결과 모아보기</a>
                    </div>
                </div>
            </li>
            </c:otherwise>
			</c:choose>
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Nav Item - Charts -->
            <li class="nav-item">

                <a class="nav-link" href="ShowAllPost.kaoni">

                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>공지사항</span></a>
            </li>

            <!-- Nav Item - Tables -->
              <c:choose>
            <c:when test="${emnum eq 'EM0000'}">
            </c:when>
            <c:otherwise>
            <li class="nav-item">
                <a class="nav-link" href="updateInfo_pwCheck.kaoni">
                    <i class="fas fa-fw fa-table"></i>
                    <span>내정보 수정</span></a>
            </li>
            </c:otherwise>
            </c:choose>
            <li class="nav-item">
                <a class="nav-link" href="logOut.kaoni">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>로그아웃</span></a>
            </li>
            <c:choose>
            <c:when test="${emnum eq 'EM0000'}">
            <hr class="sidebar-divider d-none d-md-block">
            <li class="nav-item">
                <a class="nav-link" href="adminMemberlist.kaoni">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>회원관리하기(관리자)</span></a>
            </li>
            </c:when>
            <c:otherwise>
            
            </c:otherwise>
            </c:choose>
            

            <!-- Divider -->
            

        </ul>
        </div>
        <!-- End of Sidebar -->
		<body>
		<html>