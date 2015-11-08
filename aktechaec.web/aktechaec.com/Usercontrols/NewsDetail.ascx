<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDetail.ascx.cs" Inherits="aktech.Usercontrols.NewsDetail" %>

<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc1" %>
<%@ Register src="ContactTool.ascx" tagname="ContactTool" tagprefix="uc2" %>

<div class="container">
    <uc1:Path ID="Path1" runat="server" />
    <div class="wmn content">
 	    <section class="detail">
            <div class="line-news"></div>
            <div class="col12 col-detail-news">
                <article class="iblock detail-news">
                    <h1 class="tt-detail-news"><asp:Literal ID="lbNewsTitle" runat="server"/></h1>
                    <p class="postDatetime"><asp:Literal ID="lbNewsDate" runat="server"/></p>
                    <!-- begin-->
                    <asp:Literal ID="liHtml" runat="server"></asp:Literal>
                    <!-- end--> 
                </article>
                <!--<p class="social-blog"><span class="shareBox">  </span><a class="facebook"><i class="fa fa-facebook"></i></a> <a class="google-plus"><i class="fa fa-google-plus"></i></a> <a class="twitter"><i class="fa fa-twitter"></i></a> </p>-->
                <uc2:ContactTool ID="ContactTool1" runat="server" />
            </div>
        </section>
    </div>
 </div>