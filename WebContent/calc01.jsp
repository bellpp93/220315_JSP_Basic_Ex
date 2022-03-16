<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 -->
<%	// 자바 코드 기술
	int result = 0;

	if(request.getMethod().equals("POST")) {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		String operatorStr = request.getParameter("operator");
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		if(operatorStr.equals("+")) {
			result = num1 + num2;
		}else if(operatorStr.equals("-")) {
			result = num1 - num2;
		}else if(operatorStr.equals("*")) {
			result = num1 * num2;
		}else if(operatorStr.equals("/")) {
			result = num1 / num2;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자인 부분과 프로그램 로직을 분리하지 않은 '계산기' 웹 프로그램 구현 방법</title>
</head>
<body>
	<center>
	<h3>간단한 사칙연산 계산기</h3>
	<hr>
	<br><br>
	<form name="calcForm" method="POST">
		<input type="text" name="num1" width="200" size="5"/>
		<select name="operator">
			<option selected>선택</option>
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type="text" name="num2" width="200" size="5"/>
		<input type="submit" value="계산"/>
		<input type="reset" value="다시 입력"/>
	</form>
	<br>
	계산결과 : <%= result %>
	</center>
</body>
</html>