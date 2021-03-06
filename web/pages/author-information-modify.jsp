<%@ page import="cn.zzd.entity.Author" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% Author author = (Author) session.getAttribute("author");%>

<!DOCTYPE html>
<html>
<%@include file="/components/head.jsp" %>
<body>

<div class="mdui-row"
     style="margin-right: 0px;
            margin-left: 0px; ">
    <div class="mdui-appbar mdui-ripple background-color height"
         style="--color:rgb(63,81,181);--height: 4rem">
        <a href="<%=host%>" class="mdui-typo-headline mdui-text-color-white"
           style="margin: 1rem;padding:0rem;"><%=siteName%>
        </a>
        <a href="<%=host%>/api/login" class="mdui-typo-headline mdui-text-color-white"
           style="margin: 1rem;padding:0rem;">作家园</a>
    </div>
</div>
<h1 class="doc-title mdui-text-color-theme" style="text-align: center">基本信息</h1>
<form action="<%=host%>/api/author" method="post" class="flex" style="--flex-direction: column; --justify-content: center; --align-items: center;">
    <input type="hidden" value="<%=author.getAccount_()%>" name="account_"/>
<div class="mdui-textfield">
    <label class="mdui-textfield-label">姓名：</label>
    <input class="mdui-textfield-input" type="text" value="<%=author.getName_()%>" name="name_" maxlength="20"/>
</div>

<div class="mdui-textfield">
    <label class="mdui-textfield-label">密码：</label>
    <input class="mdui-textfield-input" type="text" value="<%=author.getPassword_()%>" name="password_" maxlength="60"/>

</div>

<div class="mdui-textfield">
    <label class="mdui-textfield-label">Message</label>
   <input class="mdui-textfield-input"  type="text" value="<%=author.getContact()%>" name="contact" maxlength="60"/>
</div>
    <button class="mdui-btn mdui-color-pink-accent mdui-ripple" type="submit">提交修改</button>

    </form>

</body>
</html>