<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContentPage.aspx.cs" Inherits="ContentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .containerdiv {
            width: 500px;
            margin: 20px auto;
            border: 1px solid #444;
            padding: 20px;
            border-radius: 14px;
            background-color: rgba(177, 173, 173, 0.18);
        }

        input[type="text"] {
            padding: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="containerdiv">
                <h2>
                    <asp:Label ID="lblTitle" runat="server" /></h2>
                <hr />
                <asp:Label ID="lblContent" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
