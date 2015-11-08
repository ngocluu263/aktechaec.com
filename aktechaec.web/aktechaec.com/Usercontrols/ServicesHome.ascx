<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServicesHome.ascx.cs" Inherits="aktech.Usercontrols.ServicesHome" %>

<div class="container">
    <div class="wmn content">
    <div class="col12 list-cate">
    <asp:Repeater ID="rptLoadData" runat="server">
    <ItemTemplate>
        <article class="cate">
            <div class="inner-cate">
            <figure class="img-cate"><img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" /></figure>
            <p class="date"><%# Eval("NEWS_PUBLISHDATE","{0:dd/MM/yyyy}")%></p>
            <h2 class="tt-cate"><a href='<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>'><%# Eval("NEWS_TITLE") %></a></h2>
            <p class="des-cate"><%# Eval("NEWS_DESC")%></p>
            <p><a class="learnmore" href='<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>'>Xem thêm</a></p>
            </div>
        </article>
    </ItemTemplate>
    </asp:Repeater>
    </div>
    </div>
</div>