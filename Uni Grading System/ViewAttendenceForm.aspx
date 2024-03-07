<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAttendenceForm.aspx.cs" Inherits="Uni_Grading_System.ViewAttendenceForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Attendance</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="container mt-5">
            <h2>View Attendance</h2>
            <asp:GridView ID="GridViewAttendance" runat="server" CssClass="table table-bordered table-striped">
               
            </asp:GridView>
        </div>
    </form>
</body>
</html>
