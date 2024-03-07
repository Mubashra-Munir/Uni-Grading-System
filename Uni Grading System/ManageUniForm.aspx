<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUniForm.aspx.cs" Inherits="Uni_Grading_System.ManageUniForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Universities List</title>
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
        <h1>Universities List</h1>
        <hr />
        <div class="table-responsive">
            <asp:GridView ID="GridViewUni" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" OnRowEditing="GridViewUni_RowEditing" OnSelectedIndexChanged="GridViewUni_SelectedIndexChanged" DataKeyNames="uid" OnRowDeleting="GridViewUni_RowDeleting" OnRowUpdating="GridViewUni_RowUpdating" OnRowCancelingEdit="GridViewUni_RowCancelingEdit">
                <Columns>
                     <asp:BoundField DataField="uid" HeaderText="ID" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="imgUniversity" runat="server" ImageUrl='<%# GetImagePath(Eval("image")) %>' AlternateText="University Image" Height="100" Width="100" />
            </ItemTemplate>
        </asp:TemplateField>
                   <asp:BoundField DataField="name" HeaderText="Name" />
                   <asp:BoundField DataField="email" HeaderText="Email" />
                   <asp:BoundField DataField="phone" HeaderText="Phone" />
                   <asp:BoundField DataField="address" HeaderText="Address" />
                   <asp:BoundField DataField="details" HeaderText="Details" />
                 

                    <asp:CommandField ShowEditButton="True" ButtonType="Button" HeaderText="Edit" EditText="Edit" CancelText="Cancel" UpdateText="Update" />
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" HeaderText="Delete" DeleteText="Delete" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
