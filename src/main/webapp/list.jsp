<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<table>
<tr>
<td>编号</td>
<td>用户名</td>
<td>密码</td>
</tr>
<c:forEach items="${list}" var="s">
<tr>
<td>${s.id }</td>
<td>${s.username }</td>
<td>${s.password }</td>
</tr>
</c:forEach>
</table>
</body>
</html>