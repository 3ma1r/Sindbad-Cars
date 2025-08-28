<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phurcase.aspx.cs" Inherits="Sindbad_Cars.Phurcase" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Purchase Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-group:after {
            content: "";
            display: table;
            clear: both;
        }

        .form-group label {
            float: left;
            width: 40%;
        }

        .form-group input,
        .form-group select {
            float: left;
            width: 60%;
        }

        #creditCardFields {
            display: none;
        }

        .btn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        .btn:hover {
            background-color: #45a049;
        }
        .btn-home {
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            float: right;
            margin-top: -10px; 
            margin-right: 20px; 
            transition: background-color 0.3s ease;
        }

        .btn-home:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="index.aspx" class="btn-home">Back to Home</a>
        <h2>Vehicle Purchase Form</h2>
        <form id="purchaseForm" runat="server">
            <div class="form-group">
                <label for="vehicleID">Vehicle ID</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="regNumber">Registration Number</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="paymentType">Payment Type</label>
                <asp:DropDownList ID="DropDownList1" runat="server" onchange="showCreditCardFields()">
                    <asp:ListItem>select payment type</asp:ListItem>
                    <asp:ListItem>Credit Card</asp:ListItem>
                    <asp:ListItem>Cash</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="creditCardFields">
                <div class="form-group">
                    <label for="creditCardNumber">Credit Card Number</label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="cvv">CVV (4-digit code)</label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label for="paymentMode">Payment Mode</label>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Select payment mode</asp:ListItem>
                    <asp:ListItem>single payment</asp:ListItem>
                    <asp:ListItem>Installments</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn" />
            </div>
        </form>
    </div>
    <script>
        function showCreditCardFields() {
            var paymentType = document.getElementById("DropDownList1");
            var creditCardFields = document.getElementById("creditCardFields");
            if (paymentType.value === "Credit Card") {
                creditCardFields.style.display = "block";
            } else {
                creditCardFields.style.display = "none";
            }
        }
    </script>
</body>
</html>
