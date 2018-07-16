<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/staticSource/layui2.2.5/css/layui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/layui2.2.5/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/staticSource/js/angular-1.7.0/angular-route.js"></script>
<html  lang="en" ng-app="myApp">
<head>
    <meta charset="UTF-8">
    <script src="${pageContext.request.contextPath }/staticSource/js/angular-1.7.0/angular.min.js"></script>
    <title>angularjs模板-辅助</title>
    <script>
        layui.use('element', function(){
          var element = layui.element;
        });
    </script>
    <script>
     layui.use('layer', function(){
          var layer = layui.layer;

          layer.msg('hello');

          layer.open({
                    type: 1,
                    content: '传入任意的文本或html' //这里content是一个普通的String
                  });
        });
            

    </script>

</head>
<body>

    <div >
        <label>名字：</label>
        <input type="text" ng-model="yourname" placeholder="输入你的名字">
        <hr>
        <h1>你好:{{yourname}}!</h1>

        {{book}}
        {{people}}
    </div>
    <div class="form" ng-controller="myAppCtrl">
        {{greeting}}
    </div>
        <script type="text/javascript">
           var myApp = angular.module('myApp', []);

           myApp.run(function($rootScope){
                   $rootScope.people ={
                       name:'小明',
                       age:'12',
                       tel:'12233333333'
                   };
               });
           myApp.controller('myAppCtrl', function($scope){
                   //定义成变量
                   $scope.greeting = "Angular开发指南";

                   //定义成对象
                   $scope.book ={
                       name :'姓名',
                       author:'作者',
                       pubTime:'出版时间'
                   }
               })

        </script>
        <script>
            angular.module('myApp').config(function($routeProvider){
                                             $routeProvider.when('${pageContext.request.contextPath }/util',{
                                             controller:'myAppCtrl',
                                             templateUrl:'${pageContext.request.contextPath }/util.jsp'),
                                            })
         </script>
<fieldset class="layui-elem-field">
  <legend>字段集区块 - 默认风格</legend>
  <div class="layui-field-box">
    内容区域
  </div>
</fieldset>

<fieldset class="layui-elem-field layui-field-title">
  <legend>字段集区块 - 横线风格</legend>
  <div class="layui-field-box">
    内容区域
  </div>
</fieldset>
你可以把它看作是一个有标题的横线

默认分割线
<hr>

赤色分割线
<hr class="layui-bg-red">

橙色分割线
<hr class="layui-bg-orange">

墨绿分割线
<hr class="layui-bg-green">

青色分割线
<hr class="layui-bg-cyan">

蓝色分割线
<hr class="layui-bg-blue">

黑色分割线
<hr class="layui-bg-black">

灰色分割线
<hr class="layui-bg-gray">
</body>
</html>