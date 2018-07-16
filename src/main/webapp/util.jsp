<%--
  @author 王海亮
  @date
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <!--Bootstrap的css-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/staticSource/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <!--Jquery是Bootstrap必需的-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/js/jquery-1.10.2.js"></script>
    <!--包含所有编译的插件-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<title>工具类</title>
</head>
<body>
<!--Jquery是Bootstrap必需的-->
    <script  src="${pageContext.request.contextPath }/staticSource/js/jquery-1.10.2.js"></script>
    <!--包含所有编译的插件-->
    <script  src="${pageContext.request.contextPath }/staticSource/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <h1>你好，Bootstrap!!!</h1>
    <div class="row">
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4">.col-md-4</div>
        <div class="col-md-4">.col-md-4</div>
    </div>
    <div class="row">
        <div class="col-md-6">.col-md-6</div>
        <div class="col-md-6">.col-md-6</div>
    </div>

<script>
layui.use('util', function(){
  var util = layui.util;

  //执行
  util.fixbar({
    bar1: true
    ,click: function(type){
      console.log(type);
      if(type === 'bar1'){
        alert('点击了bar1')
      }
    }
  });
});

</script>
<div id="test"></div>
<div id="test2"></div>

<script>
layui.use('util', function(){
  var util = layui.util;

  //示例
  var endTime = new Date(2018,5,2).getTime() //假设为结束日期
  ,serverTime = new Date().getTime(); //假设为当前服务器时间，这里采用的是本地时间，实际使用一般是取服务端的

  util.countdown(endTime, serverTime, function(date, serverTime, timer){
    var str = date[0] + '天' + date[1] + '时' +  date[2] + '分' + date[3] + '秒';
    layui.$('#test').html('<h2>距离2018年5月2日还有：<h2>'+str);
  });

  layui.$('#test2').html('hello'+util.digit(7, 3));
});
</script>
</body>
</html>
