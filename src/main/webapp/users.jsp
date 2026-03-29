<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Users</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        margin: 0;
        padding: 0;
    }

    .container {
        width: 85%;
        margin: 40px auto;
        background: white;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        animation: fadeIn 0.7s ease-in-out;
    }

    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(20px);}
        to {opacity: 1; transform: translateY(0);}
    }

    h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    .msg {
        text-align: center;
        color: green;
        font-weight: bold;
        margin-bottom: 10px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }

    th {
        background: #4CAF50;
        color: white;
        padding: 12px;
        text-transform: uppercase;
        font-size: 14px;
    }

    td {
        padding: 10px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }

    tr:hover {
        background-color: #f5f5f5;
        transition: 0.3s;
    }

    .no-data {
        text-align: center;
        color: red;
        margin-top: 20px;
        font-size: 18px;
    }

    .back-btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 8px;
    }

    .back-btn:hover {
        background: #0056b3;
    }

    .top-bar {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
</style>

</head>
<body>

<div class="container">

    <div class="top-bar">
        <h2>👥 All Users</h2>
        <a href="profile.jsp" class="back-btn">⬅ Back</a>
    </div>

    <div class="msg">${msg}</div>

    <c:choose>
        <c:when test="${not empty users}">
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Skill</th>
                        <th>Description</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.name}</td>
                            <td>${user.email}</td>
                            <td>${user.skill}</td>
                            <td>${user.description}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>

        <c:otherwise>
            <div class="no-data">❌ No Users Found</div>
        </c:otherwise>
    </c:choose>

</div>

</body>
</html>