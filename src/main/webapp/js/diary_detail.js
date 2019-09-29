/*下拉菜单监听事件*/
//        日记类型
layui.use('element', function(){
    var $ = layui.jquery
        ,element = layui.element, layer = layui.layer;; //Tab的切换功能，切换事件监听等，需要依赖element模块
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

    var flag_style = false;
    var flag_space = false;
    var flag_city = false;

    //触发事件
    var active = {

        //添加风格
        styleAdd: function(){
            if(!flag_style){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title:  this.innerText//用于显示添加的内容
                    ,content:  this.innerText
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
                /*flag_style = true;*/
            }
            console.log(flag_style)
        }
        //添加面积
        ,spaceAdd: function(){
            if(!flag_space){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title:  this.innerText//用于显示添加的内容
                    ,content:  this.innerText
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
                /*flag_space = true;*/
            }
        }
        //添加城市
        ,cityAdd: function(){
            if(!flag_city){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title:  this.innerText//用于显示添加的内容
                    ,content:  this.innerText
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
                /*flag_city = true;*/
            }
        }

        //模态窗口
        /*,notice: function(){
            //示范一个公告层
            layer.open({
                type: 1
                ,title: false //不显示标题栏
                ,closeBtn: false
                ,area: '300px;'
                ,shade: 0.8
                ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                ,btn: ['火速围观', '残忍拒绝']
                ,btnAlign: 'c'
                ,moveType: 1 //拖拽模式，0或者1
                ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
                ,success: function(layero){
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: 'http://www.layui.com/'
                        ,target: '_blank'
                    });
                }
            });
        }
        ,comments:function(){
            layer.open({
                 type: comment
                ,title: false //不显示标题栏
                ,closeBtn: true
                ,area: '500px，300px;'
                ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
                ,btn: ['回复', '取消']
                ,btnAlign: 'c'
                ,moveType: 1 //拖拽模式，0或者1
                ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
                ,success: function(layero){
                    var btn = layero.find('.layui-layer-btn');
                    btn.find('.layui-layer-btn0').attr({
                        href: 'http://www.layui.com/'
                        ,target: '_blank'
                    });
                }
            });
        }*/
    };


    $('.style-demo-active').on('click', function(){
        var othis = $(this), type = othis.data('type');
        active[type] ? active[type].call(this, othis) : '';
    });

    $('.space-demo-active').on('click', function(){
        var othis = $(this), type = othis.data('type');
        active[type] ? active[type].call(this, othis) : '';
    });

    $('.city-demo-active').on('click', function(){
        var othis = $(this), type = othis.data('type');
        active[type] ? active[type].call(this, othis) : '';

    });

    /*//Hash地址的定位
     var layid = location.hash.replace(/^#test=/, '');
     element.tabChange('test', layid);

     element.on('tab(test)', function(elem){
     location.hash = 'test='+ $(this).attr('lay-id');
     });*/

});

/*收藏按钮*/
$(".collect-img").click(function () {
    var collect_img = document.querySelector(".collect-img").getAttribute("src");
    console.log(collect_img);
    if(collect_img == "../images/collect.png"){
        document.querySelector(".collect-img").src = "../images/collect-click.png";
    }else{
        document.querySelector(".collect-img").src = "../images/collect.png";
    }
})