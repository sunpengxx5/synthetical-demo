<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String bpath = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Demo Mall</title>
</head>
<body>
    <h1>Demo mall</h1>
    <pre>
        <a href=""<%=bpath %>/console-demo/mall" style="font-size:26px;">Demo Mall体验地址</a>
    </pre>
    <h1>Demo Mall 相关资料</h1>
    <pre>
        <br>
        <a href="<%=bpath %>/doc/synchetical-demo-design.html"style="font-size:26px;">综合Demo结构与数据库设计</a>
        <br>
        <a href="<%=bpath %>/doc/synchetical-demo-api.html"style="font-size:26px;">综合Demo后台rest接口使用说明</a>
    </pre>
</body>
</html>
