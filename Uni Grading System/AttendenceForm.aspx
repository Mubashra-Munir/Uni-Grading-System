<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttendenceForm.aspx.cs" Inherits="Uni_Grading_System.AttendenceForm" %>

<!DOCTYPE html>
<html>
<head>
    <title>Attendance Form</title>
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="border p-4 m-atuo bg-success text-white">
              <button class="bg-danger text-white"> 
    <a href ="TeacherDashboardForm.aspx" class="bg-danger text-white">BACK</a>
</button>
    <div class="container mt-5">
          
        <h2>Attendance Form</h2>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="txtDate">Date:</label>
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" placeholder="Select Date" TextMode="Date" />
            </div>

           <div class="form-group">
                <label for="ddlStudentName">Student Name:</label>
               <asp:DropDownList ID="ddlStudentName" runat="server" CssClass="form-control" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
            </div>

            <div class="form-group">
                <label>Attendance Status:</label>
                <div class="form-check">
                   <label for="radioPresent"></label>
                     <asp:RadioButton ID="radioPresent" runat="server" Text="Present" GroupName="statusGroup" Checked="true" />
                </div>
                <div class="form-check">
                    <label for="radioAbsent"></label>
                    <asp:RadioButton ID="radioAbsent" runat="server" Text="Absent" GroupName="statusGroup" />
                </div>
                <div class="form-check">
                    <label for="radioLeave"></label>
                    <asp:RadioButton ID="radioLeave" runat="server" Text="Leave" GroupName="statusGroup" />
                </div>
            </div>
            <div class="form-group">
                <label for="txtDescription">Description:</label>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" placeholder="Description" TextMode="MultiLine" />
            </div>

             <asp:Button ID="btnUpload" runat="server" Text="INSERT" OnClick="btnUpload_Click"  CssClass="btn btn-danger" />

        </form>
    </div>
        </div>
</body>
</html>

