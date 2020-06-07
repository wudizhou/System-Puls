<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/1/24
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Material Admin</title>
    <link rel="shortcut icon" href="#" />
    <!-- Vendor CSS -->
    <link href="<%=basePath%>view/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <!-- CSS -->
    <link href="<%=basePath%>view/css/app.min.1.css" rel="stylesheet">
    <link href="<%=basePath%>view/css/app.min.2.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/jqueryChat/font_Icon/iconfont.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>view/jqueryChat/css/chat.css">


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
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
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
                <li >
                    <a href="<%=basePath%>/chat.jsp"><i class="tm-icon zmdi zmdi-comment-alt-text"></i></a>
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

<section id="main" data-layout="layout-1">
    <aside id="sidebar" class="sidebar c-overflow">
        <div class="profile-menu">
            <a href="">
                <div class="profile-pic">
                    <img onClick="userImg()" src="<%=basePath%>view/img/profile-pics/1.jpg" alt="">
                </div>

                <div class="profile-info">
                    ${message}
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
            </a>

            <ul class="main-menu">
                <li>
                    <a href="<%=basePath%>view/profile-about.html"><i class="zmdi zmdi-account"></i>${roleName}</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-input-antenna"></i> Privacy Settings</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-settings"></i>用户设置</a>
                </li>
                <li>
                    <a href="<%=basePath%>/logout.do"><i class="zmdi zmdi-time-restore"></i>退出</a>
                </li>
            </ul>
        </div>
        <ul class="main-menu">
            <li class="active">
                <a href="index.html"><i class="zmdi zmdi-home"></i>主页</a>
            </li>
            <!-- ##########################权限-菜单##################################### -->
            <c:forEach items="${menuList }" var="menu">
                <c:if test="${menu.pId==1}">
                    <li class="sub-menu">
                        <a href=""><i class="zmdi zmdi-view-compact"></i>${menu.perName}</a>
                        <ul>
                            <c:forEach items="${permissionList }" var="permission">
                                <c:if test="${menu.perId == permission.key}">
                                    <c:forEach items="${permission.value }" var="permission">
                                        <li><a href="<%=basePath%>${permission.perUrl}">${permission.perName}</a></li>
                                    </c:forEach>
                                </c:if>
                            </c:forEach>
                        </ul>
                    </li>
                </c:if>
            </c:forEach>
            <!-- ##########################权限-菜单##################################### -->
        </ul>
        <%--<ul class="main-menu">--%>
        <%----%>
        <%--<li class="active">--%>
        <%--<a href="index.html"><i class="zmdi zmdi-home"></i>主页</a>--%>
        <%--</li>--%>
        <%----%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-view-compact"></i>${menu.perName}</a>--%>
        <%--<ul>--%>
        <%--<li><a href="widget-templates.html">产品登记</a></li>--%>
        <%--<li><a href="widgets.html">购料计划管理</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%----%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-widgets"></i> 订单管理</a>--%>

        <%--<ul>--%>
        <%--<li><a href="widget-templates.html">订单浏览</a></li>--%>
        <%--<li><a href="widgets.html">订单跟踪</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-view-list"></i> 采购管理</a>--%>

        <%--<ul>--%>
        <%--<li><a href="tables.html">采购单管理</a></li>--%>
        <%--<li><a href="data-tables.html">新增采购单</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-collection-text"></i>库存管理</a>--%>

        <%--<ul>--%>
        <%--<li><a href="form-elements.html">商品库存管理</a></li>--%>
        <%--<li><a href="form-components.html">产品库存管理</a></li>--%>
        <%--<li><a href="form-examples.html">销售出库管理</a></li>--%>
        <%--<li><a href="form-validations.html">领料出库管理</a></li>--%>
        <%--<li><a href="form-validations.html">采购入库管理</a></li>--%>
        <%--<li><a href="form-validations.html">产品入库管理</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-swap-alt"></i>销售管理</a>--%>
        <%--<ul>--%>
        <%--<li><a href="colors.html">销售单浏览</a></li>--%>
        <%--<li><a href="animations.html">待销售订单</a></li>--%>
        <%--<li><a href="box-shadow.html">销售统计</a></li>--%>

        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-trending-up"></i>基础信息管理</a>--%>
        <%--<ul>--%>
        <%--<li><a href="flot-charts.html">商品管理</a></li>--%>
        <%--<li><a href="other-charts.html">产品管理</a></li>--%>
        <%--<li><a href="other-charts.html">客户管理</a></li>--%>
        <%--<li><a href="other-charts.html">供应商管理</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-trending-up"></i>往来管理</a>--%>
        <%--<ul>--%>
        <%--<li><a href="flot-charts.html">销售结款单</a></li>--%>
        <%--<li><a href="other-charts.html">结款统计</a></li>--%>
        <%--<li><a href="other-charts.html">采购结款单</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href=""><i class="zmdi zmdi-image"></i>系统管理</a>--%>
        <%--<ul>--%>
        <%--<li><a href="photos.html">用户权限管理</a></li>--%>
        <%--<li><a href="photo-timeline.html">其它</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href="form-examples.html"><i class="zmdi zmdi-menu"></i> 3 Level Menu</a>--%>

        <%--<ul>--%>
        <%--<li><a href="form-elements.html">Level 2 link</a></li>--%>
        <%--<li><a href="form-components.html">Another level 2 Link</a></li>--%>
        <%--<li class="sub-menu">--%>
        <%--<a href="form-examples.html">I have children too</a>--%>

        <%--<ul>--%>
        <%--<li><a href="">Level 3 link</a></li>--%>
        <%--<li><a href="">Another Level 3 link</a></li>--%>
        <%--<li><a href="">Third one</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li><a href="form-validations.html">One more 2</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="https://wrapbootstrap.com/theme/material-admin-responsive-angularjs-WB011H985"><i class="zmdi zmdi-money"></i> Buy this template</a>--%>
        <%--</li>--%>
        <%--</ul>--%>
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
                <h2>Messages</h2>
            </div>

            <div class="card m-b-0" id="messages-main">

                <div class="ms-menu">
                    <div class="ms-block">
                        <div class="ms-user">
                            <img src="<%=basePath%>/view/img/profile-pics/1.jpg" alt="">
                            <div>当前在线人数<br/> <p id="onlineNum">0</p></div>
                        </div>
                    </div>

                    <div class="ms-block">
                        <div class="dropdown">
                            <a class="btn btn-primary btn-block" href="" data-toggle="dropdown">Messages <i class="caret m-l-5"></i></a>

                            <ul class="dropdown-menu dm-icon w-100">
                                <li><a href=""><i class="zmdi zmdi-email"></i> Messages</a></li>
                                <li><a href=""><i class="zmdi zmdi-account"></i> Contacts</a></li>
                                <li><a href=""><i class="zmdi zmdi-format-list-bulleted"> </i>Todo Lists</a></li>
                            </ul>
                        </div>
                    </div>

                    <div id="onlineUser"class="listview lv-user m-t-20">

                    </div>


                </div>

                <div class="ms-body">
                    <div class="listview lv-message">
                        <div class="lv-header-alt clearfix">
                            <div id="ms-menu-trigger">
                                <div class="line-wrap">
                                    <div class="line top"></div>
                                    <div class="line center"></div>
                                    <div class="line bottom"></div>
                                </div>
                            </div>

                            <div class="lvh-label hidden-xs">
                                <div class="lv-avatar pull-left">
                                    <img src="<%=basePath%>/view/img/profile-pics/1.jpg" alt="">
                                </div>
                                <span class="c-black">ERP内嵌聊天功能群</span>
                            </div>

                            <ul class="lv-actions actions">
                                <li class="dropdown">
                                    <a href="" data-toggle="dropdown" aria-expanded="true">
                                        <i class="zmdi zmdi-upload"></i>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <input type="file" name="userImage" id="userImage1"
                                                   onchange="check()" placeholder="请选择要上传的图片">
                                        </li>
                                        <li>
                                            <button onclick="sendImg()" class="btn btn-default btn-icon-text"><i style="font-size:x-large" class="zmdi zmdi-file zmdi-hc-fw"></i>发送图片</button>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="">
                                        <i class="zmdi zmdi-check"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="<%=basePath%>/ChatController/chatHistorySkip.do">
                                        <i class="zmdi zmdi-time"></i>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="" data-toggle="dropdown" aria-expanded="true">
                                        <i class="zmdi zmdi-sort"></i>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <a href="">Latest</a>
                                        </li>
                                        <li>
                                            <a href="">Oldest</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="" data-toggle="dropdown" aria-expanded="true">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <button onclick="getConnection()" class="btn btn-default btn-icon-text"><i style="font-size:x-large" class="zmdi zmdi-link zmdi-hc-fw"></i>连接</button>
                                        </li>
                                        <li>
                                            <button onclick="sendMsgClose()" class="btn btn-default btn-icon-text"><i style="font-size:x-large" class="zmdi zmdi-close zmdi-hc-fw"></i> 断开</button>
                                        </li>
                                        <li>
                                            <button onclick="clearMsg()" class="btn btn-default btn-icon-text"><i style="font-size:x-large" class="zmdi zmdi-tag-close zmdi-hc-fw"></i> 清屏</button>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                        <div id="lv-body"class="lv-body">
                            <div id="msg" class="lv-item media">
                            </div>
                        <div class="lv-footer ms-reply">
                            <textarea id="msgContent"placeholder="What's on your mind..."></textarea>

                            <button onclick="sendMsg()"><i class="zmdi zmdi-mail-send"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</section>


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
<!-- Javascript Libraries -->
<script src="<%=basePath%>view/vendors/bower_components/jquery/dist/jquery.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<script src="<%=basePath%>view/vendors/bower_components/flot/jquery.flot.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/flot/jquery.flot.resize.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/flot.curvedlines/curvedLines.js"></script>
<script src="<%=basePath%>view/vendors/sparklines/jquery.sparkline.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

<script src="<%=basePath%>view/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js "></script>
<script src="<%=basePath%>view/vendors/bower_components/simpleWeather/jquery.simpleWeather.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/Waves/dist/waves.min.js"></script>
<script src="<%=basePath%>view/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>
<script src="<%=basePath%>view/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="<%=basePath%>view/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="<%=basePath%>view/js/flot-charts/curved-line-chart.js"></script>
<script src="<%=basePath%>view/js/flot-charts/line-chart.js"></script>
<script src="<%=basePath%>view/js/charts.js"></script>

<script src="<%=basePath%>view/js/charts.js"></script>
<script src="<%=basePath%>view/js/functions.js"></script>
<script src="<%=basePath%>view/js/demo.js"></script>
</body>
<script>
    //建立wsServer/websocket对象
    var wsServer = null;
    wsServer = "ws://" + location.host + "${pageContext.request.contextPath}"+ "/websocket.do";
    var websocket = null;
    //打开链接
    function getConnection() {
        if (websocket == null) {
            websocket = new WebSocket(wsServer);
            websocket.onopen = function (evnt) {
                //心跳检测机制
                // heartCheck.reset().start();
                alert("链接服务器成功!");
            };
            websocket.onmessage = function (evnt) {
                var onlineUser = $("#onlineUser");
                var message = eval("(" + evnt.data + ")");
                //显示在线人数及在线用户
                if (message.msgTyp == "notice") {
                    $("#onlineNum").text(message.onlineNum);
                    var htmlOnline;
                    htmlOnline = "<div class=\"lv-item media active\">"+
                        "<div class=\"lv-avatar pull-left\">"+
                        "<img src=\"<%=basePath%>/view/img/profile-pics/1.jpg\">"+
                        "</div>"+
                        "<div class=\"media-body\">"+
                        "<div class=\"lv-title\">"+ message.userName+"</div>"+
                        "</div>";
                         onlineUser.html("");
                        $(onlineUser).append(htmlOnline);
                } else if (message.msgTyp === "msg") {
                    showChat(evnt);
                } else if (message.msgTyp === "exit") {
                    $("#onlineNum").text(message.onlineNum);
                    var msg = $("#msg");
                    //msg.html是之前的聊天内容，空一行
                    msg.html(msg.html() +"<br/>"+ "<div class=\"lv-avatar pull-left\">"+"<img src=\"<%=basePath%>/view/img/profile-pics/1.jpg\">"+
                        "</div>"+
                        "<div class=\"media-body\">"+
                        "<div class=\"ms-item\">"+"用户"+message.userName+":"+"已退出聊天!"+
                        "</div>"+
                        "<small class=\"ms-date\"><i class=\"zmdi zmdi-time\"></i>"+message.sendDate+"</small>"+
                        "</div>");
                }
            };
            websocket.onerror = function (evnt) {
                alert("发生错误，与服务器断开了链接!")
            };
            websocket.onclose = function (evnt) {
                alert("与服务器断开了链接!")
            };
            $('#send').bind('click', function () {
                send();
            });
        } else {
            alert("连接已存在!")
        }
    }
    //从后台接受聊天消息，并展示到前端
    function showChat(evnt) {
        var message = eval("(" + evnt.data + ")");
        var msg = $("#msg");
        //msg.html是之前的聊天内容，空一行
        msg.html(msg.html() +"<br/>"+ "<div class=\"lv-avatar pull-left\">"+"<img src=\"<%=basePath%>/view/img/profile-pics/1.jpg\">"+
            "</div>"+
            "<div class=\"media-body\">"+"用户"+message.user+":"+
            "<div class=\"ms-item\">"+message.sendContent+
            "</div>"+
            "<small class=\"ms-date\"><i class=\"zmdi zmdi-time\"></i>"+message.sendDate+"</small>"+
            "</div>");
    }
    /**
     * 发送消息
     */
    function sendMsg() {
        var msg = $("#msgContent");
        if (websocket == null) {
            alert("连接未开启!");
            return;
        }
        var message = msg.val();
        //输入完成后，清空输入区
        msg.val("");
        if (message == null || message === "") {
            alert("输入不能为空的哦");
            return;
        }
        //向后台MyWebSocketHandler中的handlemessage发送信息
        websocket.send(JSON.stringify({
            message: message,
            type: "chatMsg"
        }));
    }
    /**
     * 关闭连接
     */
    function closeConnection() {
        if (websocket != null) {
            websocket.close();
            websocket = null;
            alert("已经关闭连接")
        } else {
            alert("未开启连接")
        }
    }
    function sendMsgClose() {
        var closeMsg = "${userName}";
        websocket.send(JSON.stringify({
            message: closeMsg,
            type: "exit"
        }));
        websocket.onmessage = function (evnt) {
            var onlineUser = $("#onlineUser");
            var message = eval("(" + evnt.data + ")");
            //显示在线人数及在线用户
            if (message.msgTyp == "exit") {
                $("#onlineNum").text(message.onlineNum);
                var msg = $("#msg");
                //msg.html是之前的聊天内容，空一行
                msg.html(msg.html() +"<br/>"+ "<div class=\"lv-avatar pull-left\">"+"<img src=\"<%=basePath%>/view/img/profile-pics/1.jpg\">"+
                    "</div>"+
                    "<div class=\"media-body\">"+
                    "<div class=\"ms-item\">"+"用户"+message.userName+":"+"已退出聊天!"+
                    "</div>"+
                    "<small class=\"ms-date\"><i class=\"zmdi zmdi-time\"></i>"+message.sendDate+"</small>"+
                    "</div>");
                    htmlOnline = "<div class=\"lv-item media active\">"+
                    "<div class=\"lv-avatar pull-left\">"+
                    "<img src=\"<%=basePath%>/view/img/profile-pics/1.jpg\">"+
                    "</div>"+
                    "<div class=\"media-body\">"+
                    "<div class=\"lv-title\">"+ message.userNamelist+"</div>"+
                    "</div>";
                onlineUser.html("");
                $(onlineUser).append(htmlOnline);
                //我之前是把这个函数放到下面的，但是js是异步操作，意味着它会先过一遍主函数再过枝干
                //而closeConnection()放到下面的话，就会先注册onmessage但是不调用，直接调到closeConnection然后
                //等电脑有空了再来调用里面的代码。
                closeConnection();
            }
        }
        //就是这里 closeConnection();
    }
    //清屏函数
    function clearMsg() {
        $("#msg").html("");
    }
    /*
      上传图片信息，传到后台+后台读取数据
         */
    function sendImg() {
        var inputElement = document.getElementById("userImage1");
        var fileList = inputElement.files;
        var file = fileList[0];
        if (!file) return;
        var reader = new FileReader();
        //以二进制形式读取文件
        reader.readAsArrayBuffer(file);
        //文件读取完毕后该函数响应
        reader.onload = function loaded() {
            var blob = document.getElementById("userImage1").files[0];
            //发送二进制表示的文件
            websocket.send(JSON.stringify({
                message: blob,
                filename: file.name,
                type: "img"
            }));
            //清空<input type="file">的值
            inputElement.outerHTML = inputElement.outerHTML;
        }
        alert("上传成功！")
    }

</script>
</html>