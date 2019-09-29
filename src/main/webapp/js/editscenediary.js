/**
 * Created by Administrator on 2019/9/24.
 */
/*下拉菜单监听事件*/
layui.use('element', function(){
    /*顶部导航 滚动时定位在顶部*/
    var top_header_nav = document.querySelector('.top-header-nav');

    function onScroll(e) {
        var origOffsetY = top_header_nav.offsetTop;//这个div距离浏览器顶部的高度
        //window.scrollY：文档当前垂直滚动的像素数
        if(window.scrollY > origOffsetY){
            top_header_nav.classList.add('fixed');
            $(".header-nav").css("opacity","1");
        }else{
            top_header_nav.classList.remove('fixed');
            document.querySelector(".header-nav").style.opacity="0.8";
        };
    }
    document.addEventListener('scroll', onScroll)


    var $ = layui.jquery
        ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    //一些事件监听
    element.on('nav(demo)', function(data){
        console.log(data);
    });

    /*效果图 下拉菜单显示*/

    $("#work-picture-nav").hover(function () {
        $("#work-picture-nav a").css({"color":"#006400","font-weight":"bold"});
        $(".work-picture-item").css("display","block");
    }, function () {
        $("#work-picture-nav a").css({"color":"#000000","font-weight":"normal"});
        $(".work-picture-item").css("display","none");
    })

    $(".work-picture-item").hover(function (){
        $("#work-picture-nav a").css({"color":"#006400","font-weight":"bold"});
        $(".work-picture-item").css("display","block");
    }, function () {
        $("#work-picture-nav a").css({"color":"#000000","font-weight":"normal"});
        $(".work-picture-item").css("display","none");
    })



    /*装修公司 下拉菜单显示*/
    $("#business-nav").hover(function () {
        $("#business-nav a").css({"color":"#006400","font-weight":"bold"});
        $(".business-item").css("display","block");
    }, function () {
        $("#business-nav a").css({"color":"#000000","font-weight":"normal"});
        $(".business-item").css("display","none");
    })

    $(".business-item").hover(function (){
        $("#business-nav a").css({"color":"#006400","font-weight":"bold"});
        $(".business-item").css("display","block");
    }, function () {
        $("#business-nav a").css({"color":"#000000","font-weight":"normal"});
        $(".business-item").css("display","none");
    })
});
/********************************/
layui.use(['form','element'], function(){
    var $ = layui.jquery
        ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

    $('.site-demo-active').on('click', function(){
        var othis = $(this), type = othis.data('type');
        active[type] ? active[type].call(this, othis) : '';
    });

    //Hash地址的定位
    var layid = location.hash.replace(/^#test=/, '');
    element.tabChange('test', layid);

    element.on('tab(test)', function(elem){
        location.hash = 'test='+ $(this).attr('lay-id');
    });

});

/*********************日历**************/
layui.use('laydate', function() {
    var laydate = layui.laydate;

    //常规用法
    laydate.render({
        elem: '#test1'
    });

});
/****************************/
layui.use('upload', function(){
    var $ = layui.jquery
        ,upload = layui.upload;

    //多图片上传
    upload.render({
        elem: '#test2'
        ,url: '/upload/'  //上传接口
        ,multiple: true
        ,auto: false
        , bindAction: "#save"//绑定上传
        ,acceptMime: 'image/*' //（只显示图片文件）
        ,choose: function (obj) { //obj参数包含的信息，跟 choose回调完全一致
            //将每次选择的文件追加到文件队列
            files = obj.pushFile();
            //layer.load(); //上传loading
            obj.preview(function (index, file, result) {
                $(".layui-upload-list").append('<img src="' + result + '" id="remove_' + index + '" title="双击删除该图片" style="width:100px;height:100px;margin-left: 20px;">')
                $('#remove_' + index).bind('dblclick', function () {//双击删除指定预上传图片
                    delete files[index];//删除指定图片
                    $(this).remove();
                })
                console.log("文件索引", index); //得到文件索引
                console.log("文件对象", file.name); //得到文件对象
                console.log("文件base64编码", result); //得到文件base64编码，比如图片
            })
        },
        done: function (res) {
            imgs = imgs.concat(res.Data)
            console.log(imgs)
            if (res.Result) {
                layer.msg("图片上传成功！", { icon: 1, time: 1000 });
            }
            //上传完毕回调
        },
        error: function () {
            //请求异常回调
        }
    });
});
/***********************************/
layui.use('layedit', function(){
    var layedit = layui.layedit;
    /*layedit.build('demo'); //建立编辑器*/

    layedit.build('demo', {
        tool: [ 'strong' //加粗
            ,'italic' //斜体
            ,'underline' //下划线
            ,'del' //删除线
            ,'|' //分割线
            ,'left' //左对齐
            ,'center' //居中对齐
            ,'right' //右对齐
            ,'link' //超链接
            ,'unlink' //清除链接
            ,'face' //表情
        ]
       /* height: 180 //设置编辑器高度*/

    });

});
/*****************折叠************************************/
layui.use(['element', 'layer'], function(){
    var element = layui.element;
    var layer = layui.layer;

    //监听折叠
    element.on('collapse(test)', function(data){
        layer.msg('展开状态：'+ data.show);
    });
});