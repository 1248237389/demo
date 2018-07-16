<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>徽章</title>
    <script>
        layui.use('element', function(){
          var element = layui.element;
        });
    </script>
</head>
<body>
//小圆点，通过 layui-badge-dot 来定义，里面不能加文字
<span class="layui-badge-dot"></span>
<span class="layui-badge-dot layui-bg-orange"></span>
<span class="layui-badge-dot layui-bg-green"></span>
<span class="layui-badge-dot layui-bg-cyan"></span>
<span class="layui-badge-dot layui-bg-blue"></span>
<span class="layui-badge-dot layui-bg-black"></span>
<span class="layui-badge-dot layui-bg-gray"></span>

//椭圆体，通过 layui-badge 来定义。事实上我们把这个视作为主要使用方式
<span class="layui-badge">6</span>
<span class="layui-badge">99</span>
<span class="layui-badge">61728</span>

<span class="layui-badge">赤</span>
<span class="layui-badge layui-bg-orange">橙</span>
<span class="layui-badge layui-bg-green">绿</span>
<span class="layui-badge layui-bg-cyan">青</span>
<span class="layui-badge layui-bg-blue">蓝</span>
<span class="layui-badge layui-bg-black">黑</span>
<span class="layui-badge layui-bg-gray">灰</span>

边框体，通过 layui-badge-rim 来定义
<span class="layui-badge-rim">6</span>
<span class="layui-badge-rim">Hot</span>


</body>
</html>