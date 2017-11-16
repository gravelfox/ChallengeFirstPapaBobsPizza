<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeFirstPapaBobsPizza.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }
        .auto-style3 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/PapaBob.png" />
        <span class="auto-style1"><strong>Papa Bob&#39;s Pizza and Software</strong></span></div>
        <p>
            &nbsp;</p>
        <asp:RadioButton ID="babySizeRadio" runat="server" GroupName="size" Text="Baby Bob Size (10&quot;) - $10.00" />
        <br />
        <asp:RadioButton ID="mamaSizeRadio" runat="server" GroupName="size" Text="Mama Bob Size (13&quot;) - $13.00" />
        <br />
        <asp:RadioButton ID="papaSizeRadio" runat="server" GroupName="size" Text="Papa Bob Size (16&quot;) - $16.00" />
        <br />
        <br />
        <asp:RadioButton ID="thinCrustRadio" runat="server" GroupName="crust" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepCrustRadio" runat="server" GroupName="crust" Text="Deep Dish (+$2.00)" />
        <br />
        <br />
        <asp:CheckBox ID="peppBox" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="onionBox" runat="server" Text="Onions (+$0.75)" />
        <br />
        <asp:CheckBox ID="gPepBox" runat="server"  Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="rPepBox" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
        <asp:CheckBox ID="anchBox" runat="server" Text="Anchovies (+$2.00)" />
        <br />
        <br />
        <span class="auto-style2"><strong>Papa Bob&#39;s <span class="auto-style3">Special Deal</span></strong></span><p>
            Save $2.00 when you add Pepperoni, Green Pepper and Anchovies OR Pepperoni, Red Peppers and Onions to your pizza!</p>
        <p>
            <asp:Button ID="orderButton" runat="server" OnClick="orderButton_Click" Text="Order" />
&nbsp;
            <asp:Label ID="messageLabel" runat="server"></asp:Label>
        </p>
        <p>
            Total:&nbsp; <asp:Label ID="priceLabel" runat="server" Text="0.00" style="font-weight: 700"></asp:Label>
        </p>
    </form>
    <p>
        Sorry, at this time, you can only see the price of what something would cost, you can&#39;t actually get pizza. Thanks, Obama.</p>
</body>
</html>
