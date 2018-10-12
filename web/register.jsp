<%--
  Created by IntelliJ IDEA.
  User: hkw
  Date: 2018/6/14
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
   <head>
       <link rel="stylesheet" href="./css/register.css">
       <script src="js/jquery.min.js"></script>
<style type="text/css">
</style>
<title>Document</title>
<script type="text/javascript">
    var code;
    window.onload = function(){
        function ErrorMsg(txtBox,msg){
            var errSpan = txtBox.nextSibling;

            if(errSpan!=null&&errSpan.nodeName=="SPAN"&&errSpan.className=="error"){
                errSpan.innerHTML = msg;
            }else{
                errSpan = document.createElement("span");
                errSpan.className = "error";
                errSpan.innerHTML = msg;
                if(txtBox.nextSibling!=null){
                    txtBox.parentNode.insertBefore(errSpan,txtBox.nextSibling);
                }else{
                    txtBox.parentNode.appendChild(errSpan);
                }
            }
        }


        var isValidate = [];
        isValidate["username"] = false;
        isValidate["email"] = false;
        isValidate["psw"] = false;
        isValidate["password2"] = false;
        isValidate["select"] = false;
        isValidate["answer"] = false;
        isValidate["phone"] = false;




        var psw = document.getElementById("psw1");
        psw.onblur = function(){
            if (psw.value == "") {
                isValidate["psw"] = false;
                ErrorMsg(psw,"密码不能留空！");
            }else if (psw.value !="") {
                isValidate["psw"] = true;
                ErrorMsg(psw,"密码已经输入");
            }else{
                ErrorMsg(psw,"");
            }
        }

        var password2 = document.getElementById("psw2");
        password2.onblur = function(){
            if (password2.value != psw.value) {
                isValidate["password2"] = false;
                ErrorMsg(password2,"密码不一致请重新输入");
            }else if (password2.value == psw.value) {
                isValidate["password2"] = true;
                ErrorMsg(password2,"重复密码输入正确");
            }else{
                ErrorMsg(password2,"");
            }
        }



        var address = document.getElementById("asw");
        address.onblur = function(){
            if (address.value == "") {
                isValidate["answer"] = false;
                ErrorMsg(address,"地址未输入!");
            }else if (address.value != "") {
                isValidate["answer"] = true;
                ErrorMsg(address,"地址已经输入。");
            }else{
                ErrorMsg(address,"");
            }
        }



        var username = document.getElementById("txt1");
        username.onblur = function(){
            if(username.value == ""){
                isValidate["username"] = false;
                ErrorMsg(username,"用户名不能留空！");
            }
            else if (username.value !="") {
                isValidate["username"] = true;
                ErrorMsg(username,"用户名已输入!");
            }
            else{
                ErrorMsg(username,"");
            }
        };

        var birthDay = document.getElementById("txt2");
        birthDay.onblur = function(){
            var dateRegexp = /^[0-9a-z_][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\.){1,4}[a-z]{2,4}$/;

            if(dateRegexp.test(birthDay.value)){
                isValidate["email"] = true;
                ErrorMsg(birthDay,"电子邮箱地址已经输入!");
            }else{
                isValidate["email"] = false;
                ErrorMsg(birthDay,"邮箱格式不正确123@qq.com");
            }
        };

        var Telephone = document.getElementById("Telephone");
        Telephone.onblur = function(){
            if(Telephone.value == ""){
                isValidate["phone"] = false;
                ErrorMsg(Telephone,"联系电话不能留空！");
            }
            else if (Telephone.value !="") {
                isValidate["userName"] = true;
                ErrorMsg(Telephone,"联系电话已输入!");
            }
            else{
                ErrorMsg(Telephone,"");
            }
        };

        var frm1 = document.getElementById("frm1");
        frm1.onsubmit=function(){
            for(var key in isValidate){
                if(isValidate[key] == true){
                    alert("验证通过,跳转到登陆页面!");
                    return true;
                }else {
                    alert("验证未通过");
                    return false;
                }
            }

        };

    };

</script>
</head>
<body>
<div class="container">
    <form id="frm1" name="for" method="post" action="/doAdd">
        <div class="d1">
            <fieldset style="border-radius: 5px;border:3px solid #C0D7E5;">
                <legend ><h4>您的名称</h4></legend>
                <span class="span1">您的登录名:</span><input id="txt1" type="text" name="username" style="height:25px;width: 150px;border: 2px solid #dee8e9;"/><br/>
            </fieldset>
        </div>



        <div class="d2">
            <fieldset style="border-radius: 5px;border:3px solid #C0D7E5;">
                <legend ><h4>安全资料</h4></legend>
                <span class="span2">输入登录密码:</span><input type="password" id="psw1"  name="psw" value="" ><br>
                <span class="span2">登录密码确认:</span><input type="password" id="psw2"  name="password2" value="" ><br>
                <span class="span2">收货地址:</span><input type="text"  name="address" id="asw" >
            </fieldset>
        </div>

        <div class="d3">
            <fieldset style="border-radius: 5px;border:3px solid #C0D7E5;">
                <legend ><h4>个人资料</h4></legend>
                <span class="span2">电子邮箱:</span><input id="txt2" class="email" type="text" name="email"/><br/>
                <span class="span2">联系电话:</span><input id="Telephone" class="Telephone" type="text" name="phone"/><br/>
            </fieldset>
            <input type="submit" name="" class="btn" value="确认提交注册信息">
        </div>
    </form>
</div>


</body>
</html>
