<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="UserControls_Banner" %>
<div class="flexslider">
    <ul class="slides">
        <asp:Repeater ID="repeaterServicesPart1" runat="server">
            <ItemTemplate>
                <li>
                    <asp:Image ID="img1" runat="server" ImageUrl='<%#("~/Resources/Images/Banner/Thumbs/" + Eval("display_image_path"))%>'
                               AlternateText="" title='<%# Eval("banner_summery") %>' />
                </li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
</div>
<script type="text/javascript">
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            start: function(slider) {
                $('body').removeClass('loading');
            }
        });
    });
</script>