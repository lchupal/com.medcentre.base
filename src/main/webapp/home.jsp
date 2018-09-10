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

          <table align="center">
            <tr>
                <td><a  style="border-style:  solid ;color: black; margin:0 50px; width: 200px;"  href="login">Login</a>
                </td>
                <td><a  style="border-style: solid;color: black; margin:0 50px; width: 200px"  href="register">Register</a>
                </td>
            </tr>
        </table>
    </body>
    </html>