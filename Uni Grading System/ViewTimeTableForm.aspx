<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTimeTableForm.aspx.cs" Inherits="Uni_Grading_System.ViewTimeTableForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Time Table List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {
            padding: 20px;
        }
        .container {
            max-width: 800px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
        <h1>Time Table List</h1>
        <hr />
        <div class="table-responsive">
            <asp:GridView ID="GridViewTimeTbale" runat="server" CssClass="table table-striped">
                <Columns>
                   
                </Columns>
            </asp:GridView>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
