<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html lang="en">
<head>
<title>模板引擎</title>


</head>
<body>
<script>
layui.use('laytpl', function(){
  var string =  laytpl('{{ d.name }}是一位公猿').render({
      name: '贤心'
    });
    console.log('hello');  //贤心是一位公猿
  });
  </script>
</body>
</html>