<%--
  @author 王海亮
  @date
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html>
<head>
<title>code</title>
</head>
<body>
<pre class="layui-code" lay-title="code2" lay-height="500px" lay-skin="lg" lay-encode="true">
//代码区域
var a = 'hello layui';
</pre>


<script>
    layui.use('code', function(){ //加载code模块
              layui.code(); //引用code方法
            });
</script>
</body>
</html>
