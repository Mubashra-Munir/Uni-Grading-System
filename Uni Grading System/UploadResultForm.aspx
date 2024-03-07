<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadResultForm.aspx.cs" Inherits="Uni_Grading_System.UploadResultForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Exam Results</title>
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="border p-4 m-atuo bg-light text-dark">
    <form id="form1" runat="server">
        <button class="bg-danger text-white"> 
        <a href ="TeacherDashboardForm.aspx" class="bg-danger text-white">BACK</a>
    </button>
        <div class="container mt-5">
            <h2 class="mb-4">Upload Exam Results</h2>


            <div class="form-group">
                <label for="ddlStudentName">Student Name:</label>
               <asp:DropDownList ID="ddlStudentName" runat="server" CssClass="form-control" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="txtDate" class="form-label">Date:</label>
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" placeholder="Select Date" TextMode="Date" />
            </div>

             <div class="mb-3">
                <label for="txtRollNo" class="form-label">RollNo:</label>
                <asp:TextBox ID="txtRollNo" runat="server" CssClass="form-control" />
            </div>

            
             <div class="mb-3">
                <label for="txtTotalMarks" class="form-label">Total Marks:</label>
                <asp:TextBox ID="txtTotalMarks" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtTotalMarks_TextChanged" />
            </div>

            <div class="mb-3">
                <label for="txtObtainMarks" class="form-label">Obtain Marks:</label>
                <asp:TextBox ID="txtObtainMarks" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtObtainMarks_TextChanged" />
            </div>

             <div class="mb-3">
                <label for="txtgrade" class="form-label">Grade:</label>
                <asp:TextBox ID="txtgrade" runat="server" CssClass="form-control" ReadOnly="true" />
            </div>
            
       <div class="form-group">
                <label for="ddlStatus">Result Status:</label>
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Status" Value="select" />
                    <asp:ListItem Text="Pass" Value="Pass" />
                    <asp:ListItem Text="Fail" Value="Fail" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnUpload" runat="server" Text="INSERT" OnClick="btnUpload_Click" CssClass="btn btn-warning" />
      
        </div>
    </form>
        </div>
</body>
</html>
