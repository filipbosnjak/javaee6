<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Book List</h1>
    <jsp:useBean id="bookList" class="com.example.BookList" scope="request" />
    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
        </tr>
        <% for (Book book : bookList.getBooks()) { %>
            <tr>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getYear() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>