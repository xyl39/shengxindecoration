<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>日记编辑</title>
    <link href="${pageContext.request.contextPath}/images/shengxing_icon.png" rel="icon">
    <link href="${pageContext.request.contextPath}/css/editscenediary/editscenediary.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/editscenediary/editscenediary.js"></script>
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
                            <dd><a href="javascript:;">装修公司登录</a></dd>
                            <dd><a href="javascript:;">装修公司入住</a></dd>
                            <dd><a href="javascript:;">退出登录</a></dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item">
                        <a href="">商家中心</a>
                        <dl class="layui-nav-child nav-child">
                            <dd><a href="javascript:;">装修公司登录</a></dd>
                            <dd><a href="javascript:;">装修公司入住</a></dd>
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
                <a href="">效果图<span class="arrow-icon"></span></a>
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

<div class="main">
    <div class="main-top">
      <span class="layui-breadcrumb top-font" lay-separator=">">
          <a href="">娱乐</a>
          <a href="">八卦</a>
          <a href="">体育</a>
          <a href="">搞笑</a>
          <a href="">视频</a>
          <a href="">游戏</a>
          <a href="">综艺</a>
      </span>
    </div>
    <div class="container clearfix">
        <ul class="diary_detail_tab">
            <li class="on">
                <span>写日记</span>
            </li>
        </ul>
        <div class="write_diary">
               <form class="layui-form " action="">

                    <div class="write_diary_hd clear">
                <div class="diary_editor">
                    <div class="diary_textarea">  <!--富文本编辑器-->

                        <textarea id="demo" style="display: none;"></textarea>

                    </div>
                </div>
                <div class="write_info">
                    <div class="write_info_item">
                        <div class="info_hd">选择装修阶段
                            <em id="progress_exp">制定整体预算。选择装修风格、主材、家具、家电配饰等。寻找合适的施工方，签订合同后开工！</em>
                        </div>
                        <div class="info_bd pick_stage">
                            <div class="info_hd mt30">选择日记标签<em>用一个标签来描述你日记的内容吧~</em></div>
                            <div class="layui-collapse" lay-accordion="">
                                <div class="layui-colla-item">
                                    <h2 class="layui-colla-title">入住</h2>
                                    <div class="layui-colla-content">
                                        <ul>
                                            <li><a href="javascript:;" >前期准备</a></li>
                                            <li><a href="javascript:;" >交房验房</a></li>
                                            <li><a href="javascript:;" >前期设计</a></li>
                                            <li><a href="javascript:;" >签装修保</a></li>
                                            <li><a href="javascript:;" >开工大吉</a></li>
                                            <li><a href="javascript:;" >装修开工</a></li>
                                            <li><a href="javascript:;" >产品选购</a></li>
                                            <li><a href="javascript:;" >碎碎念</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="layui-colla-item">
                                    <h2 class="layui-colla-title">水电</h2>
                                    <div class="layui-colla-content ">
                                        <ul>
                                            <li><a href="javascript:;" >前期准备</a></li>
                                            <li><a href="javascript:;" >交房验房</a></li>
                                            <li><a href="javascript:;" >前期设计</a></li>
                                            <li><a href="javascript:;" >签装修保</a></li>
                                            <li><a href="javascript:;" >开工大吉</a></li>
                                            <li><a href="javascript:;" >装修开工</a></li>
                                            <li><a href="javascript:;" >产品选购</a></li>
                                            <li><a href="javascript:;" >碎碎念</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="layui-colla-item">
                                    <h2 class="layui-colla-title">软装</h2>
                                    <div class="layui-colla-content ">
                                        <ul>
                                            <li><a href="javascript:;" >前期准备</a></li>
                                            <li><a href="javascript:;" >交房验房</a></li>
                                            <li><a href="javascript:;" >前期设计</a></li>
                                            <li><a href="javascript:;" >签装修保</a></li>
                                            <li><a href="javascript:;" >开工大吉</a></li>
                                            <li><a href="javascript:;" >装修开工</a></li>
                                            <li><a href="javascript:;" >产品选购</a></li>
                                            <li><a href="javascript:;" >碎碎念</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="layui-colla-item">
                                    <h2 class="layui-colla-title">拆改</h2>
                                    <div class="layui-colla-content ">
                                        <ul>
                                            <li><a href="javascript:;" >前期准备</a></li>
                                            <li><a href="javascript:;" >交房验房</a></li>
                                            <li><a href="javascript:;" >前期设计</a></li>
                                            <li><a href="javascript:;" >签装修保</a></li>
                                            <li><a href="javascript:;" >开工大吉</a></li>
                                            <li><a href="javascript:;" >装修开工</a></li>
                                            <li><a href="javascript:;" >产品选购</a></li>
                                            <li><a href="javascript:;" >碎碎念</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="layui-colla-item">
                                    <h2 class="layui-colla-title">竣工安装</h2>
                                    <div class="layui-colla-content ">
                                        <ul>
                                            <li><a href="javascript:;" >前期准备</a></li>
                                            <li><a href="javascript:;" >交房验房</a></li>
                                            <li><a href="javascript:;" >前期设计</a></li>
                                            <li><a href="javascript:;" >签装修保</a></li>
                                            <li><a href="javascript:;" >开工大吉</a></li>
                                            <li><a href="javascript:;" >装修开工</a></li>
                                            <li><a href="javascript:;" >产品选购</a></li>
                                            <li><a href="javascript:;" >碎碎念</a></li>
                                        </ul>
                                    </div>
                                </div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
                    <div class="write_info_item">
                <ul class="diary_detail_tab">
                    <li class="on">
                        <span>选择日期</span>
                    </li>
                </ul>
                <div class="info_hd mb20"><em>如果是写回忆贴，可修改为日记发生当天的日期</em></div>
                <div class="layui-form">
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label">请选择时间</label>
                            <div class="layui-input-inline">
                                <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
                            </div>
                        </div>
                    </div>
                </div>

            </div>

                    <div class="upload_pic">
                <ul class="diary_detail_tab">
                    <li class="on">
                        <span>上传图片</span>
                    </li>
                </ul>
                <div class="upload_hd"><span>选择装修过程中的照片，双击删除</span></div>
                <div class="layui-upload up-imgs">
                    <button type="button" class="layui-btn" id="test2">图片上传</button>
                    <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                        预览图：
                        <div class="layui-upload-list" id="demo2"></div>

                    </blockquote>

                    <input type="checkbox"  title="本内容由我原创">

                    <button type="button" class="layui-btn" id="save">发布日记</button>
                </div>





            </div>



            </form>
        </div>
    </div>
</div>


</body>
</html>