<%--
  @author 王海亮
  @date
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
<meta charset="utf-8">
<title>LayIM测试</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css" media="all">
</head>
<body>
<script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<script>
layui.use('layim', function(layim){
  //先来个客服模式压压精
  layim.config({
    brief: true //是否简约模式（如果true则不显示主面板）
  }).chat({
    name: '客服姐姐'
    ,type: 'friend'
    ,avatar: 'http://tp1.sinaimg.cn/5619439268/180/40030060651/1'
    ,id: -2
  });
});
</script>
</body>
</html>
