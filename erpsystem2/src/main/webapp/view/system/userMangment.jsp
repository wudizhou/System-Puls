<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/5/20
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
    <link href="<%=basePath%>view/vendors/bootgrid/jquery.bootgrid.min.css" rel="stylesheet">


    <!-- CSS -->
    <link href="<%=basePath%>view/css/app.min.1.css" rel="stylesheet">
    <link href="<%=basePath%>view/css/app.min.2.css" rel="stylesheet">
</head>
<body>
<header id="header" class="clearfix" data-current-skin="blue">
    <ul class="header-inner">
        <li id="menu-trigger" data-trigger="#sidebar">
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>

        <li class="logo hidden-xs">
            <a href="index.html">Material Admin</a>
        </li>

        <li class="pull-right">
            <ul class="top-menu">
                <li id="toggle-width">
                    <div class="toggle-switch">
                        <input id="tw-switch" type="checkbox" hidden="hidden">
                        <label for="tw-switch" class="ts-helper"></label>
                    </div>
                </li>

                <li id="top-search">
                    <a href=""><i class="tm-icon zmdi zmdi-search"></i></a>
                </li>

                <li class="dropdown">
                    <a data-toggle="dropdown" href="">
                        <i class="tm-icon zmdi zmdi-email"></i>
                        <i class="tmn-counts">6</i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg pull-right">
                        <div class="listview">
                            <div class="lv-header">
                                Messages
                            </div>
                            <div class="lv-body">
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/1.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">David Belle</div>
                                            <small class="lv-small">Cum sociis natoque penatibus et magnis dis parturient montes</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/2.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Jonathan Morris</div>
                                            <small class="lv-small">Nunc quis diam diamurabitur at dolor elementum, dictum turpis vel</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/3.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Fredric Mitchell Jr.</div>
                                            <small class="lv-small">Phasellus a ante et est ornare accumsan at vel magnauis blandit turpis at augue ultricies</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Glenn Jecobs</div>
                                            <small class="lv-small">Ut vitae lacus sem ellentesque maximus, nunc sit amet varius dignissim, dui est consectetur neque</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Bill Phillips</div>
                                            <small class="lv-small">Proin laoreet commodo eros id faucibus. Donec ligula quam, imperdiet vel ante placerat</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <a class="lv-footer" href="">View All</a>
                        </div>
                    </div>
                </li>
                <li class="dropdown">
                    <a data-toggle="dropdown" href="">
                        <i class="tm-icon zmdi zmdi-notifications"></i>
                        <i class="tmn-counts">9</i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg pull-right">
                        <div class="listview" id="notifications">
                            <div class="lv-header">
                                Notification

                                <ul class="actions">
                                    <li class="dropdown">
                                        <a href="" data-clear="notification">
                                            <i class="zmdi zmdi-check-all"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="lv-body">
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/1.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">David Belle</div>
                                            <small class="lv-small">Cum sociis natoque penatibus et magnis dis parturient montes</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/2.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Jonathan Morris</div>
                                            <small class="lv-small">Nunc quis diam diamurabitur at dolor elementum, dictum turpis vel</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/3.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Fredric Mitchell Jr.</div>
                                            <small class="lv-small">Phasellus a ante et est ornare accumsan at vel magnauis blandit turpis at augue ultricies</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Glenn Jecobs</div>
                                            <small class="lv-small">Ut vitae lacus sem ellentesque maximus, nunc sit amet varius dignissim, dui est consectetur neque</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Bill Phillips</div>
                                            <small class="lv-small">Proin laoreet commodo eros id faucibus. Donec ligula quam, imperdiet vel ante placerat</small>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <a class="lv-footer" href="">View Previous</a>
                        </div>

                    </div>
                </li>
                <li class="dropdown hidden-xs">
                    <a data-toggle="dropdown" href="">
                        <i class="tm-icon zmdi zmdi-view-list-alt"></i>
                        <i class="tmn-counts">2</i>
                    </a>
                    <div class="dropdown-menu pull-right dropdown-menu-lg">
                        <div class="listview">
                            <div class="lv-header">
                                Tasks
                            </div>
                            <div class="lv-body">
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">HTML5 Validation Report</div>

                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                                            <span class="sr-only">95% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Google Chrome Extension</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Social Intranet Projects</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Bootstrap Admin Template</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="lv-item">
                                    <div class="lv-title m-b-5">Youtube Client App</div>

                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <a class="lv-footer" href="">View All</a>
                        </div>
                    </div>
                </li>
                <li class="dropdown">
                    <a data-toggle="dropdown" href=""><i class="tm-icon zmdi zmdi-more-vert"></i></a>
                    <ul class="dropdown-menu dm-icon pull-right">
                        <li class="skin-switch hidden-xs">
                            <span class="ss-skin bgm-lightblue" data-skin="lightblue"></span>
                            <span class="ss-skin bgm-bluegray" data-skin="bluegray"></span>
                            <span class="ss-skin bgm-cyan" data-skin="cyan"></span>
                            <span class="ss-skin bgm-teal" data-skin="teal"></span>
                            <span class="ss-skin bgm-orange" data-skin="orange"></span>
                            <span class="ss-skin bgm-blue" data-skin="blue"></span>
                        </li>
                        <li class="divider hidden-xs"></li>
                        <li class="hidden-xs">
                            <a data-action="fullscreen" href=""><i class="zmdi zmdi-fullscreen"></i> Toggle Fullscreen</a>
                        </li>
                        <li>
                            <a data-action="clear-localstorage" href=""><i class="zmdi zmdi-delete"></i> Clear Local Storage</a>
                        </li>
                        <li>
                            <a href=""><i class="zmdi zmdi-face"></i> Privacy Settings</a>
                        </li>
                        <li>
                            <a href=""><i class="zmdi zmdi-settings"></i> Other Settings</a>
                        </li>
                    </ul>
                </li>
                <li class="hidden-xs" id="chat-trigger" data-trigger="#chat">
                    <a href=""><i class="tm-icon zmdi zmdi-comment-alt-text"></i></a>
                </li>
            </ul>
        </li>
    </ul>


    <!-- Top Search Content -->
    <div id="top-search-wrap">
        <div class="tsw-inner">
            <i id="top-search-close" class="zmdi zmdi-arrow-left"></i>
            <input type="text">
        </div>
    </div>
</header>

<section id="main">
    <aside id="sidebar" class="sidebar c-overflow">
        <div class="profile-menu">
            <a href="">
                <div class="profile-pic">
                    <img src="<%=basePath%>view/img/profile-pics/1.jpg" alt="">
                </div>

                <div class="profile-info">
                    Malinda Hollaway

                    <i class="zmdi zmdi-caret-down"></i>
                </div>
            </a>

            <ul class="main-menu">
                <li>
                    <a href="profile-about.html"><i class="zmdi zmdi-account"></i> View Profile</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-input-antenna"></i> Privacy Settings</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-settings"></i> Settings</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-time-restore"></i> Logout</a>
                </li>
            </ul>
        </div>

        <ul class="main-menu">
            <li><a href="index.html"><i class="zmdi zmdi-home"></i> Home</a></li>

        </ul>
        </li>
        </ul>
    </aside>

    <aside id="chat" class="sidebar c-overflow">

        <div class="chat-search">
            <div class="fg-line">
                <input type="text" class="form-control" placeholder="Search People">
            </div>
        </div>

        <div class="listview">
            <a class="lv-item" href="">
                <div class="media">
                    <div class="pull-left p-relative">
                        <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/2.jpg" alt="">
                        <i class="chat-status-busy"></i>
                    </div>
                    <div class="media-body">
                        <div class="lv-title">Jonathan Morris</div>
                        <small class="lv-small">Available</small>
                    </div>
                </div>
            </a>

            <a class="lv-item" href="">
                <div class="media">
                    <div class="pull-left">
                        <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/1.jpg" alt="">
                    </div>
                    <div class="media-body">
                        <div class="lv-title">David Belle</div>
                        <small class="lv-small">Last seen 3 hours ago</small>
                    </div>
                </div>
            </a>

            <a class="lv-item" href="">
                <div class="media">
                    <div class="pull-left p-relative">
                        <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/3.jpg" alt="">
                        <i class="chat-status-online"></i>
                    </div>
                    <div class="media-body">
                        <div class="lv-title">Fredric Mitchell Jr.</div>
                        <small class="lv-small">Availble</small>
                    </div>
                </div>
            </a>

            <a class="lv-item" href="">
                <div class="media">
                    <div class="pull-left p-relative">
                        <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/4.jpg" alt="">
                        <i class="chat-status-online"></i>
                    </div>
                    <div class="media-body">
                        <div class="lv-title">Glenn Jecobs</div>
                        <small class="lv-small">Availble</small>
                    </div>
                </div>
            </a>

            <a class="lv-item" href="">
                <div class="media">
                    <div class="pull-left">
                        <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/5.jpg" alt="">
                    </div>
                    <div class="media-body">
                        <div class="lv-title">Bill Phillips</div>
                        <small class="lv-small">Last seen 3 days ago</small>
                    </div>
                </div>
            </a>

            <a class="lv-item" href="">
                <div class="media">
                    <div class="pull-left">
                        <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/6.jpg" alt="">
                    </div>
                    <div class="media-body">
                        <div class="lv-title">Wendy Mitchell</div>
                        <small class="lv-small">Last seen 2 minutes ago</small>
                    </div>
                </div>
            </a>
            <a class="lv-item" href="">
                <div class="media">
                    <div class="pull-left p-relative">
                        <img class="lv-img-sm" src="<%=basePath%>view/img/profile-pics/7.jpg" alt="">
                        <i class="chat-status-busy"></i>
                    </div>
                    <div class="media-body">
                        <div class="lv-title">Teena Bell Ann</div>
                        <small class="lv-small">Busy</small>
                    </div>
                </div>
            </a>
        </div>
    </aside>


    <section id="content">
        <div class="container">
            <div class="block-header">
                <h2>Data Table</h2>

                <ul class="actions">
                    <li>
                        <a href="">
                            <i class="zmdi zmdi-trending-up"></i>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="zmdi zmdi-check-all"></i>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="" data-toggle="dropdown">
                            <i class="zmdi zmdi-more-vert"></i>
                        </a>

                        <ul class="dropdown-menu dm-icon pull-right">
                            <li>
                                <a onClick="add_button()"><i style="font-size: large"class="zmdi zmdi-format-playlist-add"></i>增加</a>
                            </li>
                            <li>
                                <nobr>&nbsp;&nbsp;<input type="text" name=""  id="masthead-label-1"class="abc input-default" placeholder="请输入领料出库单编号" value="">&nbsp;<button style="height:26px; width:26px" onClick="useAjaxUpdate()" class="btn btn-default btn-icon"><i style="font-size:x-large" class="zmdi zmdi-edit"></i></button></nobr>

                            </li>
                            <br/>
                            <li>
                                <nobr>&nbsp;&nbsp;<input type="text" name="customerManagementNo" id="masthead-label-2"class="abc input-default" placeholder="请输入领料出库单编号" value="">&nbsp;<shiro:hasPermission name="sys:user:delete"><button style="height:26px; width:26px" onClick="No_del()" class="btn btn-default btn-icon"><i style="font-size:x-large" class="zmdi zmdi-delete"></i></button></shiro:hasPermission></nobr>
                            </li>

                        </ul>
                    </li>
                </ul>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2>用户主表 <small>Ensure that the data attribute [data-identifier="true"] is set on one column header.</small></h2>
                </div>

                <table id="data-table-command" class="table table-striped table-vmiddle">
                    <thead>
                    <tr>
                        <th data-column-id="userExtendId" data-type=""data-identifier="true">用户扩展ID</th>
                        <th data-column-id="userId"data-identifier="true">用户ID</th>
                        <th data-column-id="delFlg" data-order=""data-identifier="true">删除标记</th>
                        <th data-column-id="userAuditStatus" data-order=""data-identifier="true">用户当前审核状态</th>
                        <th data-column-id="company" data-order=""data-identifier="true">归属公司</th>
                        <th data-column-id="officeName" data-order="desc"data-identifier="true">归属部门名称</th>
                        <th data-column-id="no" data-order="desc"data-identifier="true">工号</th>
                        <%--<th data-column-id="commands" data-formatter="commands" data-sortable="false"data-identifier="true"data-row-id="commands">操作权限</th>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="userList">
                        <tr>
                            <td><input  type="checkbox" name="id[]"
                                        value="${userList.userExtendId}" />${userList.userExtendId}</td>
                            <td>${userList.userId}</td>
                            <td>${userList.delFlg}</td>
                            <td>${userList.userAuditStatus}</td>
                            <td>${userList.company}</td>
                            <td>${userList.officeName}</td>
                            <td>${userList.no}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="card">
                <div class="card-header">
                    <h2>S用户附表1 <small>Ensure that the data attribute [data-identifier="true"] is set on one column header.</small></h2>
                </div>

                <table id="data-table-command2" class="table table-striped table-vmiddle">
                    <thead>
                    <tr>
                        <th data-column-id="userExtendId" data-type=""data-identifier="true">用户扩展ID</th>
                        <th data-column-id="name" data-order="desc"data-identifier="true">姓名</th>
                        <th data-column-id="email" data-order="desc"data-identifier="true">邮箱</th>
                        <th data-column-id="phone" data-order="desc"data-identifier="true">电话</th>
                        <th data-column-id="mobile" data-order="desc"data-identifier="true">手机</th>
                        <th data-column-id="userType" data-order="desc"data-identifier="true">用户类型</th>
                        <th data-column-id="loginIp" data-order="desc"data-identifier="true">最后登录ip</th>
                        <th data-column-id="loginDate" data-order="desc"data-identifier="true">最后登录日期</th>
                        <%--<th data-column-id="commands" data-formatter="commands" data-sortable="false"data-identifier="true"data-row-id="commands">操作权限</th>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="userList">
                        <tr>
                            <td><input  type="checkbox" name="id[]"
                                        value="${userList.userExtendId}" />${userList.userExtendId}</td>
                            <td>${userList.name}</td>
                            <td>${userList.email}</td>
                            <td>${userList.phone}</td>
                            <td>${userList.mobile}</td>
                            <td>${userList.userType}</td>
                            <td>${userList.loginIp}</td>
                            <td><fmt:formatDate value="${userList.loginDate}"
                                                pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="card">
                <div class="card-header">
                    <h2>用户附表2 <small>Ensure that the data attribute [data-identifier="true"] is set on one column header.</small></h2>
                </div>

                <table id="data-table-command3" class="table table-striped table-vmiddle">
                    <thead>
                    <tr>
                        <th data-column-id="userExtendId" data-type=""data-identifier="true">用户扩展ID</th>
                        <th data-column-id="loginFlg" data-order="desc"data-identifier="true">是否运行登录</th>
                        <th data-column-id="photo" data-order="desc"data-identifier="true">头像</th>
                        <th data-column-id="oldLoginName" data-order="desc"data-identifier="true">原登录名</th>
                        <th data-column-id="newPassword" data-order="desc"data-identifier="true">新密码</th>
                        <th data-column-id="oldLoginIp" data-order="desc"data-identifier="true">上次登录ip</th>
                        <th data-column-id="oldLoginDate" data-order="desc"data-identifier="true">上次登录日期</th>
                        <%--<th data-column-id="commands" data-formatter="commands" data-sortable="false"data-identifier="true"data-row-id="commands">操作权限</th>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="userList">
                        <tr>
                            <td><input  type="checkbox" name="id[]"
                                        value="${userList.userExtendId}" />${userList.userExtendId}</td>
                            <td>${userList.loginFlg}</td>
                            <td>${userList.photo}</td>
                            <td>${userList.oldLoginName}</td>
                            <td>${userList.newPassword}</td>
                            <td>${userList.oldLoginIp}</td>
                            <td><fmt:formatDate value="${userList.oldLoginDate}"
                                                pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</section>
<!-- update-->
<div class="modal fade" id="myUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="text-center">
                    <div class="card pt-inner">
                        <div class="pti-header bgm-bluegray">
                            <h2>领料出库信息修改</h2><small>| safe</small>
                            <div class="ptih-title">Banana Pack</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <form id="add" class="form-horizontal">
                    <div class="form-group">
                        <nobr><label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-assignment zmdi-hc-fw"></i></label>
                            <div class="col-sm-6">
                                <input type="hidden" id="picking_Outbound_Delivery_Order_No" name="pickingOutboundDeliveryOrderNo" class="form-control">
                                <span class="help-block"></span>
                            </div>
                        </nobr>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-desktop-windows zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="commodityName" class="form-control" id="commodity_Name" placeholder="请输入商品名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="supplier" class="form-control" id="supplier_" placeholder="请输入供应商">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account-circle zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="procurementStaff" class="form-control" id="procurement_Staff" placeholder="请输入采购员工">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-time zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="commodityOutboundDeliveryDate" class="form-control" id="commodityOutboundDelivery_Date" placeholder="请输入商品出库日期">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-collection-item-1 zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="commodityOutboundDeliveryQuantity" class="form-control" id="commodityOutboundDelivery_Quantity" placeholder="请输入商品出库数量">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-refresh"></i></label>
                        <div class="col-sm-8">
                            <button style="font-size:x-large" type="reset" class="btn btn-primary" ><i class="zmdi zmdi-refresh"></i>重置</button>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="zmdi zmdi-close"></i>关闭</button>
                <shiro:hasPermission name="sys:user:update">
                <button type="button" class="btn btn-primary" id="update_button"><i class="zmdi zmdi-check"></i>保存</button>
                </shiro:hasPermission>
            </div>
        </div>
    </div>
</div>
<!-- add -->
<div class="modal fade" id="myUpdateModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="text-center">
                    <div class="card pt-inner">
                        <div class="pti-header bgm-bluegray">
                            <h2>领料出库信息增加</h2><small>| safe</small>
                            <div class="ptih-title">Banana Pack</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <form id="" class="form-horizontal">
                    <div class="form-group">
                        <nobr><label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-assignment zmdi-hc-fw"></i></label>
                            <div class="col-sm-6">
                                <input style="font-size:x-large" type="name"  name="pickingOutboundDeliveryOrderNo" class="form-control" placeholder="请输入领料出库单编号">
                                <span class="help-block"></span>
                            </div>
                        </nobr>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-desktop-windows zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="commodityName" class="form-control" placeholder="请输入商品名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="supplier" class="form-control"  placeholder="请输入供应商">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account-circle zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="procurementStaff" class="form-control"  placeholder="请输入采购员工">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-time zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="date" name="commodityOutboundDeliveryDate" class="form-control"  placeholder="请输入商品出库日期">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-collection-item-1 zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="commodityOutboundDeliveryQuantity" class="form-control"  placeholder="请输入商品出库数量">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-refresh"></i></label>
                        <div class="col-sm-8">
                            <button style="font-size:x-large" type="reset" class="btn btn-primary" ><i class="zmdi zmdi-refresh"></i>重置</button>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="zmdi zmdi-close"></i>关闭</button>
              <shiro:hasPermission name="sys:user:add">
                <button type="button" class="btn btn-primary" id="update_button2"><i class="zmdi zmdi-check"></i>保存</button>
              </shiro:hasPermission>
            </div>
        </div>
    </div>
</div>
<footer id="footer">
    Copyright &copy; 2015 Material Admin

    <ul class="f-menu">
        <li><a href="">Home</a></li>
        <li><a href="">Dashboard</a></li>
        <li><a href="">Reports</a></li>
        <li><a href="">Support</a></li>
        <li><a href="">Contact</a></li>
    </ul>
</footer>

<!-- Page Loader -->
<div class="page-loader">
    <div class="preloader pls-blue">
        <svg class="pl-circular" viewBox="25 25 50 50">
            <circle class="plc-path" cx="50" cy="50" r="20" />
        </svg>

        <p>Please wait...</p>
    </div>
</div>

<!-- Older IE warning message -->
<!--[if lt IE 9]>
<div class="ie-warning">
    <h1 class="c-white">Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="<%=basePath%>view/img/browsers/chrome.png" alt="">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="<%=basePath%>view/img/browsers/firefox.png" alt="">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="<%=basePath%>view/img/browsers/opera.png" alt="">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="<%=basePath%>view/img/browsers/safari.png" alt="">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="<%=basePath%>view/img/browsers/ie.png" alt="">
                    <div>IE (New)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->

<!-- Javascript Libraries -->
<script src="<%=basePath%>view/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="<%=basePath%>view/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/Waves/dist/waves.min.js"></script>
<script src="<%=basePath%>view/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
<script src="<%=basePath%>view/vendors/bootgrid/jquery.bootgrid.updated.min.js"></script>

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="<%=basePath%>view/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="<%=basePath%>view/js/functions.js"></script>
<script src="<%=basePath%>view/js/demo.js"></script>

<!-- Data Table -->
<script type="text/javascript">
    $(document).ready(function(){
//              //Basic Example
//              $("#data-table-basic").bootgrid({
//                  css: {
//                      icon: 'zmdi icon',
//                      iconColumns: 'zmdi-view-module',
//                      iconDown: 'zmdi-expand-more',
//                      iconRefresh: 'zmdi-refresh',
//                      iconUp: 'zmdi-expand-less'
//                  },
//              });
//
//              //Selection
//              $("#data-table-selection").bootgrid({
//                  css: {
//                      icon: 'zmdi icon',
//                      iconColumns: 'zmdi-view-module',
//                      iconDown: 'zmdi-expand-more',
//                      iconRefresh: 'zmdi-refresh',
//                      iconUp: 'zmdi-expand-less'
//                  },
//                  selection: true,
//                  multiSelect: true,
//                  rowSelect: true,
//                  keepSelection: true
//              });

        //Command Buttons
        $("#data-table-command").bootgrid({
            css: {
                icon: 'zmdi icon',
                iconColumns: 'zmdi-view-module',
                iconDown: 'zmdi-expand-more',
                iconRefresh: 'zmdi-refresh',
                iconUp: 'zmdi-expand-less'
            },
            formatters: {
                "commands": function(column, row) {
                    return "<a href=\"<%=basePath%>/customerController/customerToUpdatePage.do?customerManagementNo=2005\"><button type=\"button\" class=\"btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-edit\"></span></button></a>" +
                        "<a href=\"<%=basePath%>/commodityController/commodityToUpdatePage.do?commodityManagementNo=${customer.customerManagementNo}\"><button data-action=\"clear-localstorage\" type=\"button\" class=\"btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button></a>";
                }
            }
        });
        $("#data-table-command2").bootgrid({
            css: {
                icon: 'zmdi icon',
                iconColumns: 'zmdi-view-module',
                iconDown: 'zmdi-expand-more',
                iconRefresh: 'zmdi-refresh',
                iconUp: 'zmdi-expand-less'
            },
            formatters: {
                "commands": function(column, row) {
                    return "<a href=\"<%=basePath%>/customerController/customerToUpdatePage.do?customerManagementNo=2005\"><button type=\"button\" class=\"btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-edit\"></span></button></a>" +
                        "<a href=\"<%=basePath%>/commodityController/commodityToUpdatePage.do?commodityManagementNo=${customer.customerManagementNo}\"><button data-action=\"clear-localstorage\" type=\"button\" class=\"btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button></a>";
                }
            }
        });
        $("#data-table-command3").bootgrid({
            css: {
                icon: 'zmdi icon',
                iconColumns: 'zmdi-view-module',
                iconDown: 'zmdi-expand-more',
                iconRefresh: 'zmdi-refresh',
                iconUp: 'zmdi-expand-less'
            },
            formatters: {
                "commands": function(column, row) {
                    return "<a href=\"<%=basePath%>/customerController/customerToUpdatePage.do?customerManagementNo=2005\"><button type=\"button\" class=\"btn btn-icon command-edit waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-edit\"></span></button></a>" +
                        "<a href=\"<%=basePath%>/commodityController/commodityToUpdatePage.do?commodityManagementNo=${customer.customerManagementNo}\"><button data-action=\"clear-localstorage\" type=\"button\" class=\"btn btn-icon command-delete waves-effect waves-circle\" data-row-id=\"" + row.id + "\"><span class=\"zmdi zmdi-delete\"></span></button></a>";
                }
            }
        });
    });
    <!--删除单项-->
    function No_del(){
        var id=document.getElementById("masthead-label-2").value
        var r = confirm("是否确认删除？");
        if(r==true){
            $.get("/userController/userExtendDelete.do?No="+id,function(data){
                if(data=="ok"){
                    alert("删除失败！");
                }else{
                    alert("删除成功！");
                    location.reload();
                }
            });
            return true;
        }else{
            return false;
        }
    }
    <!--以下为Ajax请求异步提交-->
    <!--修改员工-->
    $('#update_button').click(function () {
        //1、判断员工的正则表示
        $.ajax({
            url:'<%=basePath%>/userController/saveUserExtend.do',
            type:"POST",
            data: $('#myUpdateModal form').serialize(),
            success:function (json) {
                alert(json.success);
                //1、关闭模态框
                $('#myUpdateModal').modal('hide');
                location.reload();
            }
        })
    })
    function useAjaxUpdate() {
        var id=document.getElementById("masthead-label-1").value
        $.ajax({
            url:'<%=basePath%>/pickingOutboundController/getPickingOutbound.do',
            type: 'POST',
            dataType: "JSON",
            // data: JSON.stringify({id:"1"}),
            data: {"id":id},
            success:function (json){
                //测试返回的数据
                //  console.log(data);
                //得到emp的值
                var pobData = json.pob;
                // var dateOfSob = new Date(sobData.salesDate);
                $('#picking_Outbound_Delivery_Order_No').val(pobData.pickingOutboundDeliveryOrderNo);
                $('#commodity_Name').val(pobData.commodityName);
                $('#supplier_').val(pobData.supplier);
                $('#procurement_Staff').val(pobData.procurementStaff);
                $('#commodityOutboundDelivery_Date').val(pobData.commodityOutboundDeliveryDate);
                $('#commodityOutboundDelivery_Quantity').val(pobData.commodityOutboundDeliveryQuantity);
            }
        });
        $('#myUpdateModal').modal({
            backdrop : 'static'
        })
    }
    <!--增加员工-->
    function add_button(){
        $('#myUpdateModal2').modal({
            backdrop : 'static'
        })
    }
    $('#update_button2').click(function () {
        $.ajax({
            url:'<%=basePath%>/userController/addUserExtend.do',
            type:"POST",
            data:$('#myUpdateModal2 form').serialize(),
            success:function (json) {
                alert(json.success);
                //1、关闭模态框
                $('#myUpdateModal2').modal('hide');
                location.reload();
            }
        })
    })


</script>
</body>
</html>

