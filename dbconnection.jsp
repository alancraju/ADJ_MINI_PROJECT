<%@ page import="java.sql.*" %>
<%
    Connection conn = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3308/mark";
        String user = "root";
        String password = "";
        conn = DriverManager.getConnection(url, user, password);
    } catch (Exception e) {
        out.println("Database Connection Error: " + e.getMessage());
    }
%>
