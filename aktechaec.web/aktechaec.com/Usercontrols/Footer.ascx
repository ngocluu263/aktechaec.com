<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Footer.ascx.cs" Inherits="aktech.Usercontrols.Footer" %>

<footer class="footer" role="contentinfo">
    <div class="container">
    <div class="col-ft"> 
        <asp:Repeater ID="Rplogo" runat="server">
            <ItemTemplate>
                <%# Getlogo(Eval("BANNER_TYPE"),Eval("BANNER_FIELD1"), Eval("BANNER_ID"), Eval("BANNER_FILE"))%>
            </ItemTemplate>
        </asp:Repeater>
        <address class="address">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </address>
    </div>
    <asp:Repeater ID="Rpmenu_foot" runat="server">
    <ItemTemplate>
        <div class="col-ft">
        <p class="tt-ft"><%#Eval("CAT_NAME") %></p>
        <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
        <ItemTemplate>
            <p><a href="<%#GetLink_Cat(Eval("Cat_Url"),Eval("Cat_Seo_Url")) %>"><%#Eval("CAT_NAME") %></a></p>
        </ItemTemplate>
        </asp:Repeater>
        </div>
    </ItemTemplate>
    </asp:Repeater>
    <div class="col-ft">
    <p class="tt-ft"> Thống kê truy cập </p>
    <p class="stt-vs">Đang online: <b><asp:Literal EnableViewState="false" runat="server" ID="lblOnline" /></b> <br />
    Lượt truy cập: <b><asp:Literal EnableViewState="false" runat="server" ID="lblSum" /></b></p>
    </div>
    <div class="bottom-ft">
    <p class="copyright">Copyright © 2015 An Khang. All rights reserved. </p>
    </div>
    </div>
</footer>