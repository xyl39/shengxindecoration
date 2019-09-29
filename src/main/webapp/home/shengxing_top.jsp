<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>圣馨家装大平台</title>
    <link href="${pageContext.request.contextPath}/images/shengxing_icon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/css/shengxing_top.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/shengxing_top.js"></script>
</head>
<body>
    <div class="top-header-nav">
        <div class="top">
            <!--页头-->
            <div class="header-nav-first">
                <div class="nav-first">
                    <div class="nav-first-left">
                        <div class="city-switch">
                            <img src="${pageContext.request.contextPath}/images/loc.png" />
                            <span>深圳</span>
                            <a href=""><span class="nav-change">[切换]</span></a>
                        </div>
                    </div>
                    <div class="nav-first-right">
                        <div class="nav-ul">
                            <ul class="layui-nav">
                                <li class="layui-nav-item">
                                    <a href="${pageContext.request.contextPath}/login/shenxing_company_login.html" >登录</a>
                                </li>
                                <li class="layui-nav-item">
                                    <a href="${pageContext.request.contextPath}/login/shenxing_designer_regist.html">注册</a>
                                </li>
                                <li class="layui-nav-item">
                                    <a href="">
                                        <img src="${pageContext.request.contextPath}/images/msg-icon.png"/>
                                        消息
                                    </a>
                                    <dl class="layui-nav-child nav-child">
                                        <dd><a href="${pageContext.request.contextPath}/my/shengxin_personcenter.html">个人中心</a></dd>
                                        <dd><a href="javascript:;">我的装修</a></dd>
                                        <dd><a href="${pageContext.request.contextPath}/diary/decoration_diary.html">我的日记</a></dd>
                                        <dd><a href="javascript:;">退出登录</a></dd>
                                    </dl>
                                </li>
                                <li class="layui-nav-item">
                                    <a href="${pageContext.request.contextPath}/enterprise/enterprisecenter.html">商家中心</a>
                                    <dl class="layui-nav-child nav-child">
                                        <dd><a href="${pageContext.request.contextPath}/enterprise/enterpriseLogin.html">装修公司登录</a></dd>
                                        <dd><a href="${pageContext.request.contextPath}/login/shenxing_designer_regist.html">装修公司入住</a></dd>
                                        <dd><a href="javascript:;">退出登录</a></dd>
                                    </dl>
                                </li>
                                <li class="layui-nav-item">
                                    <a href="">
                                        <img src="${pageContext.request.contextPath}/images/tel-icon.png" />
                                        <span class="tel-span">咨询热线：4006-900-288</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!--下拉菜单-->
            <div class="header-nav">
                <div class="header-nav-box">
                    <img class="logo-img" src="${pageContext.request.contextPath}/images/shengxing_logo.png">
                    <ul class="layui-nav">
                        <li class="layui-nav-item">
                            <a href="" >首页</a>
                        </li>
                        <li class="layui-nav-item" id="work-picture-nav">
                            <a href="${pageContext.request.contextPath}/designsketch/xiaoguotu.html">效果图<span class="arrow-icon"></span></a>
                        </li>
                        <li class="layui-nav-item" id="business-nav">
                            <a href="">装修公司<span class="arrow-icon"></span></a>
                        </li>
                        <li class="layui-nav-item">
                            <a href="">装修日记</a>
                        </li>
                    </ul>
                    <!--搜索框-->
                    <div class="nav-search">
                        <input type="text" name="searchName" class="search-info" src="images/search.png"/>
                    </div>
                </div>
                <!--效果图下拉菜单选项-->
                <div class="work-picture-item nav-item">
                    <div class="item">
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按空间
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">客厅</a>
                                <a href="">卧室</a>
                                <a href="">餐厅</a>
                            </li>
                            <li>
                                <a href="">厨房</a>
                                <a href="">卫生间</a>
                                <a href="">阳台</a>
                            </li>
                        </ul>
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按风格
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">现在简约</a>
                                <a href="">中式现代</a>
                                <a href="">欧式豪华</a>
                            </li>
                            <li>
                                <a href="">美式经典</a>
                                <a href="">美式田园</a>
                            </li>
                        </ul>
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按户型
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">一局</a>
                                <a href="">二局</a>
                                <a href="">三局</a>
                            </li>
                            <li>
                                <a href="">四局及以上</a>
                                <a href="">复式</a>
                            </li>
                        </ul>
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按空间
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">客厅</a>
                                <a href="">卧室</a>
                                <a href="">餐厅</a>
                            </li>
                            <li>
                                <a href="">厨房</a>
                                <a href="">卫生间</a>
                                <a href="">阳台</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--家装公司下拉菜单选项-->
                <div class="business-item nav-item">
                    <div class="item">
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按服务区域
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">客厅</a>
                                <a href="">卧室</a>
                                <a href="">餐厅</a>
                            </li>
                            <li>
                                <a href="">厨房</a>
                                <a href="">卫生间</a>
                                <a href="">阳台</a>
                            </li>
                        </ul>
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按价格
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">3万以下</a>
                                <a href="">3-5万</a>
                                <a href="">5-8万</a>
                            </li>
                            <li>
                                <a href="">8-12万</a>
                                <a href="">12-18万</a>
                                <a href="">18-30万</a>
                            </li>
                        </ul>
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按类型
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">普通住宅</a>
                                <a href="">小户型</a>
                                <a href="">别墅</a>
                            </li>
                            <li>
                                <a href="">局部装修</a>
                            </li>
                        </ul>
                        <ul class="content-list">
                            <li>
                                <a class="content-list-title" href="">按风格
                                    <span class="content-list-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">简约</a>
                                <a href="">现代</a>
                                <a href="">中式</a>
                            </li>
                            <li>
                                <a href="">简欧</a>
                                <a href="">美式</a>
                                <a href="">北欧</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>

    </script>
</body>
</html>