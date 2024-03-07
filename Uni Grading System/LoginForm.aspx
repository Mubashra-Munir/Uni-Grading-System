<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Uni_Grading_System.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #222;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            margin-top: 100px;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            border-radius: 10px 10px 0 0;
        }
        .card-body {
            padding: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-control {
            border-radius: 5px;
        }
        .btn-dark {
            background-color: #333;
            border-color: #444;
        }
        .btn-dark:hover {
            background-color: #999;
            border-color: #999;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div class="container">
        <div class="card">
            <div class="card-header">
                <h3>Login</h3>
            </div>
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label for="txtUsername">Email:</label>
                        <asp:TextBox ID="txtUsername"  runat="server" class="form-control" TextMode="SingleLine" placeholder="Enter email" ></asp:TextBox>
                         </div>
                    <div class="form-group">
                        <label for="txtPassword">Password:</label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" placeholder="Enter your password" ></asp:TextBox>
                        
                    </div>
                     <div class="form-group">
                <label for="ddltype">Type:</label>
                <asp:DropDownList ID="ddltype" runat="server" class="form-control">
                    <asp:ListItem Text="Select Type" Value="select type"></asp:ListItem>
                    <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                    <asp:ListItem Text="Teacher" Value="Teacher"></asp:ListItem>
                    <asp:ListItem Text="Student" Value="Student"></asp:ListItem>
                  
               </asp:DropDownList>
            </div>

             <div class="form-group">
                <asp:Button ID="btnLogin" runat="server"  Text="LOGIN" OnClick="btnLogin_Click" class="btn btn-dark btn-block"/>
            </div>
                   
                </form>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
