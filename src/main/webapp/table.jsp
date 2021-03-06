<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<html lang="en">
<head>
<title>表格/table</title>
</head>
<body>
<table id="demo" lay-filter="test"></table>

<script>
layui.use('table', function(){
  var table = layui.table;

  //第一个实例
  table.render({
  skin: 'line' //行边框风格
    ,even: true //开启隔行背景
    ,size: 'sm' //小尺寸的表格
    ,elem: '#demo'
    ,height: 615
    ,url: '/demo/table/user' //数据接口
    ,page: true //开启分页
    ,cols: [[ //表头
      {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}
      ,{field: 'username', title: '用户名', width:80}
      ,{field: 'sex', title: '性别', width:80, sort: true}
      ,{field: 'city', title: '城市', width:80}
      ,{field: 'sign', title: '签名', width: 177}
      ,{field: 'experience', title: '积分', width: 80, sort: true}
      ,{field: 'score', title: '评分', width: 80, sort: true}
      ,{field: 'classify', title: '职业', width: 80}
      ,{field: 'wealth', title: '财富', width: 135, sort: true}
    ]]
  });

});
</script>
</body>
</html>