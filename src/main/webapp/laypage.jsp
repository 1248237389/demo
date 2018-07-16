<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html lang="en">
<head>


</head>
<body>

<div id="test1"></div>

<script src="/static/build/layui.js"></script>
<script>
layui.use('laypage', function(){
  var laypage = layui.laypage;

  //执行一个laypage实例
  laypage.render({
    elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
    ,count: 50 //数据总数，从服务端得到
    ,theme: '#c00'
    ,limit: 5
    ,groups: 7
    ,first: 'one'
  });
});
</script>
</body>
</html>