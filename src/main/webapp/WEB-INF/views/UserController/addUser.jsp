<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC 添加用户</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/assets/plugins/bootstrap/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.min.js"></script>
    <script src="/assets/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>SpringMVC 添加用户</h1>
    <hr/>
    <form:form action="/UserController/users/add" method="post" commandName="user" role="form">
        <div class="form-group">
            <label for="userName">userName:</label>
            <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter userName:"/>
        </div>
        <div class="form-group">
            <label for="nickName">First Name:</label>
            <input type="text" class="form-control" id="nickName" name="nickName" placeholder="Enter nickName:"/>
        </div>
        <div class="form-group">
            <label for="emailAddress">Last Name:</label>
            <input type="text" class="form-control" id="emailAddress" name="emailAddress" placeholder="Enter emailAddress:"/>
        </div>
        <div class="form-group">
            <label for="password">Address:</label>
            <input type="text" class="form-control" id="password" name="password" placeholder="Enter password:"/>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
            <a type="button" class="btn btn-sm btn-success" href="/UserController/backToHome">返回</a>
        </div>
    </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>