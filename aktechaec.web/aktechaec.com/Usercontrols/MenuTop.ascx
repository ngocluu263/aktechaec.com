<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTop.ascx.cs" Inherits="aktech.Usercontrols.MenuTop" %>

<nav class="menu" role="navigation">
    <div class="container">
    <div class="navx"><a href="#" id="pull" class="clearfix"><i class="openIco fa fa-align-justify"></i> <i class="closeIco fa fa-remove"></i></a>
    <ul>
    <asp:Repeater ID="Rpmenu" runat="server">
        <ItemTemplate>
            <li class='<%# GetStyleActive(Eval("CAT_SEO_URL"),Eval("CAT_URL"))%>'> <h3><a href="<%#GetLink(Eval("CAT_URL"),Eval("CAT_SEO_URL"),Eval("CAT_ID")) %>"><%# Eval("CAT_NAME") %></a></h3>
                <asp:Repeater ID="rptItems" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                <HeaderTemplate>
                <ul>
                </HeaderTemplate>
                <ItemTemplate>
                <li> 
                    <h4><a title="<%# Eval("CAT_NAME") %>" href="<%#GetLink(Eval("CAT_URL"),Eval("CAT_SEO_URL"),Eval("CAT_ID")) %>"><%# Eval("CAT_NAME") %></a></h4>
                        <asp:Repeater ID="rptItems1" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                        <HeaderTemplate>
                        <ul>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li><h5><a href="<%#GetLink(Eval("CAT_URL"),Eval("CAT_SEO_URL"),Eval("CAT_ID")) %>"><%# Eval("CAT_NAME") %></a></h5></li>
                        </ItemTemplate>
                        <FooterTemplate>
                        </ul>
                        </FooterTemplate>
                        </asp:Repeater>
                </li>
                </ItemTemplate>
                <FooterTemplate>
                </ul>
                </FooterTemplate>
                </asp:Repeater>
            </li>
        </ItemTemplate>
    </asp:Repeater>
    </ul>
    </div>
    <div class="social"> 
        <span class="hl"><i class="fa fa-phone-square"></i>+84 912 345 678</span> 
        <asp:Repeater ID="rptSocialNetwork" runat="server">
            <ItemTemplate>
                <%# Bind_SocialNetwork(Eval("ONLINE_TYPE"), Eval("ONLINE_DESC"), Eval("ONLINE_NICKNAME"))%>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </div>
</nav>