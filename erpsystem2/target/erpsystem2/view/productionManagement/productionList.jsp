<%--
  Created by IntelliJ IDEA.
  User: Xin
  Date: 2020/3/9
  Time: 22:12
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

    <style type="text/css">
        .container{

        }
    </style>

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
                <a href="<%=basePath%>/mainController/main.do"><i class="zmdi zmdi-home"></i> Home</a>
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


    <section id="content" >
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
                                <a onclick="InsertProduct()"><i class="zmdi zmdi-format-playlist-add"></i>增加</a>
                            </li>
                             <li>
                                 <a onclick="deleteProductBatch()"><i class="zmdi zmdi-format-playlist-add"></i>批量删除</a>
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
                        <ul class="dropdown-menu dm-icon pull-right">
                            <div class="text-c">
                                <form action="<%=basePath%>productionManagementController/production!queryProduct.do" class="form form-horizontal"method="post">
                                    <nobr><select class="select-box inline" style="width:100px" name="type" size="1">
                                        <option value="keyWords">关键字段：</option>
                                        <option value="productionNo">产品生产编号</option>
                                        <option value="productName">产品名称</option>
                                        <option value="productionStatus">产品状态</option>
                                    </select>&nbsp;
                                        <input style="height:25px; width:280px" type="text" value="" class="" style="width:250px" placeholder="请输入" name="value"><button style="height:27px; width:28px" class="btn btn-default btn-icon"><i style="font-size:xx-large" class="zmdi zmdi-search"></i></button></nobr>
                                </form>
                            </div>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="card">
                <div class="card-header">
                    <h2>Basic Table <small>Basic example without any additional modification classes</small></h2>
                </div>

                <div class="card-body table-responsive">
                    <form id="listForm" action="" method="post">
                    <table class="table">
                        <thead>
                        <tr>
                            <th></th>
                            <th>生产编号</th>
                            <th>产品名称</th>
                            <th>生产数量</th>
                            <th>产品登记日期</th>
                            <th>产品状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${productList}" var="product"  >
                            <tr>
                                <td><input  type="checkbox" name="id"
                                            value="${product.productionNo}"/></td>
                                <td>${product.productionNo }</td>
                                <td>${product.productName }</td>
                                <td>${product.productionQuantity }</td>
                                <td>${product.producedDate }</td>
                                <td>${product.productionStatus }</td>
                                <td>
                                    <a onclick="openUpdateProduct(this,'${product.productionNo}')" ><button type="button" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-edit"></i>修改</button></a>&nbsp&nbsp
                                    <a onclick="deleteProduction(this,'${product.productionNo}')"><button type="button" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-delete"></i> 删除 </button></a>
                                </td>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    </form>
                </div>
            </div>
            </tbody>
            </table>
        </div>
        </div>

        </div>
    </section>
</section>
<%--增加以及修改模态框--%>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                <div id="title" style="font-size: x-large;" class="" data-name="" tooltip="">
                    <span> </span>
                </div>
            </div>

            <div class="modal-body">
                <form id="form" action=" " method="post" class="form-horizontal" role="form">
                    <table class="table table-bordered table-hover m10">

                        <tr>
                            <td width="20%" class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-widgets"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="hidden" class="form-control" id="productionNo" name="productionNo" value="${product.productionNo}" placeholder="产品编号">
                                        <input type="text" class="form-control" id="productName" name="productName" value="${product.productName}" placeholder="产品名称">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-portable-wifi"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="number" class="form-control" id="productionQuantity" name="productionQuantity" value="${product.productionQuantity}" placeholder="生产数量">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-layers"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input name="productionStatus" type="radio" value="0" checked="checked"/> 待生产 &nbsp&nbsp&nbsp&nbsp
                                        <input name="productionStatus" type="radio" value="1" /> 已生产
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="dropdown-menu dropdown-menu-right"></i></span></td>
                            <td>
                                <div class="input-group">
                                    <div class="fg-line">
                                        <button type="button" onclick="savaProduct()" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-check-all"></i>保存</button>
                                        <button type="button" data-dismiss="modal" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-trending-up"></i>关闭</button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </form>

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

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="<%=basePath%>view/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="<%=basePath%>view/js/functions.js"></script>
<script src="<%=basePath%>view/js/demo.js"></script>


</body>
</html>
<script>

    //删除单个产品
    function deleteProduction(obj,s_id){
      let flag = confirm("确认删除该产品信息?");
             if(flag){
                 let id = s_id;
                 $.get("<%=basePath%>/productionManagementController/production!deleteProduction.do?productionNo="+id,function(data){
                     location.reload();
                 });
             }
    }

    // 批量删除
    function deleteProductBatch(){
        let flag = confirm("确认删除选中产品信息?"); listForm
        if(flag){
            $.ajax({
                url: '<%=basePath%>productionManagementController/production!deleteProductionBatch.do',
                type: "POST",
                data: $('#listForm').serialize(),
                success: function (json) {
                    alert(json.success);
                    location.reload();
                }
            });
        }
    }

    //插入
    function InsertProduct() {
        //重置表单
        $("#form")[0].reset();
        //设置模态框标题（重点）
        $("#title").text("产品信息登记");
        //设置表单的action（重点）
        $("#form").prop("action", "<%=basePath%>/productionManagementController/production!saveProduct.do");
        //弹出模态框
        $("#myModal").modal("show");
    }
    //修改
    function openUpdateProduct(obj,s_id) {
        var product = s_id;
        //重置表单
        $("#form")[0].reset();
        //设置模态框标题（重点）
        $("#title").text("产品登记信息修改");
        //设置表单的action（重点）
        $("#form").prop("action", "<%=basePath%>/productionManagementController/production!saveProduct.do?productionNo="+product);
        //回填数据
        let productionNo = $(obj).parent().siblings().eq(1).text();
        let productName = $(obj).parent().siblings().eq(2).text();
        let productionQuantity = $(obj).parent().siblings().eq(3).text();
        let productionStatus = $(obj).parent().siblings().eq(5).text();
        productionStatus = productionStatus == "已生产" ? 1:0;
        $("#productionNo").val(productionNo);
        $("#productName").val(productName);
        $("#productionQuantity").val(productionQuantity);
        if(productionStatus == 1){
            $("input[name='productionStatus'][value = 1 ] ").attr("checked",true);
        }else{
            $("input[name='productionStatus'][value = 0 ] ").attr("checked",true);
        }
        //弹出模态框
        $("#myModal").modal("show");
    }
    //保存新增/修改
    function savaProduct() {
        //1、关闭模态框
        $('#myModal').modal('hide');
        //获取页面信息
        var productionNo = $("#form [name='productionNo']").val()
        var productName = $("#form [name='productName']").val();
        var productionQuantity= $("#form [name='productionQuantity']").val();
        var productionStatus = $("#form [name='productionStatus']").val();
        //判断内容不等于空
        if(productName != "" && productionQuantity != ""&& productionStatus != "") {
            //提交表单
            $.ajax({
                url: '<%=basePath%>productionManagementController/production!saveProduct.do',
                type: "POST",
                data: $('#myModal form').serialize(),
                success: function (json) {
                    alert(json.success);
                    location.reload();
                }
            })
        }
    }
</script>

