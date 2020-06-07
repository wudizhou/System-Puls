<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/2/19
  Time: 10:41
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
                                <a onclick="InsertProduct()"><i style="font-size: large"class="zmdi zmdi-format-playlist-add"></i>增加</a>
                            </li>
                            <br/>
                            <li>
                                <form class="tsw-inner" action="<%=basePath%>/supplierController/supplierToUpdatePage.do" method="post">
                                    <nobr><i style="font-size: large" class="zmdi zmdi-edit"></i>&nbsp;<input onclick="" type="text" name="supplierManagementNo" id="masthead-label-1"class="abc input-default" placeholder="请输入客户管理单编号" value=""></nobr>
                                </form>
                            </li>
                            <br/>
                            <li>
                                <form class="tsw-inner" action="<%=basePath%>/supplierController/supplierDelete.do" method="post">
                                    <nobr><i style="font-size: large"class="zmdi zmdi-delete"></i>&nbsp;&nbsp;<input onChange="" type="text" name="supplierManagementNo" id="masthead-label-2"class="abc input-default" placeholder="请输入客户管理单编号" value=""></nobr>
                                </form>
                            </li>

                        </ul>
                    </li>
                </ul>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2>Selection Example <small>Ensure that the data attribute [data-identifier="true"] is set on one column header.</small></h2>
                </div>

                <table id="data-table-command" class="table table-striped table-vmiddle">
                    <thead>
                    <tr>
                        <th data-column-id="supplierManagementNo" data-type=""data-identifier="true">供应商管理单编号</th>
                        <th data-column-id="supplierAbbreviation"data-identifier="true">供应商简称</th>
                        <th data-column-id="supplierTel" data-order=""data-identifier="true">电话</th>
                        <th data-column-id="supplierLinkman" data-order=""data-identifier="true">联系人</th>
                        <th data-column-id="supplierEmail" data-order=""data-identifier="true">邮箱</th>
                        <th data-column-id="supplierDepositBank" data-order="desc"data-identifier="true">开户银行</th>
                        <%--<th data-column-id="commands" data-formatter="commands" data-sortable="false"data-identifier="true"data-row-id="commands">操作权限</th>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${supplierList}" var="supplier">
                        <tr>
                            <td><input  type="checkbox" name="id[]"
                                        value="${supplier.supplierManagementNo}" />${supplier.supplierManagementNo}</td>
                            <td>${supplier.supplierAbbreviation}</td>
                            <td>${supplier.supplierTel}</td>
                            <td>${supplier.supplierLinkman}</td>
                            <td>${supplier.supplierEmail}</td>
                            <td>${supplier.supplierDepositBank}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</section>
<%--增加修改以模态框--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                <div class="text-center">
                    <div class="card pt-inner">
                <div class="pti-header bgm-blue">
                    <h2 id="title"></h2><small>| safe</small>
                    <div class="ptih-title">Banana Pack</div>
                </div>
                    </div>
                </div>
                <%--<div id="title" style="font-size: x-large;" class="" data-name="" tooltip="">--%>
                    <%--<span> </span>--%>
                <%--</div>--%>
            </div>
            <div class="modal-body">
                <form id="form" action="" method="post" class="form-horizontal" role="form">
                    <table class="table table-bordered table-hover m10">
                        <tr>
                            <td width="20%" class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-book-image zmdi-hc-fw"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control" id="product" name="supplier" value="${supplier.supplierManagementNo}" placeholder="供应商管理单编号">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td width="20%" class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-pin-account zmdi-hc-fw"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control" id="productName" name="supplierAbbreviation" value="${supplier.supplierAbbreviation}" placeholder="供应商名称">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"> <span class="input-group-addon"><i class="zmdi zmdi-phone"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control"id="productOriginAddress" name="supplierTel" value="${supplier.supplierTel}" placeholder="电话">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-account zmdi-hc-fw"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control" id="productUnit" name="supplierLinkman" value="${supplier.supplierLinkman}" placeholder="联系人">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"> <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control" id="productSpecification" name="supplierEmail" value="${supplier.supplierEmail}" placeholder="邮箱">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-balance zmdi-hc-fw"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control" id="productBatchNumber" name="supplierDepositBank" value="${supplier.supplierDepositBank}" placeholder="开户银行">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="dropdown-menu dropdown-menu-right"></i></span></td>
                            <td>
                                <div class="input-group">
                                    <div class="fg-line">
                                        <button id="but" type="button" onclick="save()" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-check-all"></i>保存</button>
                                        <button type="reset" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-trending-up"></i>撤销</button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </form>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="zmdi zmdi-close-circle"></i>关闭</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal -->
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
    function InsertProduct() {
        //重置表单
        $("#form")[0].reset();
        //设置模态框标题（重点）
        $("#title").text("供应商信息增加");
        //设置表单的action（重点）
        $("#form").prop("action", "/supplierController/addSupplier.do");
        //弹出模态框
        $("#myModal").modal("show");
    }
    //修改
    function openUpdate(obj,s_id) {
        var product = s_id;
        //重置表单
        $("#form")[0].reset();
        //设置模态框标题（重点）
        $("#title").text("商品信息修改");
        //设置表单的action（重点）
        $("#form").prop("action", "/productController/productUpdate.do?productManagementNo="+product);
        //回填数据
          $.post("/Main/SelectUpdateId",{product:product},function (returnData){
              loadDatatoForm("form", returnData)
          });
        //弹出模态框
        $("#myModal").modal("show");
    }
    //保存新增/修改
    function save() {
        //获取页面信息
        var supplierManagementNo = $("#form [name='supplier']").val();
        var supplierAbbreviation = $("#form [name='supplierAbbreviation']").val();
        var supplierTel= $("#form [name='supplierTel']").val();
        var supplierLinkman = $("#form [name='supplierLinkman']").val();
        var supplierEmail = $("#form [name='supplierEmail']").val();
        var supplierDepositBank = $("#form [name='supplierDepositBank']").val();
        //判断内容不等于空
        if(supplierManagementNo != "" && supplierAbbreviation != ""&& supplierTel != ""&& supplierLinkman != ""&& supplierEmail != ""&& supplierDepositBank != "") {
            <%--//提交表单--%>
            <%--$("#form").ajax({--%>
                <%--type:"POST",--%>
                <%--url:"<%=basePath%>/supplierController/addSupplier.do",--%>
                <%--async:false,--%>
                <%--data :JSON.stringify({--%>
                    <%--supplierManagementNo : supplierManagementNo,--%>
                    <%--supplierAbbreviation: supplierAbbreviation,--%>
                    <%--supplierTel:supplierTel,--%>
                    <%--supplierLinkman:supplierLinkman,--%>
                    <%--supplierEmail:supplierEmail,--%>
                    <%--supplierDepositBank:supplierDepositBank--%>
                <%--}),--%>
                <%--contentType: "application/json;charset=UTF-8",--%>
                <%--/*如果不写这个,仔细看后台会出现Content type 'application/x-www-form-urlencoded;charset=UTF-8' not supported*/--%>
                <%--dataType:"json",--%>
                <%--success  :function (res) {--%>
                    <%--console.log(res);--%>
                    <%--if(res==100){--%>
                        <%--$("#msg").html("<font size='60px'> success </font>").show(700).delay(3000).hide(500);--%>
                    <%--}else {--%>
                        <%--$("#msg").html("<font size='60px'>  fail </font>").show(700).delay(3000).hide(500);--%>
                    <%--}--%>
                    <%--window.location.href="http://localhost:8080//supplierController/supplierList.do"--%>
                <%--},--%>
                <%--error:function () {--%>
                    <%--$("#msg").html("<font size='60px'>  fail </font>").show(700).delay(3000).hide(500);--%>
                    <%--window.location.href="http://localhost:8080//supplierController/supplierList.do"--%>
                <%--}--%>
            <%--});--%>
            $("#but").ajaxSubmit(function(returnJson) {
                // returnJson 用来接收返回的数据
                //录入成功
                if(returnJson=="处理成功") {
                    //关闭模态框
                    $("#myModal").modal("hide");
                    //提示信息
                    alert("录入成功！")
                    layer.msg(returnJson.Text, {
                        icon: 1,
                        title: "提示"
                    });
                    //刷新表格
                    location.reload();
                } else {
                    layer.alert(returnJson.Text, {
                        icon: 0,
                        title: "提示"
                    });
                }
            });
            <%--$("#form").click(function () {--%>
                <%--$.ajax({--%>
                    <%--url:"<%=basePath%>/supplierController/addSupplier.do",--%>
                    <%--type:"post",--%>
                    <%--data:$("#form").serialize(),  //序列化表单--%>
                    <%--dataType:"json",--%>
                    <%--success:function (data) {     //返回值data为{"result":"提交成功"}--%>
                        <%--alert(data.result);--%>
                    <%--}--%>
                <%--})--%>
            <%--})--%>
        }else {
            alert("请填写完整数据信息！", {
                icon: 0,
                title: "提示"
            });
        }
    }
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
    });
    <!--删除单项-->
    // function commodityManagementNo_del(customerManagementNo){
    //     var r = confirm("是否确认删除？");
    //     if(r==true){
    //         var id = customerManagementNo;
    //         $.get("/customerController/customerDelete.do?commodityManagementNo="+id,function(data){
    //             if(data=="ok"){
    //                 alert("删除失败！");
    //             }else{
    //                 alert("删除成功！");
    //                 location.reload();
    //             }
    //         });
    //         return true;
    //     }else{
    //         return false;
    //     }
    // }



</script>
</body>
</html>
