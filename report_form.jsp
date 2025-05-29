<link rel="stylesheet" type="text/css" href="style.css">

<html>


<body>
    <h2>Generate Reports</h2>
    
    <form action="report_result.jsp" method="get">
        <p>
            <input type="radio" name="reportType" value="threshold"> Students with marks above threshold<br>
            Threshold: <input type="text" name="threshold"><br><br>

            <input type="radio" name="reportType" value="subject"> Students who scored in subject<br>
            Subject: <input type="text" name="subject"><br><br>

            <input type="radio" name="reportType" value="top"> Top N students<br>
            Top N: <input type="text" name="topn"><br><br>

            <input type="submit" value="Generate">
        </p>
    </form>
</body>
</html>
