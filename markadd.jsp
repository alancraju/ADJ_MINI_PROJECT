<%@ include file="dbconnection.jsp" %>
<link rel="stylesheet" type="text/css" href="style.css">

<html>
<body>
    <h2>Add Student Marks</h2>
    <form method="post">
        Student ID: <input type="text" name="id"><br>
        Name: <input type="text" name="name"><br>
        Subject: <input type="text" name="subject"><br>
        Marks: <input type="text" name="marks"><br>
        Exam Date: <input type="date" name="examdate"><br>
        <input type="submit" value="Add">
    </form>

<%
    if (request.getMethod().equals("POST")) {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String subject = request.getParameter("subject");
        String marks = request.getParameter("marks");
        String examdate = request.getParameter("examdate");

        String sql = "INSERT INTO StudentMarks VALUES (?, ?, ?, ?, ?)";
        PreparedStatement pst = conn.prepareStatement(sql);
        pst.setInt(1, Integer.parseInt(id));
        pst.setString(2, name);
        pst.setString(3, subject);
        pst.setInt(4, Integer.parseInt(marks));
        pst.setDate(5, Date.valueOf(examdate));

        int result = pst.executeUpdate();
        out.println(result > 0 ? "Record Added Successfully." : "Insert Failed.");
    }
%>
</body>
</html>
