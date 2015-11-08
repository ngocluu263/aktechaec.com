<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="aktech.Usercontrols.Header" %>

<header class="header" role="banner">
    <div class="container">
        <asp:Repeater ID="Rplogo" runat="server">
            <ItemTemplate>
                <%# Getbanner(Eval("BANNER_TYPE"),Eval("BANNER_FIELD1"), Eval("BANNER_ID"), Eval("BANNER_FILE"))%>
            </ItemTemplate>
        </asp:Repeater>
        <p class="search">
        <input class="txt-search" type="text" placeholder="Tìm kiếm…"/>
        <a class="btn-search"><i class="fa fa-search"></i></a> </p>
    </div>
</header>