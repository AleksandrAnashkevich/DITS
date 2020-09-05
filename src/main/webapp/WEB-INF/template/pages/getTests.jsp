<%--
  Created by IntelliJ IDEA.
  User: qqqq
  Date: 22.07.2020
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div class="row mt-3">
    <div class="col">
        <h2 class="title h2 text-center">Choose Test</h2>
    </div>
</div>
<div class="row d-flex justify-content-center mt-3">
    <div class="col-md-12">
        <div class="card">
            <div class="card-body pl-5 pt-5 pr-5">
                <form action="<c:url value="/getTest"/>">
                    <p>
                        <label for="topicList"></label>
                        <select id="topicList" name="topicList" class="browser-default custom-select">
                            <c:forEach items="${topicList}" var="item">
                                <option value="" selected disabled hidden>Choose topic</option>
                                <option value="${item.id}">${item.name}</option>
                            </c:forEach>
                        </select>
                    </p>
                    <p>
                        <label for="testList"></label>
                        <select id="testList" name="testList" class="browser-default custom-select">
                            <option value="" selected disabled hidden>Choose test</option>
                        </select>
                    </p>
                    <div class="text-center py-2 mt-3">
                        <button class="btn btn-success" name="submit" type="submit">Full In</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="mt-3 text-right pr-2">
    <a href="<%=application.getContextPath()%>/" class="text-success">Back to main page</a>
</div>
</body>
</html>
