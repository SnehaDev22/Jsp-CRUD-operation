<!DOCTYPE html>
<%@page import="com.javapoint.bean.User"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            background-color: #007BFF;
            color: #fff;
            padding: 20px 0;
        }

        form {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007BFF;
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
    margin-left: 10px;
}

.button:hover {
    background-color: #0056b3;
}
        
    </style>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="edituser.jsp" method="post">
    <input type="hidden" name="id" value="<%=u.getId() %>"/>
    <table>
        <tr>
            <td>Name:</td>
            <td>
                <input type="text" name="name" value="<%= u.getName()%>"/>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <input type="password" name="password" value="<%= u.getPassword()%>"/>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <input type="email" name="email" value="<%= u.getEmail()%>"/>
            </td>
        </tr>
        <tr>
            <td>Sex:</td>
            <td>
                <input type="radio" name="sex" value="male" <%= u.getSex().equals("male") ? "checked" : "" %>/>Male
                <input type="radio" name="sex" value="female" <%= u.getSex().equals("female") ? "checked" : "" %>/>Female
            </td>
        </tr>
        <tr>
            <td>Country:</td>
            <td>
                <select name="country">
                    <option value="India" <%= u.getCountry().equals("India") ? "selected" : "" %>>India</option>
                    <option value="USA" <%= u.getCountry().equals("USA") ? "selected" : "" %>>USA</option>
                    <option value="Afghanistan" <%= u.getCountry().equals("Afghanistan") ? "selected" : "" %>>Afghanistan</option>
                    <option value="Myanmar" <%= u.getCountry().equals("Myanmar") ? "selected" : "" %>>Myanmar</option>
                    <option value="Other" <%= u.getCountry().equals("Other") ? "selected" : "" %>>Other</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Edit User"/>
            </td>
        </tr>
        <a href="adduserform.jsp" class="button">Add new user</a>
    </table>
</form>
</body>
</html>
