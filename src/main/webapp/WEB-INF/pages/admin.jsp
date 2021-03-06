<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: adel
  Date: 24.05.14
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin panel</title>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="/resources/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
            <div class="row">
                <form:form cssClass="col-md-3 thumbnail" method="post" commandName="newprod" action="/admin/add">
                <form:input class="form-control" path="name" type="text" placeholder="Name" />
                <form:input class="form-control" path="photo" type="url" placeholder="Image URL" />
                <form:textarea class="form-control" path="description" type="text" size="6" placeholder="Description" />
                <form:input class="form-control" path="price" type="number" step="1" min="1" placeholder="Price" />
                <form:input class="form-control" path="amount" type="number" step="1" min="1" placeholder="Amount" />
                <form:button class="btn btn-lg btn-primary btn-block" type="submit">Add</form:button>
                </form:form>
            <c:forEach items="${products}" var="product" varStatus="status">
                <c:if test="${status.count % 4 == 3}">
                    <div class="row">
                </c:if>
                    <div class="col-md-3 thumbnail">
                        <img class="img-responsive" src="${product.photo}">
                        <h4>${product.name}</h4>
                        <p>${product.description}</p>
                        <span><b>Price: </b>${product.price} <b>Left: </b> ${product.amount}</span>
                    </div>
                <c:if test="${count % 4 == 2}">
                    </div>
                </c:if>
            </c:forEach>
    </div>
</body>
</html>
