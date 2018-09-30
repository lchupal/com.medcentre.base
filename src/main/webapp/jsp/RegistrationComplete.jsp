<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>info</title>
            <%@ include file="/jsp/include.jsp" %>
            <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />
    </head>
    <body>
      <header>
                        <table width="100%" cellspacing="0" cellpadding="5">
                           <tr>
                            <td width="200" align="top"><img src="jsp/logotype.png" alt="logotype"  style="width: 290px; margin: 15px; padding-left: 100px;"/></td>
                            <td align="top"><p align="right" style="font-size: italic; color: red; padding-left: 200px; margin: 10px;"> Телефон поддержки </br> +375(29)105 37 43 <p></td>
                           </tr>
                          </table>
          </header>

        <table align="center"; style="border-style: solid;  outset border-width: 2px">
                    <br>
                    <br>
                   <tr>
                       <td>Поздравляем, вы успешно зарегистрированны</td>
                       </tr>
                       <br>
                    <tr>
                        <td style="font-style: italic; color: Green;">You are registred: ${user}</td>
                    </tr>
                    <br>
                   <tr>
                       <td><a href="home.jsp">Home</a>
                       </td>
                   </tr>
               </table>
    </body>
    </html>