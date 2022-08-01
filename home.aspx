<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MagTech_Servers.home" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MagTech Servers</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
      <h1>MagTech Servers</h1>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="instance_id" HeaderText="instance_id" SortExpression="instance_id" />
                    <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:magtechConnectionString %>" SelectCommand="SELECT * FROM [magtechdata]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
