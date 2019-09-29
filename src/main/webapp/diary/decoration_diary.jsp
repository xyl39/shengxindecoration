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
    <title>圣馨家装大平台-装修日记</title>
    <link href="${pageContext.request.contextPath}/images/shengxing_icon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/css/shengxing_top.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/decoration_diary.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/shengxing_top.js"></script>
    <script src="${pageContext.request.contextPath}/js/decoration_diary.js"></script>
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
                                    <a href="" >登录</a>
                                </li>
                                <li class="layui-nav-item">
                                    <a href="">注册</a>
                                </li>
                                <li class="layui-nav-item">
                                    <a href="">
                                        <img src="${pageContext.request.contextPath}/images/msg-icon.png"/>
                                        消息
                                    </a>
                                    <dl class="layui-nav-child nav-child">
                                        <dd><a href="${pageContext.request.contextPath}/my/shengxin_personcenter.html">个人中心</a></dd>
                                        <dd><a href="javascript:;">我的装修</a></dd>
                                        <dd><a href="decoration_diary.jsp">我的日记</a></dd>
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
                            <a href="${pageContext.request.contextPath}/home/shengxing_home.jsp" >首页</a>
                        </li>
                        <li class="layui-nav-item" id="work-picture-nav">
                            <a href="${pageContext.request.contextPath}/designsketch/xiaoguotu.html">效果图<span class="arrow-icon"></span></a>
                        </li>
                        <li class="layui-nav-item" id="business-nav">
                            <a href="${pageContext.request.contextPath}/enterprise/enterprise.html">装修公司<span class="arrow-icon"></span></a>
                        </li>
                        <li class="layui-nav-item">
                            <a href="decoration_diary.jsp">装修日记</a>
                        </li>
                    </ul>
                    <!--搜索框-->
                    <div class="nav-search">
                        <input type="text" name="searchName" class="search-info" src="${pageContext.request.contextPath}/images/search.png"/>
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
    <!--主体部分-->
        <div class="container-main">
            <div class="main">
                <!--日记类型选项-->
                <div class="zgs-select-type">
                    <div class="layui-tab" lay-filter="demo" lay-allowclose="true">
                        <a><span class="title-all select-all">全部日记&nbsp;&nbsp;</span></a><img src="${pageContext.request.contextPath}/images/arrow-right.png">
                        <ul class="style-title">
                            <li></li>
                        </ul>
                    </div>
                    <div class="select-type-line"></div>
                    <div class="zgs_st">
                        <dl class="zgs_st_dl">
                            <dt>风格</dt>
                            <dd class="site-demo-button" id="select-style">
                                <button id="简约">简约</button>
                                <button id="现代">现代</button>
                                <button id="中式">中式</button>
                                <button id="欧式">欧式</button>
                                <button id="美式">美式</button>
                                <button id="田园">田园</button>
                                <button id="新古典">新古典</button>
                                <button id="混搭">混搭</button>
                                <button id="地中海">地中海</button>
                                <button id="东南亚">东南亚</button>
                                <button id="日式">日式</button>
                                <button id="北欧">北欧</button>
                                <button id="简欧">简欧</button>
                            </dd>
                        </dl>
                    </div>
                    <div class="zgs_st">
                        <dl class="zgs_st_dl">
                            <dt>面积</dt>
                            <dd class="site-demo-button" id="select-space">
                                <button>60㎡以下</button>
                                <button>60-80㎡</button>
                                <button>80-100㎡</button>
                                <button>100-120㎡</button>
                                <button>120-150㎡</button>
                                <button>150㎡以上</button>
                            </dd>
                        </dl>
                    </div>
                    <div class="zgs_st">
                        <dl class="zgs_st_dl">
                            <dt>城市</dt>
                            <dd class="site-demo-button" id="select-city">
                                <button>北京</button>
                                <button>上海</button>
                                <button>广州</button>
                                <button>深圳</button>
                                <button>南京</button>
                                <button>苏州</button>
                                <button>杭州</button>
                                <button>合肥</button>
                                <button>成都</button>
                                <button>无锡</button>
                                <button>天津</button>
                                <button>郑州</button>
                            </dd>
                        </dl>
                    </div>
                </div>
                <!--日记列表-->
                <div class="layui-tab layui-tab-brief" id="diaty-title" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title" id="diary-title-tab">
                        <li class="layui-this ">推荐日记</li>
                        <li>最新日记</li>
                    </ul>
                    <!--推荐日记-->
                    <div class="layui-tab-content" style="height: 100px;">
                        <div class="layui-tab-item layui-show">
                            <!--日记-->
                            <div class="diary-items">
                                <!--日记作者头像和名称-->
                                <div class="author-info">
                                    <a href="${pageContext.request.contextPath}/diary/100001" class="diary-author">
                                        <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_11734928.jpg">
                                        <span>绿地海外滩</span>
                                    </a>
                                </div>
                                <!--日记详情-->
                                <div class="author-diary">
                                    <div class="author-diary-title">
                                        <a href="${pageContext.request.contextPath}/diary/100001" class="diary-title-a">
                                            <span>89平温暖小家形成记</span>
                                            <em>[1篇]</em>
                                        </a>
                                        <ul class="tag-list">
                                            <li class="collect-scene">
                                                <a>
                                                    <img class="collect-img" src="${pageContext.request.contextPath}/images/collect.png">
                                                    <span>12</span>
                                                </a>
                                            </li>
                                            <li class="count-reply">
                                                <a href="">
                                                    <img src="${pageContext.request.contextPath}/images/reply-count.png">
                                                    <span>2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="diary_items_tag">
                                        <a href="" class="tag-word shop-list">购物清单：¥9989.0</a>
                                        <a href="" class="tag-word">宁波市</a>
                                        <span class="tag-word">89㎡</span>
                                        <span class="tag-word">北欧</span>
                                    </div>
                                    <div class="diary-items-text">
                                        <a href="diary_detail.jsp">
                                            通过土巴兔装修平台推荐了三家装饰公司，然后自己另外还找了两家装饰公司，预约量房，
                                            然后一家一家公司的看设计方案，了解公司，还有考察设计师的设计理念和能力，
                                            了解装修材料，还有装修预算，一轮比较下来觉得还是...
                                        </a>
                                    </div>
                                    <div class="diary-items-photo">
                                        <a href="diary_detail.jsp">
                                            <span>共15张</span>
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                        </a>
                                    </div>
                                    <div class="diary-items-time">
                                        <span>发布时间： 2019/9/19&nbsp;&nbsp;21:10:55</span>
                                    </div>
                                </div>
                            </div>
                            <!--日记-->
                            <div class="diary-items">
                                <!--日记作者头像和名称-->
                                <div class="author-info">
                                    <a href="" class="diary-author">
                                        <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_11734928.jpg">
                                        <span>绿地海外滩</span>
                                    </a>
                                </div>
                                <!--日记详情-->
                                <div class="author-diary">
                                    <div class="author-diary-title">
                                        <a href="" class="diary-title-a">
                                            <span>89平温暖小家形成记</span>
                                            <em>[1篇]</em>
                                        </a>
                                        <ul class="tag-list">
                                            <li class="collect-scene">
                                                <a>
                                                    <img class="collect-img" src="${pageContext.request.contextPath}/images/collect.png">
                                                    <span>12</span>
                                                </a>
                                            </li>
                                            <li class="count-reply">
                                                <a href="">
                                                    <img src="${pageContext.request.contextPath}/images/reply-count.png">
                                                    <span>2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="diary_items_tag">
                                        <a href="" class="tag-word shop-list">购物清单：¥9989.0</a>
                                        <a href="" class="tag-word">宁波市</a>
                                        <span class="tag-word">89㎡</span>
                                        <span class="tag-word">北欧</span>
                                    </div>
                                    <div class="diary-items-text">
                                        <a href="">
                                            通过土巴兔装修平台推荐了三家装饰公司，然后自己另外还找了两家装饰公司，预约量房，
                                            然后一家一家公司的看设计方案，了解公司，还有考察设计师的设计理念和能力，
                                            了解装修材料，还有装修预算，一轮比较下来觉得还是...
                                        </a>
                                    </div>
                                    <div class="diary-items-photo">
                                        <a href="">
                                            <span>共15张</span>
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                        </a>
                                    </div>
                                    <div class="diary-items-time">
                                        <span>发布时间： 2019/9/19&nbsp;&nbsp;21:10:55</span>
                                    </div>
                                </div>
                            </div>
                            <!--日记-->
                            <div class="diary-items">
                                <!--日记作者头像和名称-->
                                <div class="author-info">
                                    <a href="" class="diary-author">
                                        <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_11734928.jpg">
                                        <span>绿地海外滩</span>
                                    </a>
                                </div>
                                <!--日记详情-->
                                <div class="author-diary">
                                    <div class="author-diary-title">
                                        <a href="" class="diary-title-a">
                                            <span>89平温暖小家形成记</span>
                                            <em>[1篇]</em>
                                        </a>
                                        <ul class="tag-list">
                                            <li class="collect-scene">
                                                <a>
                                                    <img class="collect-img" src="${pageContext.request.contextPath}/images/collect.png">
                                                    <span>12</span>
                                                </a>
                                            </li>
                                            <li class="count-reply">
                                                <a href="">
                                                    <img src="${pageContext.request.contextPath}/images/reply-count.png">
                                                    <span>2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="diary_items_tag">
                                        <a href="" class="tag-word shop-list">购物清单：¥9989.0</a>
                                        <a href="" class="tag-word">宁波市</a>
                                        <span class="tag-word">89㎡</span>
                                        <span class="tag-word">北欧</span>
                                    </div>
                                    <div class="diary-items-text">
                                        <a href="">
                                            通过土巴兔装修平台推荐了三家装饰公司，然后自己另外还找了两家装饰公司，预约量房，
                                            然后一家一家公司的看设计方案，了解公司，还有考察设计师的设计理念和能力，
                                            了解装修材料，还有装修预算，一轮比较下来觉得还是...
                                        </a>
                                    </div>
                                    <div class="diary-items-photo">
                                        <a href="">
                                            <span>共15张</span>
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                        </a>
                                    </div>
                                    <div class="diary-items-time">
                                        <span>发布时间： 2019/9/19&nbsp;&nbsp;21:10:55</span>
                                    </div>
                                </div>
                            </div>


                        </div>

                        <!--最新日记-->
                        <div class="layui-tab-item">
                            <!--日记-->
                            <div class="diary-items">
                                <!--日记作者头像和名称-->
                                <div class="author-info">
                                    <a href="" class="diary-author">
                                        <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_8159757.jpg">
                                        <span>绿地海外滩</span>
                                    </a>
                                </div>
                                <!--日记详情-->
                                <div class="author-diary">
                                    <div class="author-diary-title">
                                        <a href="" class="diary-title-a">
                                            <span>89平温暖小家形成记</span>
                                            <em>[1篇]</em>
                                        </a>
                                        <ul class="tag-list">
                                            <li class="collect-scene">
                                                <a>
                                                    <img class="collect-img" src="${pageContext.request.contextPath}/images/collect.png">
                                                    <span>12</span>
                                                </a>
                                            </li>
                                            <li class="count-reply">
                                                <a href="">
                                                    <img src="${pageContext.request.contextPath}/images/reply-count.png">
                                                    <span>2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="diary_items_tag">
                                        <a href="" class="tag-word shop-list">购物清单：¥9989.0</a>
                                        <a href="" class="tag-word">宁波市</a>
                                        <span class="tag-word">89㎡</span>
                                        <span class="tag-word">北欧</span>
                                    </div>
                                    <div class="diary-items-text">
                                        <a href="">
                                            通过土巴兔装修平台推荐了三家装饰公司，然后自己另外还找了两家装饰公司，预约量房，
                                            然后一家一家公司的看设计方案，了解公司，还有考察设计师的设计理念和能力，
                                            了解装修材料，还有装修预算，一轮比较下来觉得还是...
                                        </a>
                                    </div>
                                    <div class="diary-items-photo">
                                        <a href="">
                                            <span>共15张</span>
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                        </a>
                                    </div>
                                    <div class="diary-items-time">
                                        <span>发布时间： 2019/9/19&nbsp;&nbsp;21:10:55</span>
                                    </div>
                                </div>
                            </div>
                            <!--日记-->
                            <div class="diary-items">
                                <!--日记作者头像和名称-->
                                <div class="author-info">
                                    <a href="" class="diary-author">
                                        <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_11734928.jpg">
                                        <span>绿地海外滩</span>
                                    </a>
                                </div>
                                <!--日记详情-->
                                <div class="author-diary">
                                    <div class="author-diary-title">
                                        <a href="" class="diary-title-a">
                                            <span>89平温暖小家形成记</span>
                                            <em>[1篇]</em>
                                        </a>
                                        <ul class="tag-list">
                                            <li class="collect-scene">
                                                <a>
                                                    <img class="collect-img" src="${pageContext.request.contextPath}/images/collect.png">
                                                    <span>12</span>
                                                </a>
                                            </li>
                                            <li class="count-reply">
                                                <a href="">
                                                    <img src="${pageContext.request.contextPath}/images/reply-count.png">
                                                    <span>2</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="diary_items_tag">
                                        <a href="" class="tag-word shop-list">购物清单：¥9989.0</a>
                                        <a href="" class="tag-word">宁波市</a>
                                        <span class="tag-word">89㎡</span>
                                        <span class="tag-word">北欧</span>
                                    </div>
                                    <div class="diary-items-text">
                                        <a href="">
                                            通过土巴兔装修平台推荐了三家装饰公司，然后自己另外还找了两家装饰公司，预约量房，
                                            然后一家一家公司的看设计方案，了解公司，还有考察设计师的设计理念和能力，
                                            了解装修材料，还有装修预算，一轮比较下来觉得还是...
                                        </a>
                                    </div>
                                    <div class="diary-items-photo">
                                        <a href="">
                                            <span>共15张</span>
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                        </a>
                                    </div>
                                    <div class="diary-items-time">
                                        <span>发布时间： 2019/9/19&nbsp;&nbsp;21:10:55</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="side">
                <a href="editscenediary.jsp">
                    <div class="side-write-button side-write">
                        <img src="${pageContext.request.contextPath}/images/write-diary.png">&nbsp;写装修日记
                    </div>
                </a>
                <!--<div class="side-write-list side-write">
                    <img src="${pageContext.request.contextPath}/images/shop-list.png">&nbsp;写购物清单
                </div>-->
            </div>
        </div>



    <script>
        $(document).ready(function(){
            $(".select-all").click(function (){
                $("#selected-style").remove();
                $("#selected-city").remove();
                $("#selected-space").remove();
            })

            /*风格*/
            $("#select-style button").click(function () {
                $(this).addClass("selected").siblings().removeClass("selected");//当前元素加上这个class 兄弟元素去掉这个class
                console.log($(this).hasClass("select-all"));
                if ($(this).hasClass("select-all")) {//查看 当前点击的 是否包含 select-all 这个css类
                    $("#selected-style").remove();
                    $("#selected-city").remove();
                    $("#selected-space").remove();
                } else {
                    var copyThisA = $(this).clone();
                    console.log($(this));
                    console.log($("#selected-style").length);
                    if ($("#selected-style").length > 0) {
                        $("#selected-style").html($(this).text());
                    } else {
                        $(".style-title li").append(copyThisA.attr("id", "selected-style"));
                    }
                }
            });

            /*面积*/
            $("#select-space button").click(function () {
                $(this).addClass("selected").siblings().removeClass("selected");
                if ($(this).hasClass("select-all")) {
                    $("#selected-style").remove();
                    $("#selected-city").remove();
                    $("#selected-space").remove();
                } else {
                    var copyThisB = $(this).clone();
                    console.log($(this));
                    if ($("#selected-space").length > 0) {
                        $("#selected-space").html($(this).text());
                    } else {
                        $(".style-title li").append(copyThisB.attr("id", "selected-space"));
                    }
                }
            });

            /*城市*/
            $("#select-city button").click(function () {
                $(this).addClass("selected").siblings().removeClass("selected");
                if ($(this).hasClass("select-all")) {
                    $("#selected-style").remove();
                    $("#selected-city").remove();
                    $("#selected-space").remove();
                } else {
                    var copyThisC = $(this).clone();
                    console.log($(this));
                    if ($("#selected-city").length > 0) {
                        $("#selected-city").html($(this).text());
                    } else {
                        $(".style-title li").append(copyThisC.attr("id", "selected-city"));
                    }
                }
            });
            $("#selected-style").live("click", function () {
                $(this).remove();
                $("#select-style .selected").removeClass("selected");
            });

            $("#selected-space").live("click", function () {
                $(this).remove();
                $("#select-space .selected").removeClass("selected");
            });

            $("#selected-city").live("click", function () {
                $(this).remove();
                $("#select-city .selected").removeClass("selected");
            });

        });
    </script>
</body>
</html>