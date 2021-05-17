<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Список пользователей</title>
</head>
<body>
<jsp:include page="../_header.jsp" />

<div class="container">
    <div class="row">
        <div class="coll-md-12 mt-2">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Главная</a></li>
                    <li class="breadcrumb-item" aria-current="page">Staff меню</li>
                    <li class="breadcrumb-item active" aria-current="page">Список пользователей</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 mt-2 mb-2">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Логин</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Фамилия</th>
                    <th scope="col">Дата рождения</th>
                    <th scope="col">Адрес</th>
                    <th scope="col">Роль</th>
                    <th scope="col">Действия</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.userList}" var="store">
                    <tr>
                        <th>${store.id}</th>
                        <th>${store.username}</th>
                        <th>${store.firstName}</th>
                        <th>${store.lastName}</th>
                        <th>${store.birthDate}</th>
                        <td>${store.address.street}, ${store.address.home}</td>
                        <td>${store.role}</td>
                        <td>
                            <a href="/staff/user/edit?id=${store.id}" class="btn btn-warning btn-sm">Редактировать</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="../_alert.jsp" />
<jsp:include page="../_footer.jsp" />
</body>
</html>
