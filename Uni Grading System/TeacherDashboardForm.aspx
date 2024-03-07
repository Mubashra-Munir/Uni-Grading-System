<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherDashboardForm.aspx.cs" Inherits="Uni_Grading_System.TeacherDashboardForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Dashborad</title>
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
            background-color:#999;
            padding:20px;

        }
        .sidebar h2{
            margin-top:0;
            margin-bottom:20px;
            font-size:30px;
            font-weight:25px;
            color:#fff;
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
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="sidebar">
                        <h2>Teacher Dashboard</h2>
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link" href="#">Dashboard</a>
                                 <a class="nav-link" href="LoginForm.aspx">Logout</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="content">
                        <h2>Welcome, Teacher </h2>
                      
                        <div class="card">
                            <h3>Dashboard</h3>
                            <p>Here you can view various statistics and reports.</p>
                            <a href="#">View Dashboard</a>
                        </div>
                        <div class="card">
                            <h3>Assignment </h3>
                            <a href="add_assignment.aspx">Add Assignment</a>
                           
                        </div>
                        <div class="card">
                            <h3>Attendence</h3>
                          
                            <a href="AttendenceForm.aspx">Mark Attendence</a>
                        </div>
                        <div class="card">
                            <h3>Results</h3>
                           
                            <a href="UploadResultForm.aspx">Upload Result</a>
                            
                        </div>
                     
                         <div class="card">
                            <h3>Events</h3>
                            <a href="ViewEventsForm.aspx">View Events</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
