<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProjectDetail.ascx.cs" Inherits="aktech.Usercontrols.ProjectDetail" %>
<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<%@ Register src="ContactTool.ascx" tagname="ContactTool" tagprefix="uc2" %>
<div class="container">
    <uc1:Path ID="Path1" runat="server" />
    <div class="wmn content">
    <h1 class="tt-ser-dt"><asp:Label ID="LabelNEWS_TITLE" runat="server"></asp:Label></h1>
    <div class="iblock detail detail-services">
    <link rel="stylesheet"  href="/Resources/styles/lightslider.css"/>
    <script src="/Resources/scripts/lightslider.js"></script> 
    <script>
        $(document).ready(function () {

            $('#image-gallery').lightSlider({
                loop: true,
                keyPress: true,
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 1000,
                auto: true,
                loop: true,
                loop: true,
                keyPress: true,
                onSliderLoad: function () {
                    $('#image-gallery').removeClass('cS-hidden');
                }
            });
        });
    </script>
    <div class="col12 col-slide-servies">
        <div class="col-slide-ser">
        <div class="slide-ser-dt" style="background:#BCBCBC; padding:5px; border: solid 1px #fff">
        <div class="clearfix">
            <asp:Repeater ID="Rpalbumimg" runat="server">
                <HeaderTemplate>
                <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                </HeaderTemplate>
                    <ItemTemplate>
                        <li data-thumb="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMG_IMAGE1")) %>"> <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMG_IMAGE1")) %>" /> </li>
                    </ItemTemplate>
                <FooterTemplate>
                </ul>
                </FooterTemplate>
            </asp:Repeater>
        </div>
        </div>
        </div>
    </div>
    <section class="col12 col-detail-news">
        <article class="detail-news">
            <asp:Literal ID="liShowHtmChiTiet" runat="server"></asp:Literal>
        </article>
        <!--<p class="social-blog">
    <span class="shareBox">  </span>
     
        <a class="facebook"><i class="fa fa-facebook"></i></a> <a class="google-plus"><i class="fa fa-google-plus"></i></a> <a class="twitter"><i class="fa fa-twitter"></i></a> </p>-->
        <uc2:ContactTool ID="ContactTool1" runat="server" />
    </section>
    </div>
    </div>
</div>