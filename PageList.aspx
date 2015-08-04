<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageList.aspx.cs" Inherits="PageList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Available Pages</title>
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
                <h2>Available Pages</h2>
                <div>
                    <asp:GridView ID="grdPageList" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="PageId" HeaderText="PageId" />
                            <asp:BoundField DataField="Title" HeaderText="Title" />
                            <asp:BoundField DataField="Content" HeaderText="Content" />
                            <asp:BoundField DataField="PageName" HeaderText="Page Name" />
                            <asp:HyperLinkField HeaderText="PageUrl" DataTextField="PageUrl" DataNavigateUrlFields="PageUrl" DataNavigateUrlFormatString="~/Pages/{0}.aspx" Target="_blank" Text="Edit" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
