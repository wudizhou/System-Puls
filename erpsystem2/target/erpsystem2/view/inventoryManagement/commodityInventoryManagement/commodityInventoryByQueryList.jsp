<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/3/13
  Time: 11:24
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
                                <a onClick="add_button()"><i class="zmdi zmdi-format-playlist-add"></i>增加</a>
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
                                <form action="/commodityInventoryController/selectCommodityInventory.do" class="form form-horizontal"method="post">
                                    <nobr><select class="select-box inline" style="width:100px" name="type" size="1">
                                        <option value="keyWords">关键字段：</option>
                                        <option value="commodityInventoryNo">商品库存单编号</option>
                                        <option value="commodityName">商品名称</option>
                                        <option value="commodityPrice">商品单价</option>
                                        <option value="commodityInventoryQuantity">商品库存数量</option>
                                        <option value="supplier">供应商</option>
                                        <option value="procurementStaff">采购员工</option>
                                        <option value="commodityCategory">商品类别</option>
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
                    <ul class="actions">
                        <li>
                            <button onClick="todelect()" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-check-all"></i>批量删除</button>
                        </li>
                    </ul>
                </div>
                <div class="card-body table-responsive">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="xaunzhong" onclick="schrollId_batchDeletion('id[]')" id="selectall" />全选
                    <table class="table">
                        <thead>
                        <tr>
                            <th>商品库存单编号</th>
                            <th>商品名称</th>
                            <th>商品单价</th>
                            <th>商品库存数量</th>
                            <th>供应商</th>
                            <th>采购员工</th>
                            <th>商品类别</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${pb.beanList}" var="commodityInventory"  >
                            <tr>
                                <td><input  type="checkbox" name="id[]"
                                            value="${commodityInventory.commodityInventoryNo}" />${commodityInventory.commodityInventoryNo}</td>
                                <td>${commodityInventory.commodityName}</td>
                                <td>${commodityInventory.commodityPrice }</td>
                                <td>${commodityInventory.commodityInventoryQuantity}</td>
                                <td>${commodityInventory.supplier}</td>
                                <td>${commodityInventory.procurementStaff}</td>
                                <td>${commodityInventory.commodityCategory}</td>
                                <td>
                                    <a href="javascript: ;"onclick="useAjaxCimUpdate(this,'${commodityInventory.commodityInventoryNo}')"><button class="btn btn-default btn-icon-text"><i class="zmdi zmdi-edit"></i>修改</button></a>
                                    <a href="javascript: ;" onclick="commodityInventoryNo_del(this,'${commodityInventory.commodityInventoryNo}')"><button class="btn btn-default btn-icon-text"><i class="zmdi zmdi-delete"></i> 删除 </button></a>
                                </td>
                                    <%--<button class="btn btn-default btn-icon-text"><i class="zmdi zmdi-refresh"></i> 修改</button>--%>
                                    <%--<button class="btn btn-default btn-icon-text"><i class="zmdi zmdi-close"></i> 删除</button>--%>
                            </tr>
                        </c:forEach>
                        <div class="inline pull-right page">
                            <tr align="center">
                                <td colspan="12"><div class="pagelist" style="padding-left: 39%;">
                                    第${pb.pc }页/共${pb.tp }页 <a
                                        href="<c:url value='/commodityInventoryController/selectCommodityInventory.do?pc=1'/>">首页</a>
                                    <c:if test="${pb.pc>1 }">
                                        <a href="<c:url value='/commodityInventoryController/selectCommodityInventory.do?pc=${pb.pc-1 }'/>">上一页</a>
                                    </c:if>
                                    <%-- （2）计算：begin、end --%>
                                    <c:choose>
                                        <%-- 如果总页数不足10页，那么把所有的页数都显示出来！ --%>
                                        <c:when test="${pb.tp <= 10 }">
                                            <c:set var="begin" value="1" />
                                            <c:set var="end" value="${pb.tp }" />
                                        </c:when>
                                        <c:otherwise>
                                            <%--当总页数>10时，通过公式计算出begin和end --%>
                                            <c:set var="begin" value="${pb.pc-5}" />
                                            <c:set var="end" value="${pb.pc+4 }" />
                                            <%--头溢出 --%>
                                            <c:if test="${begin < 1 }">
                                                <c:set var="begin" value="1" />
                                                <c:set var="end" value="10" />
                                            </c:if>

                                            <%--尾溢出 --%>
                                            <c:if test="${end > pb.tp }">
                                                <c:set var="begin" value="${pb.tp-9}" />
                                                <c:set var="end" value="${pb.tp}" />
                                            </c:if>
                                        </c:otherwise>
                                    </c:choose>
                                    <%-- （3）循环遍历页码列表 --%>
                                    <c:forEach var="i" begin="${begin }" end="${end }">
                                        <c:choose>
                                            <c:when test="${i eq pb.pc}">
                                                <a style="color: green; font-weight: bold; font-size: 16px;"
                                                   href="<c:url value='/commodityInventoryController/selectCommodityInventory.do?pc=${i }'/>">${i }</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href="<c:url value='/commodityInventoryController/selectCommodityInventory.do?pc=${i }'/>">${i }</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>


                                    <c:if test="${pb.pc<pb.tp }">
                                        <a href="<c:url value='/commodityInventoryController/selectCommodityInventory.do?pc=${pb.pc+1 }'/>">下一页</a>
                                    </c:if>

                                    <a href="<c:url value='/commodityInventoryController/selectCommodityInventory.do?pc=${pb.tp }'/>">尾页</a>

                                </div></td>
                            </tr>
                        </div>
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
<!-- update-->
<div class="modal fade" id="myUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <div class="text-center">
                    <div class="card pt-inner">
                        <div class="pti-header bgm-bluegray">
                            <h2>商品库存信息修改</h2><small>| safe</small>
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
                                <input type="hidden" id="commodityInventory_No" name="commodityInventoryNo" class="form-control">
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
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-shopping-cart zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="commodityPrice" class="form-control" id="commodity_Price" placeholder="请输入商品单价">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-collection-item-1 zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="commodityInventoryQuantity" class="form-control" id="commodity_Inventory_Quantity" placeholder="请输入商品数量">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="supplier" class="form-control" id="supplier_" placeholder="请输入供应商">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account-circle zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="procurementStaff" class="form-control" id="procurement_Staff" placeholder="请输入采购员工">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-dialpad zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="commodityCategory" class="form-control" id="commodity_Category" placeholder="请输入商品类别">
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
                <button type="button" class="btn btn-primary" id="update_button"><i class="zmdi zmdi-check"></i>保存</button>
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
                            <h2>商品库存信息增加</h2><small>| safe</small>
                            <div class="ptih-title">Banana Pack</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-body">
                <form  class="form-horizontal">
                    <div class="form-group">
                        <nobr><label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-assignment zmdi-hc-fw"></i></label>
                            <div class="col-sm-6">
                                <input type="name" style="font-size:x-large" name="commodityInventoryNo" placeholder="请输入商品库存单号"class="form-control">
                                <span class="help-block"></span>
                            </div>
                        </nobr>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-desktop-windows zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="commodityName" class="form-control"  placeholder="请输入商品名称">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-shopping-cart zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="name" name="commodityPrice" class="form-control"  placeholder="请输入商品单价">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-collection-item-1 zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="commodityInventoryQuantity" class="form-control"  placeholder="请输入商品数量">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account zmdi-hc-fw"></i></label>
                        <div class="col-sm-6">
                            <input style="font-size:x-large" type="value" name="supplier" class="form-control"  placeholder="请输入供应商">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-account-circle zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="procurementStaff" class="form-control"  placeholder="请输入采购员工">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="add" class="col-sm-2 control-label"><i style="font-size:xx-large"class="zmdi zmdi-dialpad zmdi-hc-fw"></i></label>
                        <div class="col-sm-8">
                            <input style="font-size:x-large" type="" name="commodityCategory" class="form-control"  placeholder="请输入商品类别">
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
                <button type="button" class="btn btn-primary" id="update_button2"><i class="zmdi zmdi-check"></i>保存</button>
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

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="<%=basePath%>view/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="<%=basePath%>view/js/functions.js"></script>
<script src="<%=basePath%>view/js/demo.js"></script>


</body>
</html>
<script>
    <!--删除单项-->
    function commodityInventoryNo_del(obj,s_id){
        var r = confirm("是否确认删除？");
        if(r==true){
            var id = s_id;
            $.get("/commodityInventoryController/commodityInventoryDelete.do?commodityInventoryNo="+id,function(data){
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
    <!--全选-->
    function schrollId_batchDeletion(Obj){
        var collid = document.getElementById("selectall")
        var coll = document.getElementsByName(Obj)
        if (collid.checked){
            for(var i = 0; i < coll.length; i++)
                coll[i].checked = true;
        }else{
            for(var i = 0; i < coll.length; i++)
                coll[i].checked = false;
        }
    }
    <!--批量删除-->
    function todelect(){
        var Checkbox=false;//默认复选框为空
        $("input[name='id[]']").each(function(){//获取复选框节点id
            if (this.checked==true) {
                Checkbox=true;    //已勾选
            }
        });
        if (Checkbox){//boolean值为true
            var t=confirm("您确认要删除选中的内容吗？");//弹出对话进行警告
            if (t==false) return false;    //不勾选不处理
            obj = document.getElementsByName("id[]");//将复选框定义成一个jquery对象
            check_val = [];//定义一个数组
            for(k in obj){//k相当于i,往这个jquery对象添加勾选的id;
                if(obj[k].checked)//选中的都放进 数组里
                    check_val.push(obj[k].value);
            }

            $.ajax({//利用ajax发出请求
                type:"GET",//
                url:"<%=basePath%>/commodityInventoryController/deleteMany.do", //向Controller里的deleteSelect传输ids
                dataType: "JSON",
                data:{"ids":check_val},
                success:function(data){//删除成功后，deleteMany会返回一个"ok";
                    if(data.success=="ok"){
                        alert("删除成功！");//返回ok后弹出一个对话框。
                        location.reload();
                        <%--location.href="<%=basePath%>/commodityInventoryController/commodityInventoryList.do";//相当于刷新界面--%>
                    }
                }
            });

        }
        else{
            alert("请选择您要删除的内容!");//不勾选不提交，弹出警告框。
            return false;
        }

    }
    <!--以下为Ajax请求异步提交-->
    <!--修改员工-->
    $('#update_button').click(function () {
        //1、判断员工的正则表示式
        var sobId = $(this).attr('#update_no');
        $.ajax({
            url:'<%=basePath%>/commodityInventoryController/saveCommodityInventory.do',
            type:"POST",
            data:$('#myUpdateModal form').serialize(),
            success:function (json) {
                alert(json.success);
                //1、关闭模态框
                $('#myUpdateModal').modal('hide');
                location.reload();
            }
        })
    })
    function useAjaxCimUpdate(obj,cim_id) {
        var id=cim_id
        $.ajax({
            url:'<%=basePath%>/commodityInventoryController/getCommodityInventory.do',
            type: 'POST',
            dataType: "JSON",
            // data: JSON.stringify({id:"1"}),
            data: {"id":id},
            success:function (json){
                //测试返回的数据
                //  console.log(data);
                //得到emp的值
                var cimData = json.cim;
                // var dateOfSob = new Date(sobData.salesDate);
                $('#commodityInventory_No').val(cimData.commodityInventoryNo);
                $('#commodity_Name').val(cimData.commodityName);
                $('#commodity_Price').val(cimData.commodityPrice);
                $('#commodity_Inventory_Quantity').val(cimData.commodityInventoryQuantity);
                $('#supplier_').val(cimData.supplier);
                $('#procurement_Staff').val(cimData.procurementStaff);
                $('#commodity_Category').val(cimData.commodityCategory);
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
            url:'<%=basePath%>/commodityInventoryController/addCommodityInventory.do',
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
