<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/2/27
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Material Admin</title>

    <!-- Vendor CSS -->
    <link href="<%=basePath%>view/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <!-- CSS -->
    <link href="<%=basePath%>view/css/app.min.1.css" rel="stylesheet">
    <link href="<%=basePath%>view/css/app.min.2.css" rel="stylesheet">
</head>
<body class="four-zero-content">
<div class="four-zero">
    <h2>NULL!</h2>
    <small>Nah.. it's 404</small>
    <footer>
        <a href="<%=basePath%>/supplierController/supplierList.do"><i class="zmdi zmdi-arrow-back"></i></a>
        <a href="<%=basePath%>/mainController//main.do"><i class="zmdi zmdi-home"></i></a>
    </footer>
</div>
</body>
</html>

