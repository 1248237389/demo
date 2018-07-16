<%--
  @author whl
  @date 2018/03/031
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>图书列表</title>
        <style type="text/css">
            #bookList{
               background-color:gray;
               color:black;
               padding-top:60px;200px;40px;55px;
               magin-left:500px;
               border-top:100px;

            }
        </style>
    </head>
    <body>
    <div id="bookList">
        图书名称：${book.name}<br/>
        图书作者：${author}<br/>
        图书名称：${book.price}<br/>
        图书类型：${book.type}
    </div>
    </body>
</html>
