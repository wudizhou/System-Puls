<%--
  Created by IntelliJ IDEA.
  User: wudzh
  Date: 2020/1/23
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<!--[if IE 9 ]><html class="ie9"><![endif]-->
<head>
    <base href="<%=basePath%>" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Material Admin</title>
    <link rel="shortcut icon" href="#" />
    <!-- Vendor CSS -->
    <link href="<%=basePath%>view/vendors/bower_components/animate.css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>view/vendors/bower_components/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">

    <!-- CSS -->
    <link href="<%=basePath%>view/css/app.min.1.css" rel="stylesheet">
    <link href="<%=basePath%>view/css/app.min.2.css" rel="stylesheet">
    <style>
        #foot {
            position:fixed;
            bottom:0;
            width:100%;
        }
    </style>
</head>

<body class="login-content">
<!-- Login -->
<div class="lc-block toggled" id="l-login">
    <form method="post" action="<%=basePath%>loginController/login.do">
        <font color="red">${message }</font>
        <div class="input-group m-b-20" ></div>
    <div class="input-group m-b-20">
        <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
        <div class="fg-line">
            <input type="text" class="form-control" placeholder="Username" name="username" >
        </div>
    </div>

    <div class="input-group m-b-20">
        <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
        <div class="fg-line">
            <input type="password" class="form-control" placeholder="Password" name="password">
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="checkbox">
        <label>
            <input type="checkbox" name="rememberMe" value="1">
            <i class="input-helper"></i>
             Remember
        </label>
    </div>
        <button href="" class="btn btn-login btn-danger btn-float" type="submit"><i class="zmdi zmdi-arrow-forward"></i></button>
    </form>
    <ul class="login-navigation">
        <li data-block="#l-register" class="bgm-red">Register</li>
        <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
    </ul>
</div>

<!-- Register -->
<div class="lc-block" id="l-register">
    <form id="up2" action="<%=basePath%>/personController/adduser.do" title="" class="form-group" method="post">
        <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
            <div class="fg-line">
                <input id="account2" name="account2"type="text" class="form-control" placeholder="请输入登录账号名" oninput="checkinput('account2')">
                <div id="account2-tips"></div><div style="display: none"><input value="false" id="account2-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-face"></i></span>
            <div class="fg-line">
                <input id="name" name="name"type="text" class="form-control" placeholder="请输入真实姓名" oninput="checkinput('name')">
                <div id="name-tips"></div><div style="display: none"><input value="false" id="name-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-phone-end"></i></span>
            <div class="fg-line">
                <input id="phone" name="phone"type="text" class="form-control" placeholder="请输入座机电话" oninput="checkinput('phone')">
                <div id="phone-tips"></div><div style="display: none"><input value="false" id="phone-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-smartphone-android"></i></span>
            <div class="fg-line">
                <input id="mobile" name="mobile"type="text" class="form-control" placeholder="请输入手机号码" oninput="checkinput('mobile')">
                <div id="mobile-tips"></div><div style="display: none"><input value="false" id="mobile-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
            <div class="fg-line">
                <input id="email2" name="email2"type="email" class="form-control" placeholder="请输入邮箱地址"oninput="checkinput('email2')">
                <div id="email2-tips"></div><div style="display: none"><input value="false" id="email2-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
            <div class="fg-line">
                <input id="password2" name="password2" type="password" class="form-control" placeholder="请输入新密码" oninput="checkinput('password2')">
                <div id="password2-tips"></div><div style="display: none"><input value="false" id="password2-check"></div>
            </div>
        </div>
        <button href="" class="btn btn-login btn-danger btn-float" type="submit"><i class="zmdi zmdi-arrow-forward"></i></button>
    </form>
    <div class="clearfix"></div>
    <div class="checkbox">
        <label>
            <input type="checkbox" value="">
            <i class="input-helper"></i>
            Accept the license agreement
        </label>
    </div>
    <ul class="login-navigation">
        <li data-block="#l-login" class="bgm-green">Login</li>
        <li data-block="#l-forget-password" class="bgm-orange">Forgot Password?</li>
    </ul>
</div>

<!-- Forget Password -->
<div class="lc-block" id="l-forget-password">
    <form id="UP" action="" title="找回密码" class="form-group" method="post">
        <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
            <div class="fg-line">
                <input id="account" name="account"type="text" class="form-control" placeholder="请输入账号" oninput="checkinput('account')">
                <div id="account-tips"></div><div style="display: none"><input value="false" id="account-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-email"></i></span>
            <div class="fg-line">
                <input id="email" name="email"type="email" class="form-control" placeholder="请输入邮箱地址"oninput="checkinput('email')">
                <div id="email-tips"></div><div style="display: none"><input value="false" id="email-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-font"></i></span>
            <div class="fg-line">
                <input id="captcha" name="captcha"  class="form-control" placeholder="请输入验证码"oninput="checkinput('captcha')">
                <div id="captcha-tips"></div><div style="display: none"><input value="false" id="captcha-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button"class="btn btn-default btn-icon-text"id="get-captcha"value=""><i class="zmdi zmdi-apps"></i>获取验证码</button>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
            <div class="fg-line">
                <input id="password" name="password" type="password" class="form-control" placeholder="请输入新密码" oninput="checkinput('password')" onfocus="$('#confirm-password').val('')">
                <div id="password-tips"></div><div style="display: none"><input value="false" id="password-check"></div>
            </div>
        </div>
        <div class="input-group m-b-20">
            <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
            <div class="fg-line">
                <input id="confirm-password" name="confirm-password" type="password" class="form-control" placeholder="请再次确认密码" oninput="checkinput('confirm-password')">
                <div id="confirm-password-tips"></div><div style="display: none"><input value="false" id="confirm-password-check"></div>
            </div>
        </div>
    </form>
    <button href="" id="submit-btn"class="btn btn-login btn-danger btn-float" type="submit"><i class="zmdi zmdi-arrow-forward"></i></button>
    <ul class="login-navigation">
        <li data-block="#l-login" class="bgm-green">Login</li>
        <li data-block="#l-register" class="bgm-red">Register</li>
    </ul>
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

<script src="<%=basePath%>view/vendors/bower_components/Waves/dist/waves.min.js"></script>

<!-- Placeholder for IE9 -->
<!--[if IE 9 ]>
<script src="<%=basePath%>view/vendors/bower_components/jquery-placeholder/jquery.placeholder.min.js"></script>
<![endif]-->

<script src="<%=basePath%>view/js/functions.js"></script>
<script>
<!--邮箱发送异步提交-->
        $("#get-captcha").click(function () {
            if($("#email").val()==""){
                alert("邮箱不能为空");
                $("#email").focus();
                return false;
            } else if($("#email").val().indexOf('@')=='-1'||$("#email").val().indexOf('.com')=='-1'){
                alert("请检查邮箱格式是否正确")
            }else{
                $.ajax({
                    url:'<%=basePath%>/personController//checkemail.do',
                    dataType : "JSON",
                    type : "GET",
                    data:{"email":$("#email").val()},
                    success:function (json) {
                        if(json.success=="success"){
                            $("#get-captcha").attr("disabled", true);
                            $("#get-captcha").val("发送中...");
                            $.ajax({
                                url:'<%=basePath%>/email/send.do',
                                dataType : "JSON",
                                type : "GET",
                                data:{"email":$("#email").val()},
                                success:function (json) {
                                    if(json.success=="success"){
                                        alert("验证码发送成功")
                                        var count = 60;
                                        var countdown = setInterval(CountDown, 1000);
                                        function CountDown() {
                                            $("#get-captcha").attr("disabled", true);
                                            $("#get-captcha").val(count + "s");
                                            if (count == 0) {
                                                $("#get-captcha").val("重新获取验证码").removeAttr("disabled");
                                                clearInterval(countdown);
                                                $.ajax({
                                                    url : "<%=basePath%>/personController/deletecaptcha.do",
                                                    dataType : "JSON",
                                                    type : "POST",
                                                    success:function (json) {
                                                        if(json.success=="success"){
                                                            alert("获取验证码失效，请重新获取")
                                                        }
                                                    }
                                                })
                                             }
                                            count--;
                                        }
                                    }
                                },error:function () {
                                    alert("获取验证码失败")
                                    $("#get-captcha").val("重新获取验证码").removeAttr("disabled");
                                }
                            })
                        }else{
                            alert("该邮箱不能获取验证码")
                        }
                    }})
            }
        });

        $("#submit-btn").click(function () {
            $.ajax({
                url:"<%=basePath%>/personController/finduser.do",
                data:{"loginName":$("#account").val()},
                dataType:"JSON",
                type:"GET",
                success:function(json){
                    if(json.success!="success"){
                        alert("没有该账号");
                        return false;
                    }else{
                        $.ajax({
                            url:"<%=basePath%>/personController/checkcaptcha.do",
                            data:{"captcha":$("#captcha").val()},
                            dataType:"JSON",
                            type:"GET",
                            success:function(json){
                                if(json.success=="success"){
                                    alert("修改成功")
                                    var form = document.getElementById("UP");
                                    form.action = "<%=basePath%>/personController/updatepassword.do";
                                    form.method = "POST";
                                    form.submit();
                                }else{
                                    alert("验证码不正确");
                                }
                            }
                        })
                    }
                }
            })
         });
        function checkinput(id){
            if($("#"+id+"").val()==""){
                $("#"+id+"-tips").html("");
                $("#"+id+"-tips").append("<h5 style='color:red'>不能为空！</h5>");
                $("#"+id+"-check").val("false");
            }else{
                if(id=='confirm-password'){
                    if($("#"+id+"").val()!=$("#password").val()){
                        $("#"+id+"-tips").html("");
                        $("#"+id+"-tips").append("<h5 style='color:red'>两次密码不正确</h5>");
                        $("#"+id+"-check").val("false");
                    }else{
                        $("#"+id+"-tips").html("");
                        $("#"+id+"-check").val("true");}
                }else{
                    $("#"+id+"-tips").html("");
                    $("#"+id+"-check").val("true");
                }
            }
            if($("#account-check").val()=="true"&&$("#password-check").val()=="true"&&$("#email-check").val()=="true"&&$("#confirm-password-check").val()=="true"&&$("#captcha-check").val()=="true"){
                $("#submit-btn").removeAttr("disabled");
            }else{
                $("#submit-btn").attr("disabled", true);
            }
         }
</script>
</body>
</html>
