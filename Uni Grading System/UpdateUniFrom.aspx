<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateUniFrom.aspx.cs" Inherits="Uni_Grading_System.UpdateUniFrom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Unversity Data</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            padding: 20px;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
        }

        .form-section {
            margin-bottom: 20px;
        }
        .form-check label {
    display: block;
    padding-left: 1.25rem;
}

.form-check input[type="radio"] {
    position: absolute;
    margin-top: 0.3rem;
    margin-left: -1.25rem;
}



    </style>

</head>
<body>
    <div class="border p-4 m-atuo bg-danger text-white">
    <form id="form1" runat="server">
        <div class="container">
        <h2>Update Universty</h2>
        <form>
            <div class="form-section">
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Campus  name"></asp:TextBox>
        
            </div>
            <div class="form-section">
                <label for="txtEmail">Email:</label>
                  <asp:TextBox ID="txtEMail" runat="server" class="form-control" placeholder="Enter Email"></asp:TextBox>
                     </div>


                  
            
            <div class="form-section">
                <label for="txtPhone">Phone:</label>
                 <asp:TextBox ID="txtPhone" runat="server" class="form-control" placeholder="Enter Phone No"></asp:TextBox>
            </div>


            
            <div class="form-section">
                <label for="txtAddress">Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Enter Address" TextMode="MultiLine"></asp:TextBox>
               
            </div>

            <div class="form-section">
                <label for="txtDetails">Additional Detials:</label>
                <asp:TextBox ID="txtDetails" runat="server" class="form-control" placeholder="Enter Details" TextMode="MultiLine"></asp:TextBox>
               
            </div>
            <div class="form-group">
                <label for="fileUpload">File Upload:</label>
                <asp:FileUpload ID="fileUpload" runat="server" />
               
            </div>


                            
            <div class="form-section">
               <asp:Button ID="btnSubmit" runat="server" Text="INSERT"  class="btn btn-dark btn-block" />
                
            </div>
        </form>
    </div>
    </form>
        </div>
</body>
</html>
