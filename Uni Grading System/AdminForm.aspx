<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminForm.aspx.cs" Inherits="Uni_Grading_System.AdminForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

   
    <style>


        body{
            font-family:Arial,sans-serif;
            margin:0;
            padding:0;
      
        }
        .container{
            display:flex;
            flex-direction:row;
            height:100vh;
        }
        .sidebar{
            width:250px;
            background-color:#000000;
            padding:20px;

        }
        .sidebar h2{
            margin-top:0;
            margin-bottom:20px;
            font-size:30px;
            font-weight:30px;
                   
        }
        .sidebar ul{
            list-style-type:none;
            padding:0;
            margin:0;
        }
        .sidebar li{
            margin-bottom:10px;
        }
        .sidebar a{
            text-decoration:none;
            color:#fff;
            font-size:25px;
            font-weight:20px;
              
        }

        .content{
            flex-grow:1;
            padding:20px;
            background-color:#636161

        }
        .content h2{
            margin-top:0;
            margin-bottom:20px;
            font-size:30px;
            color:#fff;
        }
        .content p{
            margin-bottom:10px;

        }
        .content .card{
            background-color:#b9b9b9;
            padding:20px;
            border-radius:5px;
            box-shadow:0 2px 5px rgba(0,0,0,0.1);
        }

        .content .card h3{
            margin-top:0;
            margin-bottom:20px;
            font-size:18px;
        }

        .content .card p{
            margin-bottom:10px;
        }

        .content .card a {
            text-decoration:none;
            color:#333;
            font-weight:bold;
        }



    </style>
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <h2> Admin Dashbord</h2>
            <ul>
                <li><a href="#">DashBord</a></li>
                <li><a href="LoginForm.aspx">Logout</a></li>
            </ul>
        </div>
        <div class="content">
            <h2>Welcome, Admin</h2>
            <div class="card">
                <h3>dashboard</h3>
                <p>Here Can view various statistics and reports.</p>
                <a href="#">View Dashboard</a>
            </div>
             <div class="card">
                <h3>Teacher</h3>
              
                <a href="add_teacher.aspx">Add Teachers</a>
                <a href="ViewTeacherForm.aspx">View Teachers</a>
            </div>
             <div class="card">
                <h3>Students </h3> 
                <a href="add_student.aspx">Add Students</a>
                <a href="ViewStudentForm.aspx">View Students</a>
                <a href="AddmisionForm.aspx">Adminsion Students</a>
            </div>
            <div class="card">
                <h3>University</h3>
                <a href="AddUniForm.aspx">Add Universty</a>
                <a href="ManageUniForm.aspx">View Universty</a>
            </div>
            <div class="card" >
                <h3>Time Table And Events</h3>
                 <a href="AddTimeForm.aspx">Add Time Table</a>
                <a href="AddEventForm.aspx">Add Events</a>

                 <a href="ViewTimeTableForm.aspx">View Time Table</a>
                <a href="ViewEventsForm.aspx">View Events</a>
            </div>

            <div class="card" >
                <h3>Grading Scheme</h3>
                 <a href="GradingSchemeForm.aspx">Add Grading Scheme</a>
                <a href="AddEventForm.aspx">View Scheme</a>

             
            </div>
        </div>


    </div>

    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
