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


