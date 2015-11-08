<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ServicesNewsHome.ascx.cs" Inherits="aktech.Usercontrols.ServicesNewsHome" %>

<%@ Register src="ContactTool.ascx" tagname="ContactTool" tagprefix="uc2" %>

<section class="wmn services">
    <div class="container">
    <div class="inner-services">
    <div class="line"></div>
    <div class="col8 col-ser">
        <h3 class="tt-main">Dịch vụ tiêu biểu</h3>
        <div class="iblock list-ser">
        <asp:Repeater ID="rptServices" runat="server">
        <ItemTemplate>
            <article class="ser">
            <div class="inner-ser">
                <figure class="photo-ser">
                    <a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">
                        <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" /></a>
                </figure>
                <div class="text-ser">
                    <h2 class="tt-ser"><a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a></h2>
                    <p class="des-ser"><%# Eval("NEWS_DESC")%></p>
                </div>
            </div>
            </article>
        </ItemTemplate>
        </asp:Repeater>
        </div>
        <!--end block-->
        <uc2:ContactTool ID="ContactTool1" runat="server" />
    </div>
    <div class="col4 col-news">
        <h3 class="tt-main">Tin tức mới</h3>
        <div class="iblock list-media media-right">

        <asp:Repeater ID="rptNews" runat="server">
        <ItemTemplate>
            <article class="media">
            <div class="inner-media">
            <figure class="photo-media">
                <a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">
                    <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" /></a>
            </figure>
            <div class="text-media">
                <h2 class="tt-media"><a href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a></h2>
                <p class="post-datetime"><small><%# Eval("NEWS_PUBLISHDATE","{0:dd/MM/yyyy}")%></small></p>
                <p class="des-media"><%# Eval("NEWS_DESC")%><a class="more" href="<%# GetLinkNews(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"> Chi tiết</a></p>
            </div>
            </div>
            </article>
        </ItemTemplate>
        </asp:Repeater>

        </div>
    </div>
    </div>
    </div>
</section>