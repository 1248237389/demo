<%--
  @author 王海亮
  @date
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html>
<head>
</head>
<body>
<div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
  <input type="text" class="layui-input" id="test1">
  <input type="text" class="layui-input" id="test2">
</div>


<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;

  //执行一个laydate实例
  laydate.render({
    elem: '#test1'
    ,type: 'year'
    ,range: true //或 range: '~' 来自定义分割字符
  });

  //年月范围选择
  laydate.render({
    elem: '#test2'
    ,type: 'month'
    ,range: true //或 range: '~' 来自定义分割字符
  });
});
</script>
</body>
</html>
