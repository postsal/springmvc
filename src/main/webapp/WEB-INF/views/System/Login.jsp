<%--
  Created by IntelliJ IDEA.
  User: hujian
  Date: 2016/12/7
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="login">
    <div class="login-grids">
        <div class="col-md-6 log">
            <h3>Login</h3>
            <p>Welcome, please enter the following to continue.</p>
            <p>If you have previously Login with us, <a href="#">click here</a></p>
            <form action="/Account/Login" method="post">
                <h5>User Name:</h5>
                <input type="text" name="userName" value="">
                <h5>Password:</h5>
                <input type="password" name="password" value="">
                <input type="submit" value="Login">

            </form>
            <%--<a href="#">Forgot Password ?</a>--%>
        </div>
        <div class="col-md-6 login-right">
            <h3>New Registration</h3>
            <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
            <a class="hvr-bounce-to-bottom button" id="register">Create An Account</a>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<script type="text/javascript">
    $("#register").click(function () {
        redirectToRegister();
    });

    var redirectToRegister = function () {
        $.ajax({
            type: 'GET',
            url: "/Register/",
            success: function (msg) {
                $.ajaxSetup({
                    async: false
                });
                $("#mainPage").empty().append(msg);
            }
        });
    }
</script>