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
                    <a href="<%=basePath%>/ChatController/chatSkip.do"><i class="tm-icon zmdi zmdi-comment-alt-text"></i></a>
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
                    <img onClick="" src="${pageContext.request.contextPath}/images/${imageName}" alt="">
                        <%--<img onClick="userImg()" src="<%=basePath%>view/img/profile-pics/1.jpg" alt="">--%>
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
                    <a onClick="htm_button()" href="#"><i class="zmdi zmdi-input-antenna"></i>私人设置</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-settings"></i>安全设置</a>
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
                    <%--<li><a href="other-charts.html"></a></li>--%>
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
                <h2>Dashboard</h2>

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

                        <ul class="dropdown-menu dropdown-menu-right">
                            <li>
                                <a href="">Refresh</a>
                            </li>
                            <li>
                                <a href="">Manage Widgets</a>
                            </li>
                            <li>
                                <a href="">Widgets Settings</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>

            <div class="card">
                <div class="card-header">
                    <h2>Sales Statistics <small>Vestibulum purus quam scelerisque, mollis nonummy metus</small></h2>

                    <ul class="actions">
                        <li>
                            <a href="">
                                <i class="zmdi zmdi-refresh-alt"></i>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="zmdi zmdi-download"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="" data-toggle="dropdown">
                                <i class="zmdi zmdi-more-vert"></i>
                            </a>

                            <ul class="dropdown-menu dropdown-menu-right">
                                <li>
                                    <a href="">Change Date Range</a>
                                </li>
                                <li>
                                    <a href="">Change Graph Type</a>
                                </li>
                                <li>
                                    <a href="">Other Settings</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="card-body">
                    <div class="chart-edge">
                        <div id="curved-line-chart" class="flot-chart "></div>
                    </div>
                </div>
            </div>

            <div class="mini-charts">
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-cyan">
                            <div class="clearfix">
                                <div class="chart stats-bar"></div>
                                <div class="count">
                                    <small>Website Traffics</small>
                                    <h2>987,459</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-lightgreen">
                            <div class="clearfix">
                                <div class="chart stats-bar-2"></div>
                                <div class="count">
                                    <small>Website Impressions</small>
                                    <h2>356,785K</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-orange">
                            <div class="clearfix">
                                <div class="chart stats-line"></div>
                                <div class="count">
                                    <small>Total Sales</small>
                                    <h2>$ 458,778</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-bluegray">
                            <div class="clearfix">
                                <div class="chart stats-line-2"></div>
                                <div class="count">
                                    <small>Support Tickets</small>
                                    <h2>23,856</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="dash-widgets">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div id="site-visits" class="dash-widget-item bgm-teal">
                            <div class="dash-widget-header">
                                <div class="p-20">
                                    <div class="dash-widget-visits"></div>
                                </div>

                                <div class="dash-widget-title">For the past 30 days</div>

                                <ul class="actions actions-alt">
                                    <li class="dropdown">
                                        <a href="" data-toggle="dropdown">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>

                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li>
                                                <a href="">Refresh</a>
                                            </li>
                                            <li>
                                                <a href="">Manage Widgets</a>
                                            </li>
                                            <li>
                                                <a href="">Widgets Settings</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                            <div class="p-20">

                                <small>Page Views</small>
                                <h3 class="m-0 f-400">47,896,536</h3>

                                <br/>

                                <small>Site Visitors</small>
                                <h3 class="m-0 f-400">24,456,799</h3>

                                <br/>

                                <small>Total Clicks</small>
                                <h3 class="m-0 f-400">13,965</h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div id="pie-charts" class="dash-widget-item">
                            <div class="bgm-pink">
                                <div class="dash-widget-header">
                                    <div class="dash-widget-title">Email Statistics</div>
                                </div>

                                <div class="clearfix"></div>

                                <div class="text-center p-20 m-t-25">
                                    <div class="easy-pie main-pie" data-percent="75">
                                        <div class="percent">45</div>
                                        <div class="pie-title">Total Emails Sent</div>
                                    </div>
                                </div>
                            </div>

                            <div class="p-t-20 p-b-20 text-center">
                                <div class="easy-pie sub-pie-1" data-percent="56">
                                    <div class="percent">56</div>
                                    <div class="pie-title">Bounce Rate</div>
                                </div>
                                <div class="easy-pie sub-pie-2" data-percent="84">
                                    <div class="percent">84</div>
                                    <div class="pie-title">Total Opened</div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="dash-widget-item bgm-lime">
                            <div id="weather-widget"></div>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div id="best-selling" class="dash-widget-item">
                            <div class="dash-widget-header">
                                <div class="dash-widget-title">Best Sellings</div>
                                <img src="<%=basePath%>view/img/widgets/alpha.jpg" alt="">
                                <div class="main-item">
                                    <small>Samsung Galaxy Alpha</small>
                                    <h2>$799.99</h2>
                                </div>
                            </div>

                            <div class="listview p-t-5">
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/widgets/note4.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Samsung Galaxy Note 4</div>
                                            <small class="lv-small">$850.00 - $1199.99</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/widgets/mate7.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Huawei Ascend Mate</div>
                                            <small class="lv-small">$649.59 - $749.99</small>
                                        </div>
                                    </div>
                                </a>
                                <a class="lv-item" href="">
                                    <div class="media">
                                        <div class="pull-left">
                                            <img class="lv-img-sm" src="<%=basePath%>view/img/widgets/535.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <div class="lv-title">Nokia Lumia 535</div>
                                            <small class="lv-small">$189.99 - $250.00</small>
                                        </div>
                                    </div>
                                </a>

                                <a class="lv-footer" href="">
                                    View All
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <!-- Recent Items -->
                    <div class="card">
                        <div class="card-header">
                            <h2>Recent Items <small>Phasellus condimentum ipsum id auctor imperdie</small></h2>
                            <ul class="actions">
                                <li class="dropdown">
                                    <a href="" data-toggle="dropdown">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <a href="">Refresh</a>
                                        </li>
                                        <li>
                                            <a href="">Settings</a>
                                        </li>
                                        <li>
                                            <a href="">Other Settings</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                        <div class="card-body m-t-0">
                            <table class="table table-inner table-vmiddle">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th style="width: 60px">Price</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td class="f-500 c-cyan">2569</td>
                                    <td>Samsung Galaxy Mega</td>
                                    <td class="f-500 c-cyan">$521</td>
                                </tr>
                                <tr>
                                    <td class="f-500 c-cyan">9658</td>
                                    <td>Huawei Ascend P6</td>
                                    <td class="f-500 c-cyan">$440</td>
                                </tr>
                                <tr>
                                    <td class="f-500 c-cyan">1101</td>
                                    <td>HTC One M8</td>
                                    <td class="f-500 c-cyan">$680</td>
                                </tr>
                                <tr>
                                    <td class="f-500 c-cyan">6598</td>
                                    <td>Samsung Galaxy Alpha</td>
                                    <td class="f-500 c-cyan">$870</td>
                                </tr>
                                <tr>
                                    <td class="f-500 c-cyan">4562</td>
                                    <td>LG G3</td>
                                    <td class="f-500 c-cyan">$690</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div id="recent-items-chart" class="flot-chart"></div>
                    </div>

                    <!-- Todo Lists -->
                    <div id="todo-lists">
                        <div class="tl-header">
                            <h2>Todo Lists</h2>
                            <small>Add, edit and manage your Todo Lists</small>

                            <ul class="actions actions-alt">
                                <li class="dropdown">
                                    <a href="" data-toggle="dropdown">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <a href="">Refresh</a>
                                        </li>
                                        <li>
                                            <a href="">Manage Widgets</a>
                                        </li>
                                        <li>
                                            <a href="">Widgets Settings</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                        <div class="clearfix"></div>

                        <div class="tl-body">
                            <div id="add-tl-item">
                                <i class="add-new-item zmdi zmdi-plus"></i>

                                <div class="add-tl-body">
                                    <textarea placeholder="What you want to do..."></textarea>

                                    <div class="add-tl-actions">
                                        <a href="" data-tl-action="dismiss"><i class="zmdi zmdi-close"></i></a>
                                        <a href="" data-tl-action="save"><i class="zmdi zmdi-check"></i></a>
                                    </div>
                                </div>
                            </div>

                            <div class="checkbox media">
                                <div class="pull-right">
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="">Delete</a></li>
                                                <li><a href="">Archive</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="media-body">
                                    <label>
                                        <input type="checkbox">
                                        <i class="input-helper"></i>
                                        <span>Duis vitae nibh molestie pharetra augue vitae</span>
                                    </label>
                                </div>
                            </div>

                            <div class="checkbox media">
                                <div class="pull-right">
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="">Delete</a></li>
                                                <li><a href="">Archive</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="media-body">
                                    <label>
                                        <input type="checkbox">
                                        <i class="input-helper"></i>
                                        <span>In vel imperdiet leoorbi mollis leo sit amet quam fringilla varius mauris orci turpis</span>
                                    </label>
                                </div>
                            </div>

                            <div class="checkbox media">
                                <div class="pull-right">
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="">Delete</a></li>
                                                <li><a href="">Archive</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="media-body">
                                    <label>
                                        <input type="checkbox">
                                        <i class="input-helper"></i>
                                        <span>Suspendisse quis sollicitudin erosvel dictum nunc</span>
                                    </label>
                                </div>
                            </div>

                            <div class="checkbox media">
                                <div class="pull-right">
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="">Delete</a></li>
                                                <li><a href="">Archive</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="media-body">
                                    <label>
                                        <input type="checkbox">
                                        <i class="input-helper"></i>
                                        <span>Curabitur egestas finibus sapien quis faucibusras bibendum ut justo at sagittis. In hac habitasse platea dictumst</span>
                                    </label>
                                </div>
                            </div>

                            <div class="checkbox media">
                                <div class="pull-right">
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="">Delete</a></li>
                                                <li><a href="">Archive</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="media-body">
                                    <label>
                                        <input type="checkbox">
                                        <i class="input-helper"></i>
                                        <span>Suspendisse potenti. Cras dolor augue, tincidunt sit amet lorem id, blandit rutrum libero</span>
                                    </label>
                                </div>
                            </div>

                            <div class="checkbox media">
                                <div class="pull-right">
                                    <ul class="actions actions-alt">
                                        <li class="dropdown">
                                            <a href="" data-toggle="dropdown">
                                                <i class="zmdi zmdi-more-vert"></i>
                                            </a>

                                            <ul class="dropdown-menu dropdown-menu-right">
                                                <li><a href="">Delete</a></li>
                                                <li><a href="">Archive</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="media-body">
                                    <label>
                                        <input type="checkbox">
                                        <i class="input-helper"></i>
                                        <span>Proin luctus dictum nisl id auctor. Nullam lobortis condimentum arcu sit amet gravida</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <!-- Calendar -->
                    <div id="calendar-widget"></div>

                    <!-- Recent Posts -->
                    <div class="card">
                        <div class="card-header ch-alt m-b-20">
                            <h2>Recent Posts <small>Phasellus condimentum ipsum id auctor imperdie</small></h2>
                            <ul class="actions">
                                <li>
                                    <a href="">
                                        <i class="zmdi zmdi-refresh-alt"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <i class="zmdi zmdi-download"></i>
                                    </a>
                                </li>
                                <li class="dropdown">
                                    <a href="" data-toggle="dropdown">
                                        <i class="zmdi zmdi-more-vert"></i>
                                    </a>

                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li>
                                            <a href="">Change Date Range</a>
                                        </li>
                                        <li>
                                            <a href="">Change Graph Type</a>
                                        </li>
                                        <li>
                                            <a href="">Other Settings</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>

                            <button class="btn bgm-cyan btn-float"><i class="zmdi zmdi-plus"></i></button>
                        </div>

                        <div class="card-body">
                            <div class="listview">
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
                                <a class="lv-footer" href="">View All</a>
                            </div>
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
<!-- message-update-->
<div class="modal fade" id="myHtmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="text-center">
                    <div class="card pt-inner">
                        <div class="pti-header bgm-bluegray">
                            <h2>私人信息修改</h2><small>| Erp supply, marketing and storage system</small>
                            <div class="ptih-title">Private information modification</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-body" >
                <form id="add" class="form-horizontal" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-collection-item-1 zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="hidden" name="zuseerId" class="form-control" id="userId" placeholder="">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <nobr><label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-email zmdi-hc-fw"></i></label>
                            <div class="col-sm-6">
                                <input style="font-size:x-large" type="email" id="email" name="zemail" class="form-control"placeholder="编辑邮箱">
                                <span class="help-block"></span>
                            </div>
                        </nobr>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account-box-phone zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="tel" name="zphone" class="form-control" id="phone" placeholder="编辑座机电话">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-smartphone-android zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="tel" name="zmobile" class="form-control" id="mobile" placeholder="编辑手机号码">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-face zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="file" name="zphoto" class="form-control" id="photo" placeholder="编辑头像">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-refresh"></i></label>
                        <div class="col-sm-8">
                            <button style="font-size:x-large" type="reset" id="reset_button"class="btn btn-primary" ><i class="zmdi zmdi-refresh"></i>重置</button>
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="zmdi zmdi-close"></i>关闭</button>
                <button type="button" class="btn btn-primary" onClick="createPrivateMessage()" id="update_button"><i class="zmdi zmdi-check"></i>保存</button>
            </div>
        </div>
    </div>
</div>
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
</body>
<script>
    function htm_button(){
        // BootstrapDialog=window.parent.BootstrapDialog;
        $('#myHtmModal').modal({
            backdrop : 'static'
        })
    }
    function check(){
        var file=document.getElementById("photo").value;
        if(file==""||file.length==0){
            alert("请选择上传文件！");
            return false;
        }
        var img_id=document.getElementById("photo").value; //根据id得到值
        var index= img_id.indexOf("."); //得到"."在第几位
        img_id=img_id.substring(index); //截断"."之前的，得到后缀
        if(img_id!=".bmp"&&img_id!=".BMP"&&img_id!=".png"&&img_id!=".BMP"&&img_id!=".gif"&&img_id!=".GIF"&&img_id!=".jpg"&&img_id!=".JPG"&&img_id!=".jpeg"&&img_id!=".JPEG"){  //根据后缀，判断是否符合图片格式
            alert("不是指定图片格式,重新选择");
            document.getElementById('movie_img').value="";  // 不符合，就清除，重新选择
            return false;
        }
        alert("file"+file);
        return true;
    }
    //编辑私人信息
    function createPrivateMessage(){
        var result=check();
        if(result==true){
            var form = document.forms[0];
            form.action = "<%=basePath%>/personController/savePrivateMessage.do";
            form.method = "post";
            form.submit();
        }
        else{
            alert("上传图片失败！");
        }

    }
    $(window).load(function(){
        //Welcome Message (not for login page)
        function notify(message, type){
            $.growl({
                message: message
            },{
                type: type,
                allow_dismiss: false,
                label: 'Cancel',
                className: 'btn-xs btn-inverse',
                placement: {
                    from: 'top',
                    align: 'right'
                },
                delay: 2500,
                animate: {
                    enter: 'animated fadeIn',
                    exit: 'animated fadeOut'
                },
                offset: {
                    x: 20,
                    y: 85
                }
            });
        };

        if (!$('.login-content')[0]) {

            notify('欢迎您先生or女士:'+'${message}'+'使用本系统！', 'inverse');
        }
    });
</script>
</html>