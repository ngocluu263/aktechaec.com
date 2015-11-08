<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListNews.ascx.cs" Inherits="aktech.Usercontrols.ListNews" %>
<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<div class="container">
    <uc1:Path ID="Path1" runat="server" />
    <div class="wmn content">
        <h1 class="tt-main"> <span><asp:Label ID="lbNewsTitle" runat="server"></asp:Label></span></h1>
        <div class="iblock list-media media-wmn">
        <asp:Repeater ID="rptlistnews" runat="server">
        <ItemTemplate>
            <article class="media">
                <div class="wmn inner-media">
                <div class="bg-hover-left"></div>
                <figure class="photo-media">
                    <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL"))%>">
                        <img src="<%# GetImageT(Eval("NEWS_ID"), Eval("NEWS_IMAGE3"))%>" /></a>
                </figure>
                <div class="text-media">
                <h2 class="tt-media"> <a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL"))%>">
                    <%# Eval("NEWS_TITLE")%></a></h2>
                <p class="post-datetime"><%# Eval("NEWS_PUBLISHDATE","{0:dd/MM/yyyy}")%></p>
                <p class="des-media"><%# Eval("NEWS_DESC")%></p>
                </div>
                <p><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL"))%>" class="learnmore btn-news-detail">Chi tiết</a></p>
                </div>
            </article>
        </ItemTemplate>
        </asp:Repeater>
        <p class="pagination clearfix"><asp:Literal ID="ltrPage" runat="server"></asp:Literal></p>
        </div>
    </div>
</div>