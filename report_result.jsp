<%@ include file="dbconnection.jsp" %>
<link rel="stylesheet" type="text/css" href="style.css">

<html>
<body>
    <h2>Report Result</h2>
<%
    String type = request.getParameter("reportType");
    String sql = "";

    if ("threshold".equals(type)) {
        String threshold = request.getParameter("threshold");
        sql = "SELECT * FROM StudentMarks WHERE Marks > " + threshold;
    } else if ("subject".equals(type)) {
        String subject = request.getParameter("subject");
        sql = "SELECT * FROM StudentMarks WHERE Subject='" + subject + "'";
    } else if ("top".equals(type)) {
        String topn = request.getParameter("topn");
        sql = "SELECT * FROM StudentMarks ORDER BY Marks DESC LIMIT " + topn;
    }

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
