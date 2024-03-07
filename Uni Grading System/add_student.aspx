﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_student.aspx.cs" Inherits="Uni_Grading_System.add_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Add Student</title>
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            padding: 20px;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
        }

        .form-section {
            margin-bottom: 20px;
        }
        .form-check label {
    display: block;
    padding-left: 1.25rem;
}

.form-check input[type="radio"] {
    position: absolute;
    margin-top: 0.3rem;
    margin-left: -1.25rem;
}



    </style>
</head>
<body>
    <div class="border p-2 m-3 bg-secondary text-white">
      <form id="form1" runat="server">
            <button class="bg-secondary text-white"> 
        <a href ="AdminForm.aspx" class="bg-secondary text-white">BACK</a>
    </button>
        <div class="container">
        <h2>Add Student</h2>
        <form>
            <div class="form-section">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
        
            </div>
            <div class="form-section">
                <label for="txtEmail">Email:</label>
                  <asp:TextBox ID="txtEMail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                     </div>


              <div class="form-section">
                <label for="txtPassword">Password:</label>
                  <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                     </div>

       
            <div class="form-section">
                <label for="txtAge">Age in years:</label>
                 <asp:TextBox ID="txtAge" runat="server" class="form-control" placeholder="Enter Age in years"></asp:TextBox>
            </div>
            <div class="form-section">
                <label for="txtPhone">Phone:</label>
                 <asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="Enter Phone No"></asp:TextBox>
            </div>


            <div class="form-section">
                <label for="txtDate">Date Of Birth:</label>
                <asp:TextBox ID="TetxtDate" runat="server" class="form-control" placeholder="Enter Date Of Birth" TextMode="Date"></asp:TextBox>
            </div>


            <div class="form-section">
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
               
            </div>
<div class="form-group">
    <label for="rblGender" class="control-label">Gender</label>
    <asp:RadioButtonList ID="rblGender" runat="server" CssClass="form-check">
        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
    </asp:RadioButtonList>
</div>

                
            <div class="form-section">
                <asp:Button ID="btnSubmit" runat="server" Text="INSERT" OnClick="btnSubmit_Click" class="btn btn-white" />           
            </div>
        </form>
    </div>
    </form>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </div>
</body>
</html>