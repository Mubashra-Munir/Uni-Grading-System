<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_assignment.aspx.cs" Inherits="Uni_Grading_System.add_assignment" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Assignment</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="border p-2 m-3 bg-info text-white">
    <form id="form1" runat="server">
          
          <button class="bg-info text-white"><a href ="TeacherDashboardForm.aspx" class="bg-info text-white">BACK</a></button>
        <div class="container mt-5">

            <h1>Add Assignment</h1>
            <div class="form-group">
                <label for="txtTitle">Assignment Title:</label>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Enter Your Title" />
            </div>
            <div class="form-group">
                <label for="ddlAssignmentType">Assignment Type:</label>
                <asp:DropDownList ID="ddlAssignmentType" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Type" Value="" />
                    <asp:ListItem Text="Homework" Value="Homework" />
                    <asp:ListItem Text="Project" Value="Project" />
                  
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtMaxScore">Maximum Score:</label>
                <asp:TextBox ID="txtMaxScore" runat="server" CssClass="form-control" placeholder="Enter Your Score" />
            </div>
            <div class="form-group">
                <label for="txtDueDate">Due Date:</label>
                <asp:TextBox ID="txtDueDate" runat="server" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="form-group">
                <label for="ddlCourse">Course:</label>
                <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control" placholder="Enter Your Cource">
                    <asp:ListItem Text="Select Course" Value="" />
                    <asp:ListItem Text="English" Value="English" />
                    <asp:ListItem Text="Math" Value="Math" />
                    <asp:ListItem Text="Science" Value="Science" />
                    <asp:ListItem Text="Other" Value="other" />
                  
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtAdditionalNotes">Additional Notes:</label>
                <asp:TextBox ID="txtAdditionalNotes" runat="server" CssClass="form-control" placeholder="Enter Your Notes" TextMode="MultiLine" Rows="4" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="INSERT" OnClick="btnSubmit_Click" CssClass="btn btn-warning" />
            </div>
        </div>
    </form>
</body>
</html>

