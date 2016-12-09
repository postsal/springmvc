<%--
  Created by IntelliJ IDEA.
  User: hujian
  Date: 2016/12/7
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sign-up-form">
    <h3>Register Here</h3>
    <p>Having hands on experience in creating innovative designs,I do offer design
        solutions which harness</p>
    <div class="sign-up">
        <form action="/Register/Login" method="post">
            <h5>Personal Information</h5>
            <div class="sign-u">
                <div class="sign-up1">
                    <h4 class="a">User Name* :</h4>
                </div>
                <div class="sign-up2">
                    <input type="text" name="userName" required="required" id="userName">
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="sign-u">
                <div class="sign-up1">
                    <h4 class="b">Nick Name* :</h4>
                </div>
                <div class="sign-up2">
                    <input type="text" name="nickName" required="required" id="nickName">
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="sign-u">
                <div class="sign-up1">
                    <h4 class="c">Email Address* :</h4>
                </div>
                <div class="sign-up2">
                    <input type="text" name="emailAddress" required="required" id="emailAddress">
                </div>
                <div class="clearfix"></div>
            </div>
            <h6>Login Information</h6>
            <div class="sign-u">
                <div class="sign-up1">
                    <h4 class="d">Password* :</h4>
                </div>
                <div class="sign-up2">
                    <input type="password" name="password" required="required" id="password">
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="sign-u">
                <div class="sign-up1">
                    <h4>Confirm Password* :</h4>
                </div>
                <div class="sign-up2">
                    <input type="password" placeholder=" " required="required" id="passWord2">
                </div>
                <div class="clearfix"></div>
            </div>
            <input type="submit" value="Submit" id="submit">
        </form>
    </div>
</div>
