<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/3/4
  Time: 13:29
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
<html>
<head>
    <title>Title</title>
    <!-- echarts-->
    <script src="<%=basePath%>view/echarts/echarts.common.min.js"></script>
    <script src="<%=basePath%>view/echarts/vintage.js"></script>
    <script src="<%=basePath%>view/echarts/shine.js"></script>
    <%--<script src="<%=basePath%>view/echarts/echarts.min.js"></script>--%>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Material Admin</title>

    <link href="<%=basePath%>view/vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css" rel="stylesheet">

    <!-- CSS -->
    <link href="<%=basePath%>view/css/app.min.1.css" rel="stylesheet">
    <link href="<%=basePath%>view/css/app.min.2.css" rel="stylesheet">
</head>
<body>
<header id="header-2" class="clearfix" data-current-skin="lightblue"> <!-- Make sure to change both class and data-current-skin when switching sking manually -->
    <ul class="header-inner clearfix">
        <li id="menu-trigger" data-trigger=".ha-menu" class="visible-xs">
            <div class="line-wrap">
                <div class="line top"></div>
                <div class="line center"></div>
                <div class="line bottom"></div>
            </div>
        </li>

        <li class="logo hidden-xs">
            <a href="index.html">Material Admin 1.6</a>
        </li>

        <li class="pull-right">
            <ul class="top-menu">
                <li class="dropdown">
                    <a data-toggle="dropdown" href="">
                        <i class="tmn-counts">6</i>
                        <i class="tm-icon zmdi zmdi-email"></i>
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
                                            <img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/3.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
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
                    <a data-toggle="dropdown">
                        <i class="tmn-counts">9</i>
                        <i class="tm-icon zmdi zmdi-notifications"></i>
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
                                            <img class="lv-img-sm" src="img/profile-pics/1.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/2.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/3.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
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
                                            <img class="lv-img-sm" src="img/profile-pics/4.jpg" alt="">
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
                <li class="dropdown">
                    <a data-toggle="dropdown" href="">
                        <i class="tmn-counts">2</i>
                        <i class="tm-icon zmdi zmdi-view-list-alt"></i>
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
            </ul>
        </li>
    </ul>

    <div class="search">
        <div class="fg-line">
            <input type="text" class="form-control" placeholder="Search...">
        </div>
    </div>

    <nav class="ha-menu">
        <ul>
            <li class="waves-effect"><a href="index.html">Home</a></li>
            <li class="active dropdown">
                <div class="waves-effect" data-toggle="dropdown">Headers</div>

                <ul class="dropdown-menu">
                    <li><a href="textual-menu.html">Textual menu</a></li>
                    <li><a href="image-logo.html">Image logo</a></li>
                    <li><a class="active" href="top-mainmenu.html">Mainmenu on top</a></li>
                </ul>
            </li>
            <li class="waves-effect"><a href="typography.html">Typography</a></li>
            <li class="dropdown">
                <div class="waves-effect" data-toggle="dropdown">Widgets</div>
                <ul class="dropdown-menu">
                    <li><a href="widget-templates.html">Templates</a></li>
                    <li><a href="widgets.html">Widgets</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <div class="waves-effect" data-toggle="dropdown">Tables</div>
                <ul class="dropdown-menu">
                    <li><a href="tables.html">Normal Tables</a></li>
                    <li><a href="data-tables.html">Data Tables</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <div class="waves-effect" data-toggle="dropdown">Forms</div>
                <ul class="dropdown-menu">
                    <li><a href="form-elements.html">Basic Form Elements</a></li>
                    <li><a href="form-components.html">Form Components</a></li>
                    <li><a href="form-examples.html">Form Examples</a></li>
                    <li><a href="form-validations.html">Form Validation</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <div class="waves-effect" data-toggle="dropdown">User Interface</div>
                <ul class="dropdown-menu">
                    <li><a href="colors.html">Colors</a></li>
                    <li><a href="animations.html">Animations</a></li>
                    <li><a href="box-shadow.html">Box Shadow</a></li>
                    <li><a href="buttons.html">Buttons</a></li>
                    <li><a href="icons.html">Icons</a></li>
                    <li><a href="alerts.html">Alerts</a></li>
                    <li><a href="preloaders.html">Preloaders</a></li>
                    <li><a href="notification-dialog.html">Notifications & Dialogs</a></li>
                    <li><a href="media.html">Media</a></li>
                    <li><a href="components.html">Components</a></li>
                    <li><a href="other-components.html">Others</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <div class="waves-effect" data-toggle="dropdown">Charts</div>
                <ul class="dropdown-menu">
                    <li><a href="flot-charts.html">Flot Charts</a></li>
                    <li><a href="other-charts.html">Other Charts</a></li>
                </ul>
            </li>
            <li class="waves-effect"><a href="calendar.html">Calendar</a></li>
        </ul>
    </nav>

    <div class="skin-switch dropdown hidden-xs">
        <button data-toggle="dropdown" class="btn ss-icon"><i class="zmdi zmdi-palette"></i></button>
        <div class="dropdown-menu">
            <span class="ss-skin ss-1 bgm-lightblue" data-skin="lightblue"></span>
            <span class="ss-skin ss-2 bgm-bluegray" data-skin="bluegray"></span>
            <span class="ss-skin ss-3 bgm-cyan" data-skin="cyan"></span>
            <span class="ss-skin ss-4 bgm-teal" data-skin="teal"></span>
            <span class="ss-skin ss-5 bgm-green" data-skin="green"></span>
            <span class="ss-skin ss-6 bgm-orange" data-skin="orange"></span>
            <span class="ss-skin ss-7 bgm-blue" data-skin="blue"></span>
            <span class="ss-skin ss-8 bgm-purple" data-skin="purple"></span>
        </div>
    </div>
</header>

<section id="main">
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
                <div class="card-header" style="">
                    <h2>Sales Statistics <small>Vestibulum purus quam scelerisque, mollis nonummy metus</small></h2>

                    <ul class="actions">
                        <li>
                            <button id="update_button" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-refresh"></i>刷新</button>
                        </li>
                    </ul>
                </div>
                <div id="main2" style="width: 100%; height: 500px;"></div>
                <!--<div class="card-body">
                    <div class="chart-edge">
                        <div id="curved-line-chart" class="flot-chart "></div>
                    </div>
                </div>-->
            </div>
            <div class="mini-charts">
                <div class="row">
                    <div class="col-sm-6 col-md-3" >
                        <div class="mini-charts-item bgm-cyan">
                            <div class="clearfix">
                                <div class="chart stats-bar" ></div>
                                <div class="count">
                                    <small>第一季度总销量</small>
                                    <h2>${thefirstquarter}</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-lightgreen">
                            <div class="clearfix">
                                <div class="chart stats-bar-2"></div>
                                <div class="count">
                                    <small>第二季度总销量</small>
                                    <h2>${thesecondquarter}</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-orange">
                            <div class="clearfix">
                                <div class="chart stats-line"></div>
                                <div class="count">
                                    <small>第三季度总销量</small>
                                    <h2>${thethirdquarter}</h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-3">
                        <div class="mini-charts-item bgm-bluegray">
                            <div class="clearfix">
                                <div class="chart stats-line-2"></div>
                                <div class="count">
                                    <small>第四季度总销量</small>
                                    <h2>${theforthquarter}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header" style="">
                    <h2>Sales Statistics <small>Vestibulum purus quam scelerisque, mollis nonummy metus</small></h2>

                    <ul class="actions">
                        <li>
                            <button id="update_button2" class="btn btn-default btn-icon-text"><i class="zmdi zmdi-refresh"></i>刷新</button>
                        </li>

                    </ul>
                </div>
                <div id="main3" style="width: 100%; height: 500px;"></div>
            </div>

            <!-- Recent Posts -->

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
             <script src="<%=basePath%>view/vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
             <script src="<%=basePath%>view/vendors/bower_components/Waves/dist/waves.min.js"></script>
             <script src="<%=basePath%>view/vendors/bootstrap-growl/bootstrap-growl.min.js"></script>
             <script src="<%=basePath%>view/vendors/bower_components/bootstrap-sweetalert/lib/sweet-alert.min.js"></script>

             <!-- Placeholder for IE9 -->
             <!--[if IE 9 ]>
             <script src="<%=basePath%>vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
             <![endif]-->

             <script src="<%=basePath%>view/js/flot-charts/curved-line-chart.js"></script>
             <script src="<%=basePath%>view/js/flot-charts/line-chart.js"></script>
             <script src="<%=basePath%>view/js/charts.js"></script>

             <script src="<%=basePath%>view/js/charts.js"></script>
             <script src="<%=basePath%>view/js/functions.js"></script>
             <script src="<%=basePath%>view/js/demo.js"></script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main2'),'shine');
    var myChart2 = echarts.init(document.getElementById('main3'),'shine');
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption({
        color: ['#00BCD4', '#8BC34A', '#FF9800', '#607D8B'],
        tooltip: {
            show: true,
            trigger: 'axis',
            axisPointer: { // 坐标轴指示器，坐标轴触发有效
                type: 'line' // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        toolbox: { //可视化的工具箱
            show: true,
            feature: {
                dataView: { //数据视图
                    show: true
                },
                restore: { //重置
                    show: true
                },
                dataZoom: { //数据缩放视图
                    show: true
                },
                saveAsImage: {//保存图片
                    show: true
                },
                magicType: {//动态类型切换
                    type: ['bar', 'line']
                }
            }
        },
        title: {
            text: '产品季度销售统计'
        },
        legend: {},
        dataset: {
            // 这里指定了维度名的顺序，从而可以利用默认的维度到坐标轴的映射。
            // 如果不指定 dimensions，也可以通过指定 series.encode 完成映射，参见后文。
            dimensions: ['product', '第一季度', '第二季度', '第三季度','第四季度'],
            source: [

            ]

        },
        xAxis: {type: 'category'},
        yAxis: {},
        // Declare several bar series, each will be mapped
        // to a column of dataset.source by default.
        series: [
            {type: 'bar'},
            {type: 'bar'},
            {type: 'bar'},
            {type: 'bar'}
        ]
    });
    myChart.showLoading();
    $('#update_button').click(function () {
         //数据加载完之前先显示一段简单的loading动画
        var names=[];    //类别数组（实际用来盛放X轴坐标值）
        $.ajax({
            url:"<%=basePath%>/saleStatisticsController/saleStatisticsCharts.do",
            type:"POST",
            dataType:"json",
            contentType:"application/json; charset=utf-8",
            success:function (result) {
                if (result) {
                    for(var i=0;i<result.length;i++){
                        names.push(result[i]);    //挨个取出类别并填入类别数组
                      }
                    }
                myChart.setOption({
                    dataset: {
                     source:names
                        },

                });
                myChart.hideLoading()
            }
        })
    })
    myChart2.setOption ({
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },
        title: {
            text: '产品每月销售统计与平均销售量'
        },
        toolbox: {
            feature: {
                dataView: {show: true, readOnly: false},
                magicType: {show: true, type: ['line', 'bar']},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        legend: {
            data: ['已结款', '待发货', '平均每月销售量']
        },
        xAxis: [
            {
                type: 'category',
                data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
                axisPointer: {
                    type: 'shadow'
                }
            }
        ],
        yAxis: [
            {
                type: 'value',
                name: '销量',
                min: 0,
                max: 1000,
                interval: 100,
                axisLabel: {
                    formatter: '{value} volume'
                }
            },
            {
                type: 'value',
                name: '平均每月销售量',
                min: 0,
                max: 50,
                interval: 5,
                axisLabel: {
                    formatter: '{value} volume/day'
                }
            }
        ],
        series: [
            {
                name: '已结款',
                type: 'bar',
                data: []
            },
            {
                name: '待发货',
                type: 'bar',
                data: []
            },
            {
                name: '平均每月销售量',
                type: 'line',
                yAxisIndex: 1,
                data: []
            }
        ]
    });
    myChart2.showLoading();
    $('#update_button2').click(function () {
        //数据加载完之前先显示一段简单的loading动画
        var CAnames=[];
        var BOnames=[];
        var CAAVGnames=[]; //类别数组（实际用来盛放X轴坐标值）
        $.ajax({
            url:"<%=basePath%>/saleStatisticsController/saleStatisticsCharts2.do",
            type:"POST",
            dataType:"json",
            contentType:"application/json; charset=utf-8",
            success:function (result) {
                if (result) {
                    for(var i=0;i<result[0].length;i++){
                        CAnames.push(result[0][i]);    //挨个取出类别并填入类别数组
                    }
                    for(var i=0;i<result[1].length;i++){
                        BOnames.push(result[1][i]);    //挨个取出类别并填入类别数组
                    }
                    for(var i=0;i<result[2].length;i++){
                        CAAVGnames.push(result[2][i]);    //挨个取出类别并填入类别数组
                    }
                }
                myChart2.setOption({
                    series: [
                        {
                            name: '已结款',
                            type: 'bar',
                            data: CAnames
                        },
                        {
                            name: '待发货',
                            type: 'bar',
                            data: BOnames
                        },
                        {
                            name: '平均每月销售量',
                            type: 'line',
                            yAxisIndex: 1,
                            data: CAAVGnames
                        }
                    ]

                });
                myChart2.hideLoading()
            }
        })
    })

</script>

</body>
</html>