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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

        #main {
            position: relative;
            padding-bottom: 110px;
            padding-top: 70px;
        }

        .tab-content {
            margin-right: 15px;
            margin-left: 15px;
            padding: 20px 0;
        }

        hr{
            margin:10px 0px ;
        }

        .glyphicon-arrow-left{
            font-size: 20px;
        }

        .box{
            width: 230px;
            height: 120px;
            margin-left: 6px;
            border: black 1px solid;
            display: inline-block;
        }

        .glyphicon-edit{
            font-size: 16px;
            margin: 0px 10px;
        }
    </style>

</head>
<body>
<%--头部消息栏--%>
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
                    通用
                    <i class="zmdi zmdi-caret-down"></i>
                </div>
            </a>
            <ul class="main-menu">
                <li>
                    <a href="profile-about.html"><i class="zmdi zmdi-account"></i> 详细资料</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-input-antenna"></i> 隐私设置</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-settings"></i> 设置</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-time-restore"></i> 注销</a>
                </li>
            </ul>
        </div>

        <ul class="main-menu">
            <li>
                <a href="<%=basePath%>/mainController/main.do"><i class="zmdi zmdi-home"></i>首页</a>
            </li>
        </ul>
    </aside>

    <section id="content" >
        <!-- 面板区 -->
        <div class="tab-content">
            <%-- 面板一--%>
            <div role="tabpanel" class="tab-pane active" id="home">
                <%-- 卡片--%>
                <div class="card" style="width: 1238px;height: 530px;margin-bottom: 0px">
                    <div id="topBox" class="card-header">
                        <h2 style="font:normal bold 16px 华文宋体;float: left">采购单信息</h2>
                        <a href="<%=basePath%>purchasingManagementController/purchaseOrder.do">
                            <span style="float: right;margin-right: 50px" class="glyphicon glyphicon-arrow-left"></span>
                        </a>
                    </div>
                    <div class="card-body table-responsive" style="height: 440px;width: 100%">
                        <hr/>
                        <div style="width: 20%;height:300px;border-right: black 1px solid;background:rgb(255,0,0,0.5);float:left">
                            <form id="purchaseForm" action="#" method="post">
                                <input type="hidden" id="purchaseId" name="purchaseId" value="${purchaseId}">
                                <span style="margin-left: 56px">采购说明：</span><br/>
                                <textarea style="margin-left: 56px" name="purchaseExplain" id="purchaseExplain"  cols="18" rows="5">${purchaseExplain}</textarea><br/>
                                <span style="padding-left:12px;margin-left: 56px">采购员：</span><br/>
                                <input style="margin-left: 56px" type="text" id="PurchaseBuyer" name="PurchaseBuyer" value="${buyer}" /><br/>
                                <button id="save_btn" type="button" onclick="fnSavePurchase()" style="margin: 50px 102px">保存</button>
                            </form>
                        </div>
                        <div style="width: 79%;height:300px;background:rgb(255,255,0,0.3);float:right;overFlow-x:hidden;overFlow-y:scroll;">
                            <div class="block-header">
                                <ul class="actions">

                                    <li class="dropdown">
                                        <!--<a href="">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>-->
                                        <a data-toggle="dropdown" href=""><i class="tm-icon zmdi zmdi-more-vert"></i></a>
                                        <ul class="dropdown-menu dm-icon pull-right">
                                            <li class="divider hidden-xs"></li>
                                            <li>
                                                <a onclick="fnInsertProduct()"><i class="zmdi zmdi-format-playlist-add"></i>新增商品</a>
                                            </li>
                                            <li>
                                                <a onclick="fnDeleteCommodity()"><i class="zmdi zmdi-format-playlist-add"></i>删除商品</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div id="CommodityBox" style="height: 250px;width: 100%">
                                <form id="boxForm" action="#" method="post" >
                               <c:forEach items="${CommodityList}" var="Commodity">
                                   <div class="box" >
                                   <input type="checkbox" name="id" value="${Commodity.id}" />
                                   <a onclick="fnEditCommodity('${Commodity.id}','${Commodity.commodityName}','${Commodity.commodityQuality}','${Commodity.commodityPrice}','${Commodity.commodityType}','${Commodity.supplier}')">
                                   <span class="glyphicon glyphicon-edit" style="float: right"></span>
                                   </a>
                                   名称：${Commodity.commodityName}<br/>
                                   数量：${Commodity.commodityQuality}<br/>
                                   价格：${Commodity.commodityPrice}<br/>
                                   类别：${Commodity.commodityType}<br/>
                                   供销商：${Commodity.supplier}<br/>
                                   </div>
                               </c:forEach>
                                </form>
                            </div>
                        </div>
                       <%-- <c:forEach items="${purchaseSublistList}" var="purchaseSublist" >
                            <div class="detailBox">
                                <fileset >
                                    <legend>${purchaseSublist.commodityName}</legend>
                                    数量：${purchaseSublist.commodityQuality}<br/>
                                    价格：${purchaseSublist.commodityPrice}<br/>
                                    类别：${purchaseSublist.commodityType}<br/>
                                    供销商：${purchaseSublist.supplier}<br/>
                                </fileset>
                            </div>
                            &lt;%&ndash; <div class="detailBox">
                                 名称：${purchaseSublist.commodityName}
                             </div>&ndash;%&gt;
                        </c:forEach>--%>
                    </div>
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
                <form id="form" action="<%=basePath%>purchasingManagementController/addPurchaseOrder!saveCommodity.do" method="post" class="form-horizontal" role="form">
                    <table class="table table-bordered table-hover m10">

                        <tr>
                            <td width="20%" class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-widgets"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="hidden" class="form-control" id="modelPurchaseId" name="purchaseId"  placeholder="采购单编号">
                                        <input type="hidden" class="form-control" id="id" name="id"  placeholder="产品编号">
                                        <input type="text" class="form-control" id="commodityName" name="commodityName" placeholder="产品名称">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-portable-wifi"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="number" class="form-control" id="commodityQuality" name="commodityQuality"  placeholder="采购数量">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-layers"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="number" class="form-control" id="commodityPrice" name="commodityPrice" step="0.01"  placeholder="价格">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-portable-wifi"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control" id="commodityType" name="commodityType"  placeholder="类别">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="zmdi zmdi-layers"></i></span></td>
                            <td>
                                <div class="input-group">

                                    <div class="fg-line">
                                        <input type="text" class="form-control" id="supplier" name="supplier"  placeholder="供销商">
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableleft"><span class="input-group-addon"><i class="dropdown-menu dropdown-menu-right"></i></span></td>
                            <td>
                                <div class="input-group">
                                    <div class="fg-line">
                                        <button type="submit" onclick="fnSaveCommodity()" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-check-all"></i>保存</button>
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
        <li><a href="#">Home</a></li>
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Reports</a></li>
        <li><a href="#">Support</a></li>
        <li><a href="#">Contact</a></li>
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

    //打开模态框，修改、新增商品
    function fnInsertProduct(){
       let purchaseId = $("#purchaseId").val();
       if(purchaseId==null || purchaseId==""){
           alert("请先创建采购单。")
           return;
       }
        //重置表单
        $("#form")[0].reset();
       //设置采购单号
        $("#modelPurchaseId").val(purchaseId);
        //设置模态框标题（重点）
        $("#title").text("采购单商品");
        //设置表单的action（重点）
        //弹出模态框
        $("#myModal").modal("show");
    }


    //保存采购单
    function fnSavePurchase() {
        let PurchaseBuyer = $("#PurchaseBuyer").val().trim();
        let purchaseExplain = $("#purchaseExplain").val().trim();
        if(purchaseExplain=="" && PurchaseBuyer==""){
            alert("采购备注或采购说明为空，请补充信息后再提交！")
            return;
        }

        let flag = confirm("确定创建新的采购单?");
        if(flag){
            $.ajax({
                url: '<%=basePath%>purchasingManagementController/addPurchaseOrder!savePurchaseOrder.do',
                type: "POST",
                data: $('#purchaseForm').serialize(),
                dateType:"json",
                success: function (data) {
                    alert(data.success)
                    $("#purchaseId").val(data.purchaseId);
                    $("#modelPurchaseId").val(data.purchaseId);
                    console.log(data.purchaseId);
                    console.log( $("#purchaseId").val());
                    $("#purchaseBuyer").val(data.purchaseBuyer);
                    document.getElementById('purchaseExplain').value= data.purchaseExplain;
                    $("#PurchaseBuyer").prop("readonly","readonly");
                    $("#purchaseExplain").prop("readonly","readonly");
                    $("#save_btn").hide();;
                },
                error: function (data) {
                    alert("出错啦！")
                }
            })
        }
    }

    //保存采购单商品
    function fnSaveCommodity() {
        //1、关闭模态框
        $('#myModal').modal('hide');
    }

    //删除商品
    function fnDeleteCommodity() {
        let purchaseId = $("#purchaseId").val();
        $("#boxForm").prop("action","<%=basePath%>purchasingManagementController/addPurchaseOrder!deleteCommodity.do?purchaseId="+purchaseId);
        $("#boxForm").submit();
    }

    //编辑商品
    function fnEditCommodity(id,commodityName,commodityQuality,commodityPrice,commodityType,supplier) {
        //重置表单
        $("#form")[0].reset();
        //设置采购单号
        let purchaseId = $("#purchaseId").val();
        $("#modelPurchaseId").val(purchaseId);
        //设置模态框标题（重点）
        $("#title").text("采购单商品");
        //设置表单的action（重点）
        //弹出模态框
        //回显商品值
        $("#id").val(id);
        $("#commodityName").val(commodityName);
        $("#commodityQuality").val(commodityQuality);
        $("#commodityPrice").val(commodityPrice);
        $("#commodityType").val(commodityType);
        $("#supplier").val(supplier);
        $("#myModal").modal("show");
    }

</script>

