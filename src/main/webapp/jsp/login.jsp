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
                        <table width="100%" cellspacing="0" cellpadding="5">
                                               <tr>
                                                <td width="200" valign="top"><img src="jsp/logotype.png" alt="logotype"  style="width: 290px; margin: 15px; padding-left: 100px;"/></td>
                                                <td valign="top"><p align="right" style="font-size: italic; color: red; padding-left: 200px; margin: 10px;"> Телефон поддержки </br> +375(29)105 37 43 <p></td>
                                               </tr>
                                              </table>
                    </header>

            <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
                <table align="center">
                <tr>
                                                       <td>
                                                       </td>
                                                       <td>
                                                           <p align="center" style="color: DodgerBlue; font-weight: bold;">Заполните Поля для входа</p>
                                                       </td>
                                                   </tr>
                    <tr>
                    <br>
                        <td>
                            <form:label path="passport">Номер паспорта: </form:label>
                        </td>
                        <td>
                            <form:input path="passport" class="form-control"  pattern="[A-Z]{2}[0-9]{6}" name="pasport" id="pasport" placeholder="MR123321" required = "required" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="password">Пароль:</form:label>
                        </td>
                        <td>
                            <form:password path="password"  class="form-control" name="password" id="password" placeholder="qwerty123" required = "required"  />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="left">
                            <form:button id="login"  class="btn btn-info" name="login">Войти</form:button>
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