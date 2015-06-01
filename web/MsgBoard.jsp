<%--
  Created by IntelliJ IDEA.
  User: Moy
  Date: 五月29  029
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>留言板-首页</title>
    <link rel="stylesheet" href="/static/js/bootstrap-3.3.4-dist/css/bootstrap.css"/>
    <link rel="stylesheet" href="/static/css/me.css"/>
    <script type="text/javascript" data-main="/static/js/main" src="/static/js/r.js" charset="utf-8"></script>
</head>
<body style="overflow-x: hidden">
<ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li class="active">#MsgBoard</li>
</ol>
<div class="row">
    <div class="col-lg-8 col-lg-offset-2">
        <div class="panel panel-default">
            <%--<div class="panel-heading">用户信息</div>--%>
            <div class="panel-body">
                这是我的Blog欢迎留言
            </div>
            <%--<div class="panel-footer">控制按钮</div>--%>
        </div>
    </div>

    <div class="col-lg-8 col-lg-offset-2">
        <p>以下是留言信息：</p>
    </div>
    <c:forEach var="now" varStatus="status" items="${rs}">
        <div class="col-lg-8 col-lg-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    欢迎您，ID为 ${now.ID} De ${now.NAME}  Email：${now.EMAIL} 手机号码：${now.PHONE} ，您与 ${now.CREATED_TIME} 发布《${now.TITLE}》
                </div>
                <div class="panel-body">
                        ${now.CONTENT}
                </div>
                <div class="panel-footer text-right">
                    <div class="btn-group" role="group" aria-label="...">
                        <button type="button" class="btn btn-default btn-danger"
                                onclick="m.xHttp('/MsgBoard/deleteById.action?ID=${now.ID}', '/MsgBoard/pageFind.action?num=${nowPage}&size=${QSize}')">
                            删除
                        </button>
                        <button type="button" class="btn btn-default btn-warning"
                                Sjson="${now.ID},${now.CREATED_TIME},${now.NAME},${now.EMAIL},${now.PHONE},${now.TITLE},${now.CONTENT}"
                                onclick="m.updateDate(this)">修改
                        </button>
                        <button type="button" class="btn btn-default">待加入</button>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>

</div>
<nav class="col-lg-offset-2 col-lg-1">
    <ol class="breadcrumb" style="display: inline-block">
        <li><a href="#">${nowPage}</a></li>
        <li class="active">${numPage}</li>
    </ol>
</nav>
<nav class="col-lg-offset-8">
    <ul class="pagination">
        <c:if test="${nowPage > 1}">
            <li>
                <a href="/MsgBoard/pageFind.action?size=${QSize}&num=${nowPage-1}" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
        </c:if>

        <c:if test="${nowPage-2 >= 1}">
            <li><a href="/MsgBoard/pageFind.action?size=${QSize}&num=${nowPage-2}">${nowPage-2}</a></li>
        </c:if>
        <c:if test="${nowPage-1 >= 1}">
            <li><a href="/MsgBoard/pageFind.action?size=${QSize}&num=${nowPage-1}">${nowPage-1}</a></li>
        </c:if>

        <li class="active"><a href="#">${nowPage}</a></li>

        <c:if test="${nowPage+1 <= numPage}">
            <li><a href="/MsgBoard/pageFind.action?size=${QSize}&num=${nowPage+1}">${nowPage+1}</a></li>
        </c:if>
        <c:if test="${nowPage+2 <= numPage}">
            <li><a href="/MsgBoard/pageFind.action?size=${QSize}&num=${nowPage+2}">${nowPage+2}</a></li>
        </c:if>

        <c:if test="${nowPage < numPage}">
            <li>
                <a href="/MsgBoard/pageFind.action?size=${QSize}&num=${nowPage+1}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </c:if>
    </ul>
</nav>
<button class="btn btn-primary btn-sm center-block sh-bind-msg" type="button">我要留言</button>
<div class="sh-br"></div>
<div class="row sh-iam-msg" style="display: none">
    <div class="col-lg-8 col-lg-offset-2">
        <form action="/MsgBoard/save.action" method="post">
            <input type="hidden" name="ID" value=""/>
            <input type="hidden" name="CREATED_TIME" value=""/>

            <div class="form-group">
                <label for="Name">Name:</label>
                <input type="text" class="form-control" name="NAME" id="Name" value="" placeholder="Enter Name">
            </div>
            <div class="form-group">
                <label for="Email">Email:</label>
                <input type="email" class="form-control" name="EMAIL" id="Email" value="" placeholder="Enter Email">
            </div>
            <div class="form-group">
                <label for="Phone">Phone:</label>
                <input type="text" class="form-control" name="PHONE" id="Phone" value="" placeholder="Enter Phone">
            </div>
            <div class="form-group">
                <label for="Title">Title:</label>
                <input type="text" class="form-control" name="TITLE" id="Title" value="" placeholder="Enter Title">
            </div>
            <textarea name="CONTENT"></textarea>

            <div class="sh-br"></div>
            <input type="submit" name="SUBMIT" class="btn btn-info pull-right" value="提交"/>__洪承金°
            <input type="reset" class="btn btn-warning pull-right" value="清空"/>
        </form>
    </div>
</div>
</body>
</html>
