<%--
  @author 王海亮
  @date
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html>
<head>
<title>元素操作</title>
</head>
<body>
<div class="layui-tab" lay-filter="demo">
  <ul class="layui-tab-title">
    <li class="layui-this">网站设置</li>
    <li>商品管理</li>
    <li>订单管理</li>
    <li >增加管理</li>
  </ul>
  <div class="layui-tab-content">
    <div class="layui-tab-item layui-show">内容1</div>
    <div class="layui-tab-item">内容2</div>
    <div class="layui-tab-item">内容3</div>
    <div class="layui-tab-item" id="xxx">内容1</div>
  </div>
</div>


<script>
layui.use('element', function(){
  var element = layui.element;

  //一些事件监听
  element.on('tab(demo)', function(data){
    console.log(data);
  });


element.tabDelete(demo,2);
element.on('tabDelete(filter)', function(data){
  console.log(this); //当前Tab标题所在的原始DOM元素
  console.log(data.index); //得到当前Tab的所在下标
  console.log(data.elem); //得到当前的Tab大容器
});
});

</script>
</body>
</html>
