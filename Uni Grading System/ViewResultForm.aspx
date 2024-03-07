<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewResultForm.aspx.cs" Inherits="Uni_Grading_System.ViewResultForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Exam Results</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2 class="mb-4">View Exam Results</h2>
            <asp:GridView ID="GridViewResults" runat="server" CssClass="table table-bordered table-hover">
               
            </asp:GridView>
        </div>
    </form>
</body>
</html>
