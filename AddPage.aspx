<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPage.aspx.cs" Inherits="AddPage" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Page</title>
    <style type="text/css">
        .containerdiv {
            width: 500px;
            margin: 20px auto;
            border: 1px solid #444;
            padding: 20px;
            border-radius: 14px;
            background-color: rgba(177, 173, 173, 0.18);
        }
        input[type="text"]
        {
            padding:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="containerdiv">
                <h2>Add Pages</h2>
                <hr />
                <table>
                    <tr>
                        <td style="width: 100px;">Page Name
                        </td>
                        <td style="width: 350px;">
                            <asp:TextBox ID="txtPageName" runat="server" TextMode="SingleLine" Width="384" />
                        </td>
                    </tr>
                    <tr>
                        <td>Page Title</td>
                        <td>
                            <asp:TextBox ID="txtPageTitle" runat="server" TextMode="SingleLine" Width="384" /></td>
                    </tr>
                    <tr>
                        <td>Page Content</td>
                        <td>
                            <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Width="350" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" OnClientClick="return fnCheckSubmit();" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({ selector: 'textarea' });
    </script>
</body>
</html>
