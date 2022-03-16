<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 추가 -->
<jsp:useBean id="calc" class="calc.CalcBean" scope="page"/>
<jsp:setProperty name="calc" property="*"/>
<%  // 자바 코드 기술
	calc.calculate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디자인 부분과 프로그램 로직을 분리했을 때 '디자인' 부분만 담당하는 .jsp 파일</title>
</head>
<body>
	<center>
	<h3>간단한 사칙연산 계산기</h3>
	<hr>
	<br><br>
	<form name="calcForm" method="POST">
		<input type="text" name="num1" width="200" size="5"/>
		<select name="operatorStr">
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
	계산결과 : <jsp:getProperty name="calc" property="result"/>
	</center>
</body>
</html>