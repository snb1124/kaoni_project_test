<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>Insert title here</title> 
</head> 
<style> 
 
* { 
    box-sizing: border-box; /* 길이 계산을 편하게 하기위함. box-sizing에 관한 설명은 아래 링크를 참고해주세요 */ 
  } 
    body{ 
        margin: 0; /* body의 기본마진을 없애줍니다(선택사항) */ 
    font-family: sans-serif; 
    } 
    header ,main, footer{ 
    margin: auto; /* header의 양쪽 여백(margin)을 동등하게 맞춤 -> 수평가운데정렬 */ 
    width: 1080px; 
    height: 300px; 
    display: flex; 
    align-items: center; /* 하위 요소들 수직 가운데정렬 */ 
    position: relative; 
   } 
     header { 
        background: lightgray; 
        height: 215px; 
        outline : 1px black solid; 
      } 
      main { 
        background: #f2f4f7; 
        min-height: 700px; 
      } 
      footer { 
        background: darkgray; 
        height: 310px; 
      } 
      div{ 
        outline: 1px black solid; 
      } 
      table tr td{ 
        outline: 1px blue solid; 
      } 
</style> 
<body> 
<%-- <%String id = (String)session.getAttribute("emnum");  %> 
<h4>세션 사번 :<%=id%></h4> --%> 
 
 
  <header>상단 
   <div> 
  <h4>세션 사번 :${emnum}</h4><br> 
<h4>세션 이름 :${member}</h4><br> 
<a href="http://localhost:8080/memberSignUp.kaoni">회원가입</a> 
<a href="http://localhost:8080/memberLogin.kaoni">로그인</a> 
<a href="http://localhost:8080/updateInfo_pwCheck.kaoni">회원정보수정</a> 
<a href="http://localhost:8080/pcrForm.kaoni">코로나진단</a> 
<a href="http://localhost:8080/pcrSelectAll.kaoni">Pcr결과리스트</a> 
<a href="http://localhost:8080/PcrUpdateForm.kaoni">Pcr업데이트</a> 
<a href="http://localhost:8080/selfForm.kaoni">자가진단</a> 
<a href="http://localhost:8080/selfSelectAll.kaoni">자가진단 결과리스트</a> 
<a href="http://localhost:8080/logOut.kaoni">로그아웃</a> 
</div> </header> 
  </header> 
    <main>메인 
      <div style="width: 1080px; height: auto;"> 
        <div> 
          <div style="display: inline-block; height: 200px;">사내 감염현황 
          <table> 
            <tr> 
              <td>총원</td> <td>10명</td> 
            </tr> 
          </table> 
          </div> 
          <div style="display: inline-block;">로그인창</div> 
        </div> 
 
        <div style="display: inline-block; height: 200px;">국내 코로나 현황</div> 
        <div style="display: inline-block;">사내 코로나 관련 이슈</div> 
      </div> 
 
 
    </main> 
    <footer>하단</footer> 
</body> 
</html>