<!DOCTYPE html>
<html>
<head>
    <title>Register - SkillSwap Hub</title>
    <meta charset="UTF-8">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #667eea, #764ba2);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-box {
            width: 380px;
            padding: 30px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .message {
            text-align: center;
            color: green;
            font-weight: bold;
            margin-bottom: 10px;
        }

        input, textarea {
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
            transition: 0.3s;
        }

        input:focus, textarea:focus {
            border-color: #667eea;
            box-shadow: 0 0 5px rgba(102,126,234,0.5);
        }

        textarea {
            resize: none;
            height: 80px;
        }

        button {
            width: 100%;
            padding: 12px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background: #5a67d8;
            transform: scale(1.02);
        }

        .link {
            text-align: center;
            margin-top: 15px;
        }

        .link a {
            text-decoration: none;
            color: #667eea;
            font-weight: bold;
        }

        .link a:hover {
            text-decoration: underline;
        }

    </style>
</head>

<body>

<div class="form-box">

    <div class="message">${message}</div>

    <h2>Create Account</h2>

    <form action="registerServlet" method="post">

        <input type="text" name="name" placeholder="Enter Full Name" required>

        <input type="email" name="email" placeholder="Enter Email Address" required>

        <input type="password" name="password" placeholder="Enter Password" required>

        <input type="text" name="skill" placeholder="Your Skill (e.g. Java)" required>

        <textarea name="description" placeholder="Describe your skill"></textarea>

        <button type="submit">Register</button>

    </form>

    <div class="link">
        Already have an account? <a href="login.jsp">Login</a>
    </div>

</div>

</body>
</html>