<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Partner.ascx.cs" Inherits="aktech.Usercontrols.Partner" %>

<div class="bl partner">
    <div class="s-block list-partner"> 
    <script type="text/javascript">
			$(document).ready(function(){
			$('.sl-sp').bxSlider({
				slideWidth:180,
				minSlides: 1,
				maxSlides: 6,
				moveSlides: 1,
				slideMargin: 10,
				speed: 1000,
				auto:true, 
				controls: false,
				pause: 2000,
				autoHover: true,
				});
		});
   		</script>
    <div class="sl-sp">
        <asp:Repeater ID="rptAds" runat="server">
            <ItemTemplate>                 
                <figure><%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("Ad_Item_Desc"))%></figure>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </div>
</div>