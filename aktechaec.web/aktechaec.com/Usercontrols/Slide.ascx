<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slide.ascx.cs" Inherits="aktech.Usercontrols.Slide" %>

<figure class="slider" role="slider">
    <div class="container">
    <div class="col12">
    <div class="slide1">
        <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider"> 
            <asp:Repeater ID="rptAds" runat="server">
                <ItemTemplate>                 
                    <%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        </div>
    </div>
    </div>
    </div>
</figure>