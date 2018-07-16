<%--
  @author whl
  @date 2018/03/031
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
            span{color:gray;height:34px;background:#123456;relative:center}
        </style>
        <SCRIPT type="text/javascript">
            function addBook(){
                window.location.href="${pageContext.request.contextPath }/directToAddBook";
            }
        </SCRIPT>
    </head>
    <body>
    <div id="bookList">
        <table>
            <thead>
                <tr>
                    <th>图书名称</th>
                    <th>图书作者</th>
                    <th>图书价格</th>
                    <th>图书类型</th>
                    <th>operation</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${bookList}" var="var">
                    <tr>
                        <td>${var.name}</td>
                        <td>${var.author}</td>
                        <td>${var.price}</td>
                        <td>${var.type}</td>
                        <td><A href="/deleteBookById?id=${var.id}"/>del</td>
                    </tr>
                </c:forEach>
            </tbody>

        </table>
        <span>
            <A onclick="addBook()">添加图书</A>
        </span

    </div>

    </body>
</html>
