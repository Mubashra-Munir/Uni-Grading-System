<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTimeForm.aspx.cs" Inherits="Uni_Grading_System.AddTimeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Time Table</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <button> 
        <a href ="AdminForm.aspx">back</a>
    </button>
        <div class="container">
            <h1>Time Table</h1>
            <hr />
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="ddlDay">Day:</label>
                        <asp:DropDownList ID="ddlDay" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Monday" Value="Monday" />
                            <asp:ListItem Text="Tuesday" Value="Tuesday" />
                            <asp:ListItem Text="Wednesday" Value="Wednesday" />
                            <asp:ListItem Text="Thursday" Value="Thursday" />
                            <asp:ListItem Text="Friday" Value="Friday" />
                            <asp:ListItem Text="Saturday" Value="Saturday" />
                            <asp:ListItem Text="Sunday" Value="Sunday" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtForTime">From Time:</label>
                        <asp:TextBox ID="txtForTime" runat="server"  CssClass="form-control" TextMode="Time"></asp:TextBox>
                    </div>

                     <div class="form-group">
                        <label for="txttoTime">To Time:</label>
                        <asp:TextBox ID="txttoTime" runat="server"  CssClass="form-control" TextMode="Time"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtCourse">Course/Subject:</label>
                        <asp:TextBox ID="txtCourse" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="txtClass">Class/Section:</label>
                        <asp:TextBox ID="txtClass" runat="server" CssClass="form-control" ></asp:TextBox>                        
                    </div>
                    <div class="form-group">
                        <label for="txtTeacher">Teacher:</label>
                         <asp:DropDownList ID="ddlTeacher" runat="server" CssClass="form-control">
       
                         </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="txtRoom">Room/Location:</label>
                        <asp:TextBox ID="txtRoom" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtAdditionalInfo">Additional Information:</label>
                        <asp:TextBox ID="txtAdditionalInfo" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
            </div>
        </div>
    </form>
</body>
</html>
