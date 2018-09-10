<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Registration</title>
            <%@ include file="/jsp/include.jsp" %>
            <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />
        </head>
        <body>

         <header>
                        <ul>
                           <li><img src="jsp/logotype.png" alt="logotype"  style="width: 290px; margin: 15px; padding-left: 100px;"/></li>
                           <li></br><p align="right" style="font-size: italic; color: white; padding-left: 1100px; margin: 10px;"> Телефон поддержки </br> +375(29)105 37 43 <p></li>
                        </ul>
                    </header>

            <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
                <table align="center"; style="border-style: solid;  outset; border-width: 2px">
                    <tr>
                        <td>
                            <form:label path="passport">Номер паспорта: </form:label>
                        </td>
                        <td>
                            <form:input path="passport" name="pasport" id="pasport" placeholder="MR123321"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">Пароль:</form:label>
                        </td>
                        <td>
                            <form:password path="password" name="password" id="password" placeholder="qwerty123" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="left">
                            <form:button id="login" name="login">Войти</form:button>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr>
                        <td></td>
                        <td><a href="home.jsp">Назад на главную страницу</a>
                        </td>
                    </tr>
                </table>
            </form:form>
            <table align="center">
                <tr>
                    <td style="font-style: italic; color: red;">${message}</td>
                </tr>
            </table>
        </body>
        </html>