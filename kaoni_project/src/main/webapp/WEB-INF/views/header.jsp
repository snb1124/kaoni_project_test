 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
  
<!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
   <link href="./resources/css/sb-admin-2.min.css" rel="stylesheet">
  
  <!-- Template Main CSS File -->  
  

  <!-- =======================================================  
  * Template Name: eNno - v4.7.0  
  * Template URL: https://bootstrapmade.com/enno-free-simple-bootstrap-template/  
  * Author: BootstrapMade.com  
  * License: https://bootstrapmade.com/license/  
  ======================================================== -->  
 
<script> 
$(function() { 
    function slideMenu() { 
        var activeState = $("#menu-container .menu-list").hasClass("active"); 
        $("#menu-container .menu-list").animate({right: activeState ? "0%" : "-100%"}, 400); 
    } 
    $("#menu-wrapper").click(function(event) { 
        event.stopPropagation(); 
        $("#hamburger-menu").toggleClass("open"); 
        $("#menu-container .menu-list").toggleClass("active"); 
        slideMenu(); 
 
        $("body").toggleClass("overflow-hidden"); 
    }); 
 
    $(".menu-list").find(".accordion-toggle").click(function() { 
        $(this).next().toggleClass("open").slideToggle("fast"); 
        $(this).toggleClass("active-tab").find(".menu-link").toggleClass("active"); 
 
        $(".menu-list .accordion-content").not($(this).next()).slideUp("fast").removeClass("open"); 
        $(".menu-list .accordion-toggle").not(jQuery(this)).removeClass("active-tab").find(".menu-link").removeClass("active"); 
    }); 
}); // jQuery load 
 
</script> 
<style type="text/css"> 
div li{ 
float: left; 
} 
</style> 
 <!-- ======= Header ======= --> 
 <header id="header" class="fixed-top"> 
    <div class="container d-flex align-items-center justify-content-between"> 
 
      <h1 class="logo"><a href="http://localhost:8080/">Kaoni</a></h1> 
      <!-- Uncomment below if you prefer to use an image logo --> 
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>--> 
<!-- ?????? --> 
      <nav id="navbar" class="navbar" style="margin-left: 250px; width: 700px;"> 
        <ul> 
          <li> 
          <li><a class="nav-link scrollto" href="http://localhost:8080/pcrSelectAll.kaoni">Pcr??????????????????</a></li> 
          <li><a class="nav-link scrollto " href="http://localhost:8080/pcrForm.kaoni">???Pcr??????????????????</a></li> 
          <li><a class="nav-link scrollto" href="http://localhost:8080/selfForm.kaoni">?????????????????????</a></li> 
  <li><a class="nav-link scrollto" href="http://localhost:8080/ShowAllPost.kaoni">????????????</a></li> 
  <c:choose>  
  <c:when test="${emnum eq 'EM0000'}"> 
  ????????? ?????? 
  <div style="width: 430px; padding-left:20px;"> 
  <li class="nav-link scrollto" style="font-size: 1.1rem; color: black;">${member}???</li> 
  <li><a class="nav-link scrollto" href="http://localhost:8080/logOut.kaoni">????????????</a></li>
  </div> 
  </c:when> 
   
  <c:when test="${not empty emnum}"> 
  ?????? ?????? 
     <div style="width: 430px; padding-left:20px;"> 
     <li class="nav-link scrollto" style="font-size: 1.1rem; color: black;">${member}???</li> 
    <li><a class="nav-link scrollto" href="http://localhost:8080/logOut.kaoni">????????????</a></li>
  </div> 
  </c:when> 
  <c:otherwise> 
   
  <li><a class="nav-link scrollto" href="http://localhost:8080/memberSignUp.kaoni">????????????</a></li> 
          <li><a class="getstarted scrollto" href="http://localhost:8080/memberLogin.kaoni">?????????</a></li> 
 </c:otherwise> 
  </c:choose> 
        </ul> 
        <i class="bi bi-list mobile-nav-toggle"></i> 
      </nav><!-- .navbar --> 
       
       
       <c:choose>
       <c:when test="${empty emnum} }">
       
       </c:when>
       <c:when test="${not empty emnum}">
       
       
<div id="menu-container"> 
            <div id="menu-wrapper"> 
                <div id="hamburger-menu"><span></span><span></span><span></span></div> 
                <!-- hamburger-menu --> 
            </div> 
            <!-- menu-wrapper --> 
            <ul class="menu-list accordion"> 
            
<c:choose>  
  <c:when test="${emnum eq 'EM0000'}">
  ????????? ?????? 
  
     <li id="nav1" class="toggle accordion-toggle">
     <span class="icon-plus"></span> 
     <a class="menu-link" href="http://localhost:8080/adminmain.kaoni">????????? ?????????</a></li> 
   
  </c:when> 
  
  <c:when test="${not empty emnum}"> 
  ?????? ?????? 
     
     <li id="nav1" class="toggle accordion-toggle">
     <span class="icon-plus"></span> 
     <a class="menu-link" href="http://localhost:8080/updateInfo_pwCheck.kaoni">??? ?????? ??????</a></li> 
     	
      <li id="nav2" class="toggle accordion-toggle">  
      <span class="icon-plus"></span> 
      <a class="menu-link" href="http://localhost:8080/pcrMine.kaoni">???PCR??????????????????</a></li>
     
 	<li id="nav3" class="toggle accordion-toggle">
     <span class="icon-plus"></span> 
     <a class="menu-link" href="http://localhost:8080/selfSelectAll.kaoni">?????? ?????? ??????</a></li> 
     
     <li id="nav4" class="toggle accordion-toggle">
     <span class="icon-plus"></span> 
     </li> 
 
  </c:when> 
  <c:otherwise> 
  <h5>????????? ??? ??????????????????</h5>
 </c:otherwise> 
  </c:choose> 
            </ul> 
            <!-- menu-list accordion--> 
        </div> 
        
        </c:when>
       </c:choose>
       
 
    </div> 
  </header><!-- End Header --> 

