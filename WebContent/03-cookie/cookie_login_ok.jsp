<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  	// 0. post방식 받아오기 처리
  	response.setCharacterEncoding("utf-8");
  
  	// 1. 아이디 비밀번호 받아오기
  	String id = request.getParameter("id");
  	String pw = request.getParameter("pw");
  	
  	// 2. checkbox가 체크되었는지 여부도 받아옵니다.
  	String checkId = request.getParameter("id_check");
  	String checkPw = request.getParameter("pw_check");
  %>     

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 아이디는 abc1234, 비밀번호 aaa1111로 처리합니다.
	if(id.equals("abc1234")&&pw.equals("aaa1111")){
		
		// 로그인 처리를 위한 쿠키 발급
		// 쿠키이름 "user_id", 쿠키값은 로그인할때 사용한 id
		// 지속시간은 20초입니다.
		// 완성 후 쿠키 발송까지 아래에 작성해주세요.
		Cookie idCookie = new Cookie("user_id", id);
		idCookie.setMaxAge(20);
		response.addCookie(idCookie);
		
		// 체크박스가 체크되어 있을 경우, 아이디 비밀번호 자동입력 을 위한
		// 쿠키를 발급하기
		

	// 로그인 성공시 cookie_welcome.jsp로 보내주고
		response.sendRedirect("cookie_welcome.jsp");
	}else{
	// 로그인 실패시 "로그인에 실패했습니다." 라고 브라우저에 띄워주세요.
	out.println("로그인에 실패했습니다.");
	}
	
%>
</body>
</html>