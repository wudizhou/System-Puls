<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/3/2
  Time: 14:04
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
            <li>
                <a href="index.html"><i class="zmdi zmdi-home"></i> Home</a>
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
                <h2>Table</h2>

                <ul class="actions">
                    <%--<li>--%>
                    <%--<a href="">--%>
                    <%--<i class="zmdi zmdi-trending-up"> </i>--%>
                    <%--</a>--%>
                    <%--</li>--%>

                    <li class="dropdown">
                        <!--<a href="">
                            <i class="zmdi zmdi-more-vert"></i>
                        </a>-->
                        <a data-toggle="dropdown" href=""><i class="tm-icon zmdi zmdi-more-vert"></i></a>
                        <ul class="dropdown-menu dm-icon pull-right">
                            <%--<li class="skin-switch hidden-xs">--%>
                            <%--<span class="ss-skin bgm-lightblue" data-skin="lightblue"></span>--%>
                            <%--<span class="ss-skin bgm-bluegray" data-skin="bluegray"></span>--%>
                            <%--<span class="ss-skin bgm-cyan" data-skin="cyan"></span>--%>
                            <%--<span class="ss-skin bgm-teal" data-skin="teal"></span>--%>
                            <%--<span class="ss-skin bgm-orange" data-skin="orange"></span>--%>
                            <%--<span class="ss-skin bgm-blue" data-skin="blue"></span>--%>
                            <%--</li>--%>
                            <li class="divider hidden-xs"></li>
                            <%--<li class="hidden-xs">--%>
                            <%--<a data-action="fullscreen" href=""><i class="zmdi zmdi-fullscreen"></i> Toggle Fullscreen</a>--%>
                            <%--</li>--%>
                            <li>
                                <%--data-action="clear-localstorage"--%>
                                <a href="javascript: ;" onClick="useAjaxAdd()"><i class="zmdi zmdi-format-playlist-add"></i>增加</a>
                            </li>

                            <%--<li>--%>
                            <%--<a href=""><i class="zmdi zmdi-face"></i> Privacy Settings</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<a href=""><i class="zmdi zmdi-settings"></i> Other Settings</a>--%>
                            <%--</li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="" data-toggle="dropdown">
                            <i class="zmdi zmdi-search"></i>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-right">
                            <form class="tsw-inner" action="<%=basePath%>salesOrderBrowseController/selectSalesOrder.do" method="post">
                                <input type="text" name="keyWord" class="abc input-default" placeholder="请输入单号或产品关键字" value="">
                            </form>
                            <%--<li>--%>
                            <%--<a href="">删除</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<a href="">增加</a>--%>
                            <%--</li>--%>
                            <%--<li>--%>
                            <%--<a href="">修改</a>--%>
                            <%--</li>--%>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2>Basic Table <small>Basic example without any additional modification classes</small></h2>
                </div>

                <div class="card-body table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>销售单编号</th>
                            <th>产品名称</th>
                            <th>客户名称</th>
                            <th>销售数量</th>
                            <th>销售日期</th>
                            <th>销售状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${salesOrderList}" var="salesOrderBrowse">
                            <tr>
                                <td><input  type="checkbox" name="id[]"
                                            value="${salesOrderBrowse.salesOrderNo}" />${salesOrderBrowse.salesOrderNo}</td>
                                <td>${salesOrderBrowse.productName}</td>
                                <td>${salesOrderBrowse.customerName}</td>
                                <td>${salesOrderBrowse.salesQuantity}</td>
                                <td><fmt:formatDate value="${salesOrderBrowse.salesDate}"
                                                    pattern="yyyy-MM-dd dd:HH:ss" /></td>
                                <td>${salesOrderBrowse.salesStatus}</td>
                                <td>
                                    <a href="javascript: ;"onclick="useAjaxSobUpdate(this,'${salesOrderBrowse.salesOrderNo}')"><button class="btn btn-default btn-icon-text"><i class="zmdi zmdi-edit"></i>修改</button></a>
                                    <a href="javascript: ;" onclick="sobNo_del(this,'${salesOrderBrowse.salesOrderNo}')"><button class="btn btn-default btn-icon-text"><i class="zmdi zmdi-delete"></i> 删除 </button></a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            </tbody>
            </table>
        </div>
        </div>

        </div>
    </section>
</section>
// 修改
<div class="modal fade" id="myUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="text-center">
                    <div class="card pt-inner">
                        <div class="pti-header bgm-blue">
                            <h2 id="">销售单信息修改</h2><small>| safe</small>
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
                            <input type="hidden" id="update_no" name="salesOrderNo" class="form-control">
                            <span class="help-block"></span>
                        </div>
                        </nobr>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-desktop-windows zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="productName" class="form-control" id="update_name" placeholder="请输入产品名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account-circle zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="customerName" class="form-control" id="update_name2" placeholder="请输入客户名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-collection-item-1 zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="salesQuantity" class="form-control" id="update_quanity" placeholder="请输入销售数量">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-time zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="date" name="salesDate" class="form-control" id="update_date" placeholder="请输入销售日期">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-redo zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="salesStatus" class="form-control" id="update_statue" placeholder="请输入销售状态">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update_button">保存</button>
            </div>
        </div>
    </div>
</div>
//增加
<div class="modal fade" id="myUpdateModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="text-center">
                    <div class="card pt-inner">
                        <div class="pti-header bgm-blue">
                            <h2>销售单信息增加</h2><small>| safe</small>
                            <div class="ptih-title">Banana Pack</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <nobr><label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-assignment zmdi-hc-fw"></i></label>
                            <div class="col-sm-6">
                                <input style="font-size:x-large" type="text"  name="salesOrderNo" class="form-control">
                                <span class="help-block"></span>
                            </div>
                        </nobr>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-desktop-windows zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="productName" class="form-control"  placeholder="请输入产品名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account-circle zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="customerName" class="form-control" placeholder="请输入客户名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-collection-item-1 zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="salesQuantity" class="form-control"  placeholder="请输入销售数量">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-time zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="date" name="salesDate" class="form-control"  placeholder="请输入销售日期">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-redo zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="salesStatus" class="form-control" placeholder="请输入销售状态">
                            <span class="help-block"></span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="update_button2">保存</button>
            </div>
        </div>
    </div>
</div>
<%--增加修改以模态框--%>
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

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="<%=basePath%>view/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="<%=basePath%>view/js/functions.js"></script>
<script src="<%=basePath%>view/js/demo.js"></script>
<%--<script src="<%=basePath%>view/js/jquery-3.4.1.js"></script>--%>
<script type="text/javascript">
    <!--删除单项-->
    function sobNo_del(obj,s_id){
        var r = confirm("是否确认删除？");
        if(r==true){
            var id = s_id;
            $.get("/salesOrderBrowseController/salesOrderDelete.do?sobNo="+id,function(data){
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
    //修改按钮触发事件
    $(document).on('click','#edit_btn',function () {
        var s="1"
        //1、得到部门信息
        // getDepts('#myUpdateModal select')
        //2、得到员工的信息，找到对应的属性，将id取出。
        // getSob($(this).attr("id[]"));
        getSob(s);
        //把员工id传入模态框的更新按钮上
        $('#update_button').attr('update-id', $(this).attr("id[]"));
        //console.log($(this).attr("edit-id"))
        //弹出静态框
        $('#myUpdateModal').modal({
            backdrop : 'static'
        })
    })

    //更新员工
    function getSob(s) {
        $.ajax({
            url:"<%=basePath%>/salesOrderBrowseController/getSalesOrder.do/"+s,
            type:"GET",
            dataType:"json",
            contentType:"application/json; charset=utf-8",
            success:function (result) {
                //测试返回的数据
                // console.log(result);
                //得到emp的值
                var sobData = result.extend.sob;
                $('#update_emp_static').text(sobData.salesOrderNo);
                $('#update_emp_Email').val(empData.email);
                $('#myUpdateModal input[name=gender]').val(empData.gender);
                $('#myUpdateModal select').val(empData.dId);
            }
        })
    }
    //以下为Ajax请求异步提交
    //修改员工
    $('#update_button').click(function () {
        //1、判断员工的正则表示式
        // var empEmail = $('#update_emp_Email').val();
        // var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
        // if(!regEmail.test(empEmail)) {
        //     show_invalid('#update_emp_Email','error','邮箱格式不正确！');
        //     // console.log("格式错误！")
        //     return false;
        // }else {
        //     show_invalid('#update_emp_Email', 'success', '')
        // }
        var sobId = $(this).attr('#update_no');
        // var sobId = "1";
        // console.log(empId)
        //2、发送ajax请求保存员工信息
        $.ajax({
            url:'<%=basePath%>/salesOrderBrowseController/saveSalesOrder.do',
            type:"POST",
            data:$('#myUpdateModal form').serialize(),
            success:function (json) {
                alert(json.success);
                //1、关闭模态框
                $('#myUpdateModal').modal('hide');
                location.reload();
                //2、回到当前页数-->得到当前的pageNum
                // to_Page(current_page);
            }
        })
    })
    function useAjaxSobUpdate(obj,sob_id) {
        var id=sob_id
        $.ajax({
            url:'<%=basePath%>/salesOrderBrowseController/getSalesOrder.do',
            type: 'POST',
            dataType: "JSON",
            // data: JSON.stringify({id:"1"}),
            data: {"id":id},
            success:function (json){
                //测试返回的数据
                //  console.log(data);
                //得到emp的值
                var sobData = json.sob;
                // var dateOfSob = new Date(sobData.salesDate);
                $('#update_no').val(sobData.salesOrderNo);
                $('#update_name').val(sobData.productName);
                $('#update_name2').val(sobData.customerName);
                $('#update_quanity').val(sobData.salesQuantity);
                $('#update_date').val(sobData.salesDate);
                $('#update_statue').val(sobData.salesStatus);
            }
        });
        $('#myUpdateModal').modal({
            backdrop : 'static'
        })
    }
    function useAjaxAdd() {
        $('#myUpdateModal2').modal({
            backdrop : 'static'
        })
    }
    //增加员工
    $('#update_button2').click(function () {
        $.ajax({
            url:'<%=basePath%>/salesOrderBrowseController/saveSalesOrderAdd.do',
            type:"POST",
            data:$('#myUpdateModal2 form').serialize(),
            success:function (json) {
                alert(json.success);
                //1、关闭模态框
                $('#myUpdateModal').modal('hide');
                location.reload();
                //2、回到当前页数-->得到当前的pageNum
                // to_Page(current_page);
            }
        })
    })
</script>

</body>
</html>
