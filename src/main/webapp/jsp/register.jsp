<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Registration</title>
            <%@ include file="/jsp/include.jsp" %>
            <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />" />

                <style>
                    td {
                         margin: 10px;
                         padding: 10px;
                         background: AntiqueWhite
                        }

                    header {
                        width: 100%;
                        height: 100px;
                        background: black;
                        }

                    ul {
                        list-style: none; /*убираем маркеры списка*/
                        margin: 0; /*убираем отступы*/
                        padding-left: 0; /*убираем отступы*/
                        }
                    a {
                        text-decoration: none; /*убираем подчеркивание текста ссылок*/
                        }
                    li {
                        float:left; /*Размещаем список горизонтально для реализации меню*/
                        margin-right:5px; /*Добавляем отступ у пунктов меню*/
                        }
                </style>


        </head>
        <body>

            <header>
                <ul>
                   <li><img src="jsp/logotype.png" alt="logotype"  style="width: 290px; margin: 15px; padding-left: 100px;"/></li>
                   <li></br><p align="right" style="font-size: italic; color: white; padding-left: 2000px; margin: 10px;"> Телефон поддержки </br> +375(29)105 37 43 <p></li>
                </ul>
            </header>

            <form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">

               <table align="center" >
                                   <tr>
                                       <td>
                                       </td>
                                       <td>
                                           <p align="center" style="color: DodgerBlue; font-weight: bold;">Заполните Поля для регистрации</p>
                                       </td>
                                   </tr>
                                    <tr>
                                             <td>
                                         <form:label path="surname">Фамилия</form:label>
                                     </td>
                                      <td>
                                        <form:input path="surname" pattern="[A-ZА-ЯЁ]{1}[a-zа-яё]{1,}"  name="surname" id="surname" class="form-control" placeholder="Иванов"  required = "required" />
                                           </td>
                                           </tr>
                                   <tr>
                                       <td>
                                           <form:label path="username" >Имя</form:label>
                                       </td>
                                       <td>
                                           <form:input path="username" type="text" pattern="[A-ZА-ЯЁ]{1}[a-zа-яё]{1,}" name="name" id="name" class="form-control" placeholder="Иван" required = "required" />
                                       </td>
                                   </tr>
                                        <tr>
                                             <td>
                                         <form:label path="midlename">Отчество</form:label>
                                     </td>
                                      <td>
                                        <form:input path="midlename"  type="text" pattern="[A-ZА-ЯЁ]{1}[a-zа-яё]{1,}" name="middle_name" id="middle_name" class="form-control" placeholder="Иванов" required = "required" />
                                           </td>
                                           </tr>

                                   <tr>
                                         <td>
                                              <form:label path="dateOfBirth">Дата рождения</form:label>
                                         </td>
                                         <td>
                                              <form:input  path="dateOfBirth" type="date" name="date_of_birth" id="date_of_birth" class="form-control" placeholder="ГГГГ-ММ-ДД" required = "required" />
                                         </td>
                                   </tr>
                                         <tr>
                                         <td>
                                              <form:label path="gender">Выберите пол</form:label>
                                         </td>
                                         <td>
                                              <form:select name="gender" path="gender">
                                              <form:option selected="selected" value="Муж">Муж</form:option>
                                              <form:option value="Жен">Жен</form:option>
                                               </form:select>
                                         </td>
                                   </tr>

<tr>
                                       <td>
                                           <form:label path="passport">Номер паспортаспорта</form:label>
                                       </td>
                                       <td>
                                           <form:input path="passport"  type="text" pattern="(A-Z){2}[0-9]{6}" name="pasport" id="pasport" class="form-control" placeholder="MP123456" required = "required" />
                                       </td>
                                   </tr>

                                   <tr>
                                         <td>
                                              <form:label path="numPassword">Пароль</form:label>
                                         </td>
                                         <td>
                                              <form:password path="numPassword" pattern="{6,}" name="password" id="password" class="form-control" placeholder="Пароль"  title="Должен сожержать 6 и более символов" required = "required" />
                                         </td>
                                   </tr>


                                   <tr>
                                         <td>
                                              <form:label path="phoneNumber">Номер телефона</form:label>
                                         </td>
                                         <td>
                                              <form:input path="phoneNumber" type="tel" pattern="80+[0-9]{9}" name="phone_number" id="phone_number" class="form-control" placeholder="80-29 105 37 43"  required = "required" />
                                         </td>
                                   </tr>
                                   <tr>
                                       <td>
                                           <form:label path="email">Электронная почта</form:label>
                                       </td>
                                       <td>
                                           <form:input path="email" type="email" name="mail" id="mail" class="form-control" placeholder="Ivanov@mail.com"/>
                                       </td>
                                   </tr>

                                   <tr>
                                   <tr>
                                       <td></td>
                                       <td>
                                           <form:button id="register" name="register" class="btn btn-info">Зарегестрироваться</form:button>
                                       </td>
                                   </tr>
                                   <tr></tr>
                                   <tr>
                                       <td></td>
                                       <td><a href="home.jsp">На главную страницу</a>
                                       </td>
                                   </tr>
                               </table>
                           </form:form>


                       </body>
                       </html>