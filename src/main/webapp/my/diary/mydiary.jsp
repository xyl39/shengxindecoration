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
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>圣馨家装大平台</title>
    <link href="<%=basePath%>/images/shenxin_logo.png" rel="icon">
    <link href="<%=basePath%>/css/mydiary.css" rel="stylesheet">
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
                            <a href="">我的名称</a>
                            <dl class="layui-nav-child nav-child">
                                <dd><a href="../shengxin_personcenter.html">个人中心</a></dd>
                                <dd><a href="javascript:;">账号设置</a></dd>
                                <dd><a href="javascript:;">退出</a></dd>
                            </dl>
                        </li>
                        <li class="layui-nav-item">

                            <a href="">
                                <img src="${pageContext.request.contextPath}/images/msg-icon.png"/>
                                消息
                            </a>
                            <dl class="layui-nav-child nav-child">
                                <dd><a href="javascript:;">我的装修</a></dd>
                                <dd><a href="../diary/decoration_diary.html">装修日记</a></dd>
                                <dd><a href="javascript:;">系统消息</a></dd>
                            </dl>
                        </li>

                        <li class="layui-nav-item">
                            <a href="" >我要装修</a>
                        </li>
                        <li class="layui-nav-item">
                            <a href="">装修公司合作</a>
                        </li>

                        <li class="layui-nav-item">
                            <a href="">
                                <img src="${pageContext.request.contextPath}/images/tel-icon.png" />
                                <span class="tel-span">咨询热线：4006-888-888</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>








<!--下拉菜单-->
<!--<div class="header-nav">-->

<!--</div>-->
<div class="header-center">
    <div class="header-center-container">
                <a href="${pageContext.request.contextPath}/home/shengxing_home.jsp" class="">
                    <span class="hcc-logo">

                    </span>
                </a>
                 <span class="hcc_title">
                    个人中心
                </span>
    </div>
</div>

<div class="body-center">
    <div class="body-center-box">
        <div class="layui-inline" style="width: 164px; height: 1072px; padding-top: 10px;">
            <div class="layui-collapse">
                <div class="layui-person">
                    个人中心首页
                </div>

                <div class="layui-colla-item">
                    <h2 class="layui-colla-title">我的装修需求</h2>
                    <div class="layui-colla-content layui-show">
                        <form class="layui-form">
                            <div class="layui-form-item">
                                <a class="layui-form-label" href="../shengxin_personcenter_need1.html" style="text-align: left;width: 100px">查看方案报价</a>
                                <div class="layui-input-block">

                                </div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <a class="layui-form-label" href="../shengxin_personcenter_need2.html" style="text-align: left;width:100px">查看我的评价</a>
                                    <div class="layui-input-inline"></div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


                <div class="layui-colla-item">
                    <h2 class="layui-colla-title">我的订单管理</h2>
                    <div class="layui-colla-content layui-show">
                    <form class="layui-form">
                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <a class="layui-form-label" href="../shengxin_personcenter_need3.html" style="text-align: left;">意向金订单</a>
                                <div class="layui-input-inline"></div>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>


                <div class="layui-colla-item">
                    <h2 class="layui-colla-title">我的日记本</h2>
                    <div class="layui-colla-content layui-show">
                        <form class="layui-form">
                            <div class="layui-form-item">
                                <a class="layui-form-label form-label-a" href="mydiary.jsp" style="text-align: left;">我的日记本</a>
                                <div class="layui-input-block"></div>
                            </div>

                        </form>
                    </div>
                </div>


            </div>
            <div class="layui-collapse">
                <div class="layui-colla-item">
                    <h2 class="layui-colla-title">我的个人资料</h2>
                    <div class="layui-colla-content layui-show">
                        <form class="layui-form">
                        <div class="layui-form-item">
                            <a class="layui-form-label" href="" style="text-align: left;">个人资料</a>
                            <div class="layui-input-block"></div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <a class="layui-form-label" href="" style="text-align: left;">修改密码</a>
                                <div class="layui-input-inline"></div>
                            </div>
                            <div class="layui-inline">
                                <a class="layui-form-label" href="" style="text-align: left;">账号安全</a>
                                <div class="layui-input-inline"></div>
                            </div>
                        </div>
                    </form>
                    </div>
                </div>
                <div class="layui-colla-item">
                    <h2 class="layui-colla-title">消息中心</h2>
                    <div class="layui-colla-content layui-show">
                    <form class="layui-form">
                        <div class="layui-form-item">
                            <a class="layui-form-label" href="" style="text-align: left;">订单消息</a>
                            <div class="layui-input-block"></div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-inline">
                                <a class="layui-form-label" href="" style="text-align: left;">系统消息</a>
                                <div class="layui-input-inline"></div>
                            </div>
                        </div>
                    </form>
                </div>
                </div>
                <div class="layui-collapse">
                    <div class="layui-colla-item">
                        <h2 class="layui-colla-title">我的收藏</h2>
                        <div class="layui-colla-content layui-show">
                        <form class="layui-form">
                            <div class="layui-form-item">
                                <a class="layui-form-label" href="../shengxin_personcenter_need4.html" style="text-align: left;">效果图</a>
                                    <div class="layui-input-block"></div>
                            </div>
                            <div class="layui-form-item">
                                <div class="layui-inline">
                                    <a class="layui-form-label" href="../shengxin_personcenter_need5.html" style="text-align: left;">装修日记</a>
                                    <div class="layui-input-inline"></div>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                    <a class="layui-form-label" href="../shengxin_personcenter_need6.html" style="text-align: left;">装修公司</a>
                                    <div class="layui-input-block"></div>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </div>

    <!--主要显示数据-->
    <div class="mydiary">
        <div class="layui-collapse" lay-accordion="">
            <div class="layui-colla-item">
                <div class="layui-colla-title colla-title-h2">
                    <div class="mydiary-title">
                        <a class="mydiary-title-a">北欧+后现代风格</a>
                        <ul class="tag-list">
                            <li class="collect-scene">
                                <a>
                                    <img class="collect-img" src="${pageContext.request.contextPath}/images/collect.png">
                                    <span>12</span>
                                </a>
                            </li>
                            <li class="count-reply">
                                <a>
                                    <img src="${pageContext.request.contextPath}/images/reply-count.png">
                                    <span>2</span>
                                </a>
                            </li>
                        </ul>
                        <div class="create-time">
                            <span>创建时间：2019/9/22</span>
                            <span>更新时间：2019/9/22</span>
                        </div>
                    </div>

                </div>
                <div class="layui-colla-content mydiary-content layui-show">
                    <div class="info-line">
                        <span>房屋信息：</span>
                        <span>248㎡</span>
                        <span>混搭</span>
                        <a href="mydiary_edit.jsp" class="mydiary-edit">编辑</a>
                    </div>
                    <div class="info-line">
                        <span>所在小区：张家港市 江苏省苏州市</span>
                    </div>
                    <div class="info-line">
                        <span>装修公司：还在选择中</span>
                    </div>
                    <div class="info-line all-mydiary">
                        <span>全部日记：0篇</span>
                        <a href="mydiary_edit.jsp" class="write-mydiary">续写日记</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="layui-collapse" lay-accordion="">
            <div class="layui-colla-item">
                <div class="layui-colla-title colla-title-h2">
                    <div class="mydiary-title">
                        <a class="mydiary-title-a">北欧+后现代风格</a>
                        <ul class="tag-list">
                            <li class="collect-scene">
                                <a>
                                    <img class="collect-img" src="${pageContext.request.contextPath}/images/collect.png">
                                    <span>12</span>
                                </a>
                            </li>
                            <li class="count-reply">
                                <a>
                                    <img src="${pageContext.request.contextPath}/images/reply-count.png">
                                    <span>2</span>
                                </a>
                            </li>
                        </ul>
                        <div class="create-time">
                            <span>创建时间：2019/9/22</span>
                            <span>更新时间：2019/9/22</span>
                        </div>
                    </div>

                </div>
                <div class="layui-colla-content mydiary-content layui-show">
                    <div class="info-line">
                        <span>房屋信息：</span>
                        <span>248㎡</span>
                        <span>混搭</span>
                        <a href="mydiary_edit.jsp" class="mydiary-edit">编辑</a>
                    </div>
                    <div class="info-line">
                        <span>所在小区：张家港市 江苏省苏州市</span>
                    </div>
                    <div class="info-line">
                        <span>装修公司：还在选择中</span>
                    </div>
                    <div class="info-line all-mydiary">
                        <span>全部日记：0篇</span>
                        <a href="${pageContext.request.contextPath}/diary/editscenediary.jsp" class="write-mydiary">续写日记</a>
                    </div>
                </div>
            </div>
        </div>

    </div>

</div>


</body>
</html>