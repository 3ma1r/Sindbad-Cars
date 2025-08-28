<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userregister.aspx.cs" Inherits="Sindbad_Cars.Userregister" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            vertical-align: top;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="tel"],
        .form-group input[type="password"] {
            width: calc(100% - 10px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .form-group input[type="text"]::placeholder,
        .form-group input[type="email"]::placeholder,
        .form-group input[type="tel"]::placeholder,
        .form-group input[type="password"]::placeholder {
            color: #999;
        }

        .btn-register {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-register:hover {
            background-color: #0056b3;
        }
        .auto-style1 {
            text-align: center;
        }
         .btn-purchase {
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            float: right;
            margin-top: -50px; 
            margin-right: 20px;
            transition: background-color 0.3s ease;
        }
         .btn-purchase2 {
    background-color: #28a745;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    float: left;
    transition: background-color 0.3s ease;
}

        .btn-purchase:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="Phurcase.aspx" class="btn-purchase">Purchase</a>
        <a href="index.aspx" class="btn-purchase2">Back to home</a>
        <h2>Registration Form</h2>
        <p class="auto-style1">You need to register before purchasing</p>
        <form id="form1" runat="server">
            <table align="center">
                <tr>
                    <td>ClientID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your ClientID"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Forename</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your Forename"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Surname</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your Surname"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address Line 1</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter your Address"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address Line 2</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter your Address 2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Town</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter your Town"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Postcode</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter your Postcode"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone number</td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" placeholder="Enter your Phone number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mobile number</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" placeholder="Enter your Mobile number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn-register" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
