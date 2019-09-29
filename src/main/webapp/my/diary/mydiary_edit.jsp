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
    <link href="${pageContext.request.contextPath}/css/mydiary_edit.css" rel="stylesheet">
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
                            <div class="layui-form-item form-item">
                                <a class="layui-form-label" href="../shengxin_personcenter_need1.html" style="text-align: left;width: 100px">查看方案报价</a>
                                <div class="layui-input-block">

                                </div>
                            </div>
                            <div class="layui-form-item form-item">
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
                        <div class="layui-form-item form-item">
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
                            <div class="layui-form-item form-item">
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
                        <div class="layui-form-item form-item">
                            <a class="layui-form-label" href="" style="text-align: left;">个人资料</a>
                            <div class="layui-input-block"></div>
                        </div>
                        <div class="layui-form-item form-item">
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
                        <div class="layui-form-item form-item">
                            <a class="layui-form-label" href="" style="text-align: left;">订单消息</a>
                            <div class="layui-input-block"></div>
                        </div>
                        <div class="layui-form-item form-item">
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
                            <div class="layui-form-item form-item">
                                <a class="layui-form-label" href="../shengxin_personcenter_need4.html" style="text-align: left;">效果图</a>
                                    <div class="layui-input-block"></div>
                            </div>
                            <div class="layui-form-item form-item">
                                <div class="layui-inline">
                                    <a class="layui-form-label" href="../shengxin_personcenter_need5.html" style="text-align: left;">装修日记</a>
                                    <div class="layui-input-inline"></div>
                                </div>
                            </div>
                            <div class="layui-form-item form-item">
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
    <div class="diary-eidt">
        <div class="form-content-top">
            <div class="left-form-content">
                <div class="diary-page-title">
                    <span class="js-page-title">编辑日记本</span>
                </div>
                <div class="diary-title-content js-input-item">
                    <div class="diary-title js-form-item" contenteditable="plaintext-only" name="title" placeholder="为日记取个好听的名字" type="text">北欧+后现代风格</div>
                    <div class="other-title">
                        <p>其他兔友都起什么名字</p>
                        <ul>
                            <li># 6万穷装89平温暖家</li>
                            <li># 85平混搭小窝养成记</li>
                            <li># 150平米温馨舒适简美风</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="right-form-content">
                <div class="cover-img">
                    <img alt="" src="${pageContext.request.contextPath}/images/diaryphoto/diarybg01.jpg">
                    <div class="change-cover js-cover-change">
                        <i class="img-icon"></i>
                        <p style="font-size: 16px;">更换封面图</p>
                        <p>图片尺寸不小于600*300</p>
                        <input accept="image/png, image/jpeg" class="fileInput" name="fileData" type="file">
                    </div>
                    <div class="cover-loading js-cover-loading">
                        <i class="loading-icon"></i>
                    </div>
                    <div class="cover-reupload js-cover-reupload">
                        <i class="reupload-icon"></i>
                        <p style="text-align: center;color: #fff;">重新上传</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="input-content">
            <form class="layui-form">
                <div class="input-row">
                    <div class="input-item js-input-item">
                        <label class="layui-form-label">请选择户型：<span>*</span></label>
                        <div class="layui-input-inline">
                            <select name="quiz1" class="input-space">
                                <option value="小户型" selected>小户型</option>
                                <option value="一居">一居</option>
                                <option value="二居">二居</option>
                                <option value="三居">三居</option>
                                <option value="三居">四居</option>
                                <option value="三居">复式</option>
                                <option value="三居">别墅</option>
                                <option value="三居">公寓</option>
                            </select>
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>

                    <div class="input-item space-inline">
                        <label class="layui-form-label space-label">面积：<span>*</span></label>
                        <div class="layui-input-inline">
                            <input type="tel" name="phone" autocomplete="off" class="layui-input input-space">
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>
                </div>
                <div class="input-row">
                    <div class="input-item js-input-item city-input">
                        <label class="layui-form-label">城市：<span>*</span></label>
                        <div class="layui-input-inline">
                            <select name="quiz1" class="input-space">
                                <option value="江苏省" selected>江苏省</option>
                                <option value="">浙江省</option>
                                <option value="">湖北省</option>
                                <option value="">湖南省</option>
                                <option value="">四川省</option>
                                <option value="">安徽省</option>
                                <option value="">山东省</option>
                                <option value="">河南省</option>
                            </select>
                        </div>
                        <span class="input-error"></span>
                    </div>
                    <div class="input-item js-input-item city-input">
                        <div class="layui-input-inline">
                            <select name="quiz1" class="input-space">
                                <option value="苏州市" selected>苏州市</option>
                                <option value="">杭州市</option>
                                <option value="">北京市</option>
                                <option value="">天津市</option>
                                <option value="">成都市</option>
                                <option value="">合肥市</option>
                                <option value="">济南市</option>
                                <option value="">商丘市</option>
                            </select>
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>
                    <div class="input-item js-input-item city-input">
                        <div class="layui-input-inline">
                            <select name="quiz1" class="input-space">
                                <option value="苏州市" selected>苏州市</option>
                                <option value="">杭州市</option>
                                <option value="">北京市</option>
                                <option value="">天津市</option>
                                <option value="">成都市</option>
                                <option value="">合肥市</option>
                                <option value="">济南市</option>
                                <option value="">商丘市</option>
                            </select>
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>

                </div>
                <div class="input-row">
                    <div class="input-item js-input-item">
                        <label class="layui-form-label">风格：</label>
                        <div class="layui-input-inline">
                            <select name="quiz1">
                                <option value="小户型" selected>现代</option>
                                <option value="一居">美式</option>
                                <option value="二居">简约</option>
                                <option value="三居">简欧</option>
                                <option value="三居">欧式</option>
                                <option value="三居">宜家</option>
                                <option value="三居">中式</option>
                                <option value="三居">田园</option>
                                <option value="三居">地中海</option>
                                <option value="三居">北欧</option>
                                <option value="三居">日式</option>
                                <option value="三居">新古典</option>
                                <option value="三居">东南亚</option>
                                <option value="三居">混搭</option>
                            </select>
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>
                    <div class="input-item space-inline">
                        <label class="layui-form-label space-label">预算：</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="phone" autocomplete="off" class="layui-input input-space" placeholder="请输入预算金额">
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>
                </div>
                <div class="input-row">
                    <div class="input-item name-inline">
                        <label class="layui-form-label space-label">小区名称：<span>*</span></label>
                        <div class="layui-input-inline">
                            <input type="tel" name="phone" autocomplete="off" class="layui-input input-space" placeholder="请输入小区名称">
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>
                    <div class="input-item business-inline">
                        <label class="layui-form-label space-label">装修公司：</label>
                        <div class="layui-input-inline">
                            <input type="tel" name="phone" autocomplete="off" class="layui-input input-space" placeholder="请输入公司名称">
                        </div>
                        <span class="input-error js-tips-text"></span>
                    </div>
                </div>

            </form>

        </div>

        <div>
            <a class="submit-btn js-submit" href="mydiary.jsp">保存</a>
        </div>

    </div>

</div>

<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function(){
            form.val('example', {
                "username": "贤心" // "name": "value"
                ,"password": "123456"
                ,"interest": 1
                ,"like[write]": true //复选框选中状态
                ,"close": true //开关状态
                ,"sex": "女"
                ,"desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function(){
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });
</script>
</body>
</html>