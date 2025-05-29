<%@ include file="dbconnection.jsp" %>
<link rel="stylesheet" type="text/css" href="style.css">

<html>
<body>
    <h2>Display Student Marks</h2>
    <form method="get">
        Search by Student ID: <input type="text" name="id">
        <input type="submit" value="Search">
    </form>

<%
    String id = request.getParameter("id");
    String sql = (id != null && !id.isEmpty()) ?
                 "SELECT * FROM StudentMarks WHERE StudentID=" + id :
                 "SELECT * FROM StudentMarks";

    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
%>
    <table border="1">
        <tr><th>ID</th><th>Name</th><th>Subject</th><th>Marks</th><th>Exam Date</th></tr>
<%
    while (rs.next()) {
%>
        <tr>
            <td><%= rs.getInt("StudentID") %></td>
            <td><%= rs.getString("StudentName") %></td>
            <td><%= rs.getString("Subject") %></td>
            <td><%= rs.getInt("Marks") %></td>
            <td><%= rs.getDate("ExamDate") %></td>
        </tr>
<%
    }
%>
    </table>
</body>
</html>

