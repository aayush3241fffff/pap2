<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="YourNamespace.User_Profile" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <style>
         body {
            background-color: #f5f5f5; /* Light gray background */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff; /* White container background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        .profile-details {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-picture {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 20px;
        }

        .btn-update, .btn-goal, .btn-begin, .btn-upload {
            background-color: #666; /* Gray button color */
            color: #fff;
            border: none;
            padding: 8px 20px;
            border-radius: 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-right: 10px;
        }

        .btn-update:hover, .btn-goal:hover, .btn-begin:hover, .btn-upload:hover {
            background-color: #888; /* Darker gray on hover */
        }

        .photo-container {
            margin-top: 20px;
            text-align: center;
        }

        .uploaded-photos {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .uploaded-photo {
            width: 100px;
            height: 100px;
            margin: 5px;
            object-fit: cover;
            border-radius: 5px;
        }

        #uploadInput {
            display: none;
        }

        .btn-upload-label {
            background-color: #666;
            color: #fff;
            padding: 8px 20px;
            border-radius: 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-right: 10px;
        }

        .btn-upload-label:hover {
            background-color: #888;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="profile-details">
                        <h2>Profile Details</h2>
                        <div class="form-group">
                            <label for="txtFullName">Full Name:</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtHeight">Height:</label>
                            <asp:TextBox ID="txtHeight" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtWeight">Weight:</label>
                            <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtUsername">Username:</label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
