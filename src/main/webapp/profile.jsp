<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="servlet.entity.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        margin: 0;
        padding: 0;
    }

    .container {
        width: 420px;
        margin: 80px auto;
        background: white;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        text-align: center;
        animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(20px);}
        to {opacity: 1; transform: translateY(0);}
    }

    .success-msg {
        background: #28a745;
        color: white;
        padding: 10px;
        border-radius: 8px;
        margin-bottom: 20px;
        font-weight: bold;
    }

    h2 {
        margin-bottom: 15px;
        color: #333;
    }

    .info {
        text-align: left;
        margin-top: 15px;
    }

    .info p {
        margin: 10px 0;
        font-size: 15px;
    }

    .label {
        font-weight: bold;
        color: #555;
    }

</style>

</head>
<body>



<div class="container">

<h2>${email}</h2>

    <!-- SUCCESS MESSAGE -->
    <div class="success-msg">
        ✅ Login Successful!
    </div>

    <h2>Welcome 👋</h2>

   
</div>

</body>
</html>