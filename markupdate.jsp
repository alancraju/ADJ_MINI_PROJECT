<%@ include file="dbconnection.jsp" %>
<link rel="stylesheet" type="text/css" href="style.css">

<html>
<body>
    <h2>Update Student Marks</h2>
    <form method="post">
        Student ID: <input type="text" name="id"><br>
        Subject: <input type="text" name="subject"><br>
        New Marks: <input type="text" name="marks"><br>
        <input type="submit" value="Update">
    </form>

<%
    if (request.getMethod().equals("POST")) {
        String id = request.getParameter("id");
        String subject = request.getParameter("subject");
        String marks = request.getParameter("marks");

        String sql = "UPDATE StudentMarks SET Marks=? WHERE StudentID=? AND Subject=?";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setInt(1, Integer.parseInt(marks));
        pst.setInt(2, Integer.parseInt(id));
        pst.setString(3, subject);

        int result = pst.executeUpdate();
        out.println(result > 0 ? "Record Updated." : "Update Failed.");
    }
%>
</body>
</html>
