<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddmisionForm.aspx.cs" Inherits="Uni_Grading_System.AddmisionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Student Admission Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Add your custom CSS styling here */
        .form-group label {
            font-weight: bold;
        }
        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="border p-2 m-3 bg-dark text-white">
    <form id="form1" runat="server">
          <button class="bg-white text-white"> 
        <a href ="AdminForm.aspx" >BACK</a>
    </button>
       <div class="container mt-5">
            <h2 class="mb-3">Student Admission Form</h2>
            <hr />

            <div class="form-group">
                <label for="ddlStudentName">Student Name:</label>
               <asp:DropDownList ID="ddlStudentName" runat="server" CssClass="form-control" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="txtAdmissionDate">Admission Date:</label>
                <asp:TextBox ID="txtAdmissionDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtClass">Grade /Class:</label>
                <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" placeholder="Enter Your Class/Grade" ></asp:TextBox>
            </div>

           
            <div class="form-group">
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter Your Address" ></asp:TextBox>
            </div>

           <div class="form-group">
                <label for="txtContect">Contact Number:</label>
                <asp:TextBox ID="txtContect" runat="server" CssClass="form-control" placeholder="Enter Your Contacts" ></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter Your Email" ></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtParentName">Parent/Guardian Name:</label>
                <asp:TextBox ID="txtParentName" runat="server" CssClass="form-control" placeholder="Enter Your Guardian Info" ></asp:TextBox>
            </div>

           <div class="form-group">
                <label for="txtParentContect">Parent/Guardian Contact Number:</label>
                <asp:TextBox ID="txtParentContect" runat="server" CssClass="form-control" placeholder="Enter Your Guardian Contact Info" ></asp:TextBox>
            </div>

           <div class="form-group">
                <label for="txtfee">Admission Fee:</label>
                <asp:TextBox ID="txtfee" runat="server" CssClass="form-control" placeholder="Enter Your Admission Fee" ></asp:TextBox>
            </div>
           <asp:Button ID="btnSubmit" runat="server" Text="INSERT" OnClick="btnSubmit_Click" CssClass="btn btn-danger" />
        </div>
           
    </form>
        </div>
</body>
</html>
