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
    <title>圣馨家装大平台-业主装修日记</title>
    <link href="${pageContext.request.contextPath}/images/shengxing_icon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/css/shengxing_top.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/diary_detail.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/shengxing_top.js"></script>
    <script src="${pageContext.request.contextPath}/js/diary_detail.js"></script>
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
        <div class="title-breadcurmb">
            <span class="layui-breadcrumb" lay-separator=">">
                <a href="decoration_diary.jsp">装修日记</a>
                <a><cite>绿地海外滩</cite></a>
            </span>
        </div>
        <div class="diary-title">
            <!--业主日记的头像和名称-->
            <div class="author-diary-title">
                <div href="" class="author-info">
                    <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_11734928.jpg">
                    <span>绿地海外滩</span>
                </div>
            </div>
            <div class="diary-title-right">
                <div class="diary-title-name">
                    <span>89平温暖小家形成记</span>
                    <em>[16篇]</em>
                </div>
                <div class="diary-items-time">
                    <span>2019/9/19&nbsp;&nbsp;21:10:55</span>
                </div>
                <div class="info-line">
                    <span><img src="${pageContext.request.contextPath}/images/home.png">&nbsp;&nbsp;房屋信息：</span>
                    <span>78㎡</span>
                    <span>简约</span>
                    <span>半包</span>
                </div>
                <div class="info-line">
                    <span><img src="${pageContext.request.contextPath}/images/business.png">&nbsp;&nbsp;装修公司：还在选择中</span>
                </div>
                <div class="tag">
                    <ul class="tag-ul">
                        <li>
                            <a href="" class="tag-info">
                                <span>873</span>收藏
                            </a>
                        </li>
                        <li>
                            <a href="" class="tag-info">
                                <span>438</span>回复
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--日记主体-->
        <div class="main">
            <!--日记列表-->
            <div class="layui-tab layui-tab-brief" id="diary-list-title" lay-filter="docDemoTabBrief">
                <!--推荐日记-->
                <ul class="layui-tab-title" id="diary-title-tab">
                    <li class="layui-this ">业主日记 <span>16篇</span></li>
                </ul>
                <div class="layui-tab-content">
                    <!--业主日记-->
                    <div class="layui-tab-item layui-show">
                        <ul class="layui-timeline">
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis timeline-title"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">2019年8月16日</h3>
                                    <p>
                                        因为我也不懂，所以就开始临阵磨枪，上土巴兔看了很多别人家的装修日记，也看了很多别人介绍的经验教训，看到有用的就搜藏起来，以防以后遇到同样的情况。不过好在闺蜜的老公就是室内设计师，所以设计和装修公司的推荐都交给他来搞定啦。他推荐我们采用小半包，大部分东西我们自己指定品牌，可以装修公司帮我们买，也可以我们自己买，而一些零零散散的辅材就让装修公司包掉了。
                                        房子的基本情况：
                                        地点：广东 广州
                                        户型：3室1厅 一手房
                                        面积：78m²
                                        设计方案：装修公司半包 <i class="layui-icon"></i>
                                    </p>
                                    <div class="diary-items-photo">
                                        <a href="">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto01.jpg">
                                        </a>
                                    </div>
                                    <!--回复-->
                                    <div class="reply layui-collapse" lay-accordion="">
                                        <div class="layui-colla-item">
                                            <h2 class="layui-colla-title colla-title-h2">
                                                <img src="${pageContext.request.contextPath}/images/reply-count.png">&nbsp;&nbsp;3条回复
                                            </h2>
                                            <div class="layui-colla-content">  <!--显示：layui-show-->
                                                <ul class="reply-list">
                                                    <li>
                                                        <div class="reply-headphoto">
                                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_8159757.jpg">
                                                        </div>
                                                        <div class="reply-info">
                                                            <div class="reply-info-detail">
                                                                <span>wwmm520</span>
                                                                <span>2019年9月2号</span>
                                                                <button class="layui-btn goto-reply" data-method="reply">回复</button>
                                                                <!--<button data-method="notice" class="layui-btn">示范一个公告层</button>-->
                                                            </div>
                                                            <p>感觉温馨！</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="reply-headphoto">
                                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_11734928.jpg">
                                                        </div>
                                                        <div class="reply-info">
                                                            <div class="reply-info-detail">
                                                                <span>wwmm520</span>
                                                                <span>2019年9月2号</span>
                                                                <button class="layui-btn goto-reply" data-method="reply">回复</button>
                                                            </div>
                                                            <p>沙发组合现代简约。</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="reply-headphoto">
                                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_03.jpg">
                                                        </div>
                                                        <div class="reply-info">
                                                            <div class="reply-info-detail">
                                                                <span>wwmm520</span>
                                                                <span>2019年9月2号</span>
                                                                <button class="layui-btn goto-reply" data-method="reply">回复</button>
                                                            </div>
                                                            <p>沙发组合现代简约,感觉温馨！</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!--我来回复-->
                                    <div class="my-reply">
                                        <div class="reply-headphoto">
                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_8159757.jpg">
                                        </div>
                                        <form>
                                            <div class="my-reply-content">
                                                <textarea maxlength="200" cols="110" rows="4"placeholder="随便说说你的想法，或者有什么问题？和大家一起探讨吧"></textarea>
                                                <div class="send_reply">
                                                    <span>您还可以输入 200 字</span>
                                                    <input type="submit" value="我来回复">
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">2019年5月16日</h3>
                                    <p>再补几张我们挑选的家具照，包括我们的沙发、还有客餐厅的主灯～</p>
                                    <div class="diary-items-photo">
                                        <a href="">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto02.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto03.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto02.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto03.jpg">
                                        </a>
                                    </div>
                                    <!--回复-->
                                    <div class="reply layui-collapse" lay-accordion="">
                                        <div class="layui-colla-item">
                                            <h2 class="layui-colla-title colla-title-h2">
                                                <img src="${pageContext.request.contextPath}/images/reply-count.png">&nbsp;&nbsp;0条回复
                                            </h2>
                                            <div class="layui-colla-content">  <!--显示：layui-show-->
                                                <ul class="reply-list">

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!--我来回复-->
                                    <div class="my-reply">
                                        <div class="reply-headphoto">
                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_8159757.jpg">
                                        </div>
                                        <form>
                                            <div class="my-reply-content">
                                                <textarea maxlength="200" cols="110" rows="4"placeholder="随便说说你的想法，或者有什么问题？和大家一起探讨吧"></textarea>
                                                <div class="send_reply">
                                                    <span>您还可以输入 200 字</span>
                                                    <input type="submit" value="我来回复">
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">2019年5月16日</h3>
                                    <p>再补几张我们挑选的家具照，包括我们的沙发、还有客餐厅的主灯～</p>
                                    <div class="diary-items-photo">
                                        <a href="">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto02.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto03.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto02.jpg">
                                            <img src="${pageContext.request.contextPath}/images/diaryphoto/diaryphoto03.jpg">
                                        </a>
                                    </div>
                                    <!--回复-->
                                    <div class="reply layui-collapse" lay-accordion="">
                                        <div class="layui-colla-item">
                                            <h2 class="layui-colla-title colla-title-h2">
                                                <img src="${pageContext.request.contextPath}/images/reply-count.png">&nbsp;&nbsp;2条回复
                                            </h2>
                                            <div class="layui-colla-content">  <!--显示：layui-show-->
                                                <ul class="reply-list">
                                                    <li>
                                                        <div class="reply-headphoto">
                                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_8159757.jpg">
                                                        </div>
                                                        <div class="reply-info">
                                                            <div class="reply-info-detail">
                                                                <span>wwmm520</span>
                                                                <span>2019年9月2号</span>
                                                                <button class="layui-btn goto-reply" data-method="reply">回复</button>
                                                            </div>
                                                            <p>感觉温馨！</p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="reply-headphoto">
                                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_03.jpg">
                                                        </div>
                                                        <div class="reply-info">
                                                            <div class="reply-info-detail">
                                                                <span>wwmm520</span>
                                                                <span>2019年9月2号</span>
                                                                <button class="layui-btn goto-reply" data-method="reply">回复</button>
                                                            </div>
                                                            <p>感觉挺好的！</p>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!--我来回复-->
                                    <div class="my-reply">
                                        <div class="reply-headphoto">
                                            <img src="${pageContext.request.contextPath}/images/headphoto/headphoto_8159757.jpg">
                                        </div>
                                        <form>
                                            <div class="my-reply-content">
                                                <textarea maxlength="200" cols="110" rows="4"placeholder="随便说说你的想法，或者有什么问题？和大家一起探讨吧"></textarea>
                                                <div class="send_reply">
                                                    <span>您还可以输入 200 字</span>
                                                    <input type="submit" value="我来回复">
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </li>
                            <li class="layui-timeline-item">
                                <i class="layui-icon layui-timeline-axis"></i>
                                <div class="layui-timeline-content layui-text">
                                    <h3 class="layui-timeline-title">没有啦~</h3>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <!--购物清单-->
                    <!--<div class="layui-tab-item">

                    </div>-->
                </div>
            </div>

            <div class="side">
                <a href="editscenediary.jsp">
                    <div class="side-write-button side-write">
                        <img src="${pageContext.request.contextPath}/images/write-diary.png">&nbsp;写装修日记
                    </div>
                </a>
                <!--<div class="side-write-list side-write">-->
                    <!--<img src="${pageContext.request.contextPath}/images/shop-list.png">&nbsp;写购物清单-->
                <!--</div>-->
            </div>

        </div>


    </div>

    <button data-method="reply" class="layui-btn">示范一个公告层</button>


    <script>
        layui.use('layer', function(){ //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

            //触发事件
            var active = {
                    reply: function(){
                    //示范一个公告层
                    layer.open({
                        type: 1
                        ,title: false //不显示标题栏
                        ,closeBtn: false
                        ,area: ['600px','250px']
                        ,shade: 0.8
                        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                        ,btn: ['回复', '取消']
                        ,btnAlign: 'c'
                        ,moveType: 1 //拖拽模式，0或者1
                        ,content:
                            '<div class="reply-div">'+
                                '<div class="reply-headphoto replyer-info">'+
                                    '<img src="${pageContext.request.contextPath}/images/headphoto/headphoto_8159757.jpg"><span>wwmm520</span>'+
                                '</div>'+
                                '<form>'+
                                    '<div class="reply-content">'+
                                        '<textarea maxlength="200" cols="65" rows="5"placeholder="随便说说你的想法，或者有什么问题？和大家一起探讨吧"></textarea>'+
                                        '<div class="send_reply">'+
                                            '<span>您还可以输入 200 字</span>'+
                                        '</div>'+
                                    '</div>'+
                                '</form>'+
                             '</div>'
                        ,success: function(layero){
                            var btn = layero.find('.layui-layer-btn');
                            btn.find('.layui-layer-btn0').attr({
                                href: 'http://www.layui.com/'
                                ,target: '_blank'
                            });
                        }
                    });
                }

            };

            $('.layui-btn').on('click', function(){
                var othis = $(this), method = othis.data('method');
                active[method] ? active[method].call(this, othis) : '';
            });

        });
    </script>

</body>
</html>