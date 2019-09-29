layui.use(['carousel', 'form'], function(){
    var carousel = layui.carousel
        ,form = layui.form;

    //常规轮播
    carousel.render({
        elem: '#nav-carousel'
        ,arrow: 'always'
        ,width: '100%'
        ,height:'450px'
        ,arrow:'hover'
    });
});