<%@ include file="dbconnection.jsp" %>
<link rel="stylesheet" type="text/css" href="style.css">

<html>
<body>
    <h2>Delete Student Record</h2>
    <form method="post">
        Student ID: <input type="text" name="id"><br>
        <input type="submit" value="Delete">
    </form>

<%
    if (request.getMethod().equals("POST")) {
        String id = request.getParameter("id");

        String sql = "DELETE FROM StudentMarks WHERE StudentID=?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setInt(1, Integer.parseInt(id));

        int result = pst.executeUpdate();
        out.println(result > 0 ? "Record Deleted." : "Deletion Failed.");
    }
%>
</body>
</html>
