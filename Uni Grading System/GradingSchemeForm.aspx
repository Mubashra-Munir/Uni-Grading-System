<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GradingSchemeForm.aspx.cs" Inherits="Uni_Grading_System.GradingSchemeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grading Scheme Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
</head>
<body>
    <div class="border p-4 m-atuo bg-warning text-white">
    <form id="form1" runat="server">
          <button class="bg-danger text-white"> 
        <a href ="AdminForm.aspx" class="bg-danger text-white">BACK</a>
    </button>
        <div class="container mt-5">
            <h2>Grading Scheme Form</h2>
            <div class="form-group">
                <label for="txtClass">Class Name:</label>
                 <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" placeholder="Enter Class Name"  />
            </div>
            <div class="form-group">
                <label for="txtSubject">Subject:</label>
                <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Enter Subject Name"  />
            </div>
             <div class="form-group">
                <label>Assignmnet Type:</label>

                 <div class="form-check">
                   <label for="radioAssignments"></label>
                     <asp:RadioButton ID="radioAssignments" runat="server" Text="Assignments" GroupName="statusGroup" Checked="true" />
                </div>
                <div class="form-check">
                   <label for="radioQuizzes"></label>
                     <asp:RadioButton ID="radioQuizzes" runat="server" Text="Quizzes" GroupName="statusGroup" />
                </div>
                <div class="form-check">
                    <label for="radiomidterm"></label>
                    <asp:RadioButton ID="radiomidterm" runat="server" Text="Midterm" GroupName="statusGroup" />
                </div>
                <div class="form-check">
                    <label for="radiofinalterm"></label>
                    <asp:RadioButton ID="radiofinalterm" runat="server" Text="Finalterm" GroupName="statusGroup" />
                </div>
            </div>
            <div class="form-group">
                <label for="txtTotalMarks">Total Marks:</label>
                <asp:TextBox ID="txtTotalMarks" runat="server" CssClass="form-control" placeholder="Total Marks"  />

            </div>
            <div class="form-group">
                <label for="txtPassingMarks">Passing Marks:</label>
                  <asp:TextBox ID="txtPassingMarks" runat="server" CssClass="form-control" placeholder="Passing Marks"  />

            </div>
           <asp:Button ID="btnUpload" runat="server" Text="INSERT" OnClick="btnUpload_Click" CssClass="btn btn-danger" />
        </div>
    </form>
        </div>
</body>
</html>
