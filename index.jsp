<!DOCTYPE html>
<html>
<head>
    <title>Mark Management System</title>
    <!-- Font Awesome CDN for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(to right, #e0f7fa, #e1bee7);
            color: #333;
            padding: 50px;
            text-align: center;
        }

        h1 {
            margin-bottom: 30px;
            font-size: 2.8rem;
            color: #4a148c;
        }

        .container {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            padding: 40px;
            max-width: 800px;
            margin: auto;
        }

        ul {
            list-style-type: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        ul li a {
            display: flex;
            align-items: center;
            gap: 10px;
            text-decoration: none;
            padding: 15px 25px;
            background-color: #6a1b9a;
            color: white;
            border-radius: 10px;
            transition: background-color 0.3s, transform 0.2s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            font-size: 1.1rem;
        }

        ul li a i {
            font-size: 1.2rem;
        }

        ul li a:hover {
            background-color: #8e24aa;
            transform: scale(1.05);
        }

        @media (max-width: 600px) {
            ul {
                flex-direction: column;
            }

            ul li a {
                justify-content: center;
                width: 80%;
                margin: 0 auto;
            }
        }
    </style>
</head>
<body>
    <h1>Mark Management System</h1>
    <div class="container">
        <ul>
            <li><a href="markadd.jsp"><i class="fas fa-plus-circle"></i> Add Marks</a></li>
            <li><a href="markupdate.jsp"><i class="fas fa-edit"></i> Update Marks</a></li>
            <li><a href="markdelete.jsp"><i class="fas fa-trash-alt"></i> Delete Marks</a></li>
            <li><a href="markdisplay.jsp"><i class="fas fa-list-ul"></i> Display Marks</a></li>
            <li><a href="report_form.jsp"><i class="fas fa-chart-line"></i> Generate Reports</a></li>
        </ul>
    </div>
</body>
</html>
