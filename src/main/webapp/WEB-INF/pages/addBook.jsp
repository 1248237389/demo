<%--
  @author whl
  @date 2018/02/05 15:50
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <style type="text/css">
                    span{color:red;height:34px;background:#123456;relative:center}
        </style>
        <SCRIPT src="${pageContext.request.contextPath }/staticSource/js/jquery-1.10.2.js" type="text/javascript"></SCRIPT>
        <title>添加图书</title>
    </head>
    <body>
       <form id="form" action="${pageContext.request.contextPath}/addBook" method="post" >
       图书名称: <input type="text" name="name" id="name"><br /><br />
       价格: <input type="text" name="price" id="price"/><br /><br />
       作者：<input type="text" name="author"/><br /><br />
       类型：<input type="checkbox" name="type" value="小说"/>小说
            <input type="checkbox" name="type" value="技术"/>技术
            <input type="checkbox" name="type" value="文学"/>文学
            <input type="checkbox" name="type" value="技术"/>金融<br />
            <input type="submit" value="提交" />
       </form>

        <span>
           <A onclick="addBook(this)">添加图书</A>
        </span>
        <DIV id = "div">
            nihi
        </DIV>
    <SCRIPT type="text/javascript">
                function add(){
                    alert("com in")
                }
                function addBook(){
                    var name = "西游记";
                    var price = 34;
                    var author = '吴承恩';

                    alert(name);
                    $.ajax({
                              type: "POST",
                              url: "${pageContext.request.contextPath }/addBookTest",
                              data: {
                                name : name,
                                author : author,
                                price : price,
                              },
                              success: function(result){
                                 $("#div").html(result.name);
                              }
                            });
                }
            </SCRIPT>
    </body>
</html>
