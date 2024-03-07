<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEventForm.aspx.cs" Inherits="Uni_Grading_System.AddEventForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Event</title>
    
    <!-- Bootstrap CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="border p-2 m-3 bg-secondary text-white">
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Add Event</h2>
            <div class="mb-3 mt-20">
                <label for="txtTitle" class="form-label">Event Title:</label>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Add your event title"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtDate" class="form-label">Event Date:</label>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control" placeholder="Add date"></asp:TextBox>
            </div>
            <div class="row">
                <div class="col">
                    <label for="txtStartTime" class="form-label">Start Time:</label>
                    <asp:TextBox ID="txtStartTime" runat="server" TextMode="Time" CssClass="form-control" placeholder="Enter start time"></asp:TextBox>
                </div>
                <div class="col">
                    <label for="txtEndTime" class="form-label">End Time:</label>
                    <asp:TextBox ID="txtEndTime" runat="server" TextMode="Time" CssClass="form-control" placehoder="Enter end time" ></asp:TextBox>
                </div>
            </div>
            <div class="mb-3">
                <label for="txtLocation" class="form-label">Location:</label>
                <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" placeholder="Add your location" ></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtDescription" class="form-label">Description:</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" CssClass="form-control" placeholder="Add description"></asp:TextBox>
            </div>
            <asp:Button ID="btnAddEvent" runat="server" Text="INSERT" OnClick="btnAddEvent_Click" CssClass="btn btn-warning" />
        </div>
    </form>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        </div>
</body>
</html>
