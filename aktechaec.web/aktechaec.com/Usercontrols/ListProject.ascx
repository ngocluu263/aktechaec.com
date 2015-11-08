<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListProject.ascx.cs" Inherits="aktech.Usercontrols.ListProject" %>
<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<div class="container">
    <uc1:Path ID="Path1" runat="server" />
    <div class="wmn content">
    <h1 class="tt-main"> <span><asp:Label ID="Lbtitle" runat="server"></asp:Label></span></h1>
    <div class="iblock list-media-box">
        <asp:Repeater ID="Rplistpro" runat="server">
        <ItemTemplate>
        <article class="media-box">
            <div class="wmn inner-media-box">
            <div class="bg-hover"></div>
            <figure class="photo-media-box">
                <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">
                    <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" /></a>
            </figure>
            <div class="text-media-box">
            <h2 class="tt-media-box"> 
                <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">
                    <%# Eval("NEWS_TITLE") %></a>
            </h2>
            <p class="des-media-box"><%# Eval("NEWS_DESC") %></p>
            </div>
            <p><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>" class="btn-c btn-news">Chi tiết</a></p>
            </div>
        </article>
        </ItemTemplate>
        </asp:Repeater>
        <p class="pagination clearfix"><asp:Literal ID="ltrPage" runat="server"></asp:Literal></p>
    </div>
    </div>
</div>