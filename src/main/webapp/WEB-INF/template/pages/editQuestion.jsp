<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: qqqq
  Date: 29.07.2020
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="row d-flex justify-content-center mt-3">
    <div class="col-md-6">
        <div class="card">
            <div class="card-body pl-5 pr-5">
                <form method="post" action="<c:url value="/editQuestion"/>">
                    <input type="hidden" name="id" value="${question.id}">
                    <input type="hidden" name="testId" value="${question.test.id}">
                    <div>
                        <label for="oldDescription">Old Description</label>
                        <input type="text" id="oldDescription"  class="form-control" value="${question.description}" readonly>
                    </div>
                    <div>
                        <label for="description">New Description</label>
                        <input type="text" id="description" name="description" class="form-control">
                    </div>
                    <div>
                        <input type="submit" value="Edit">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
