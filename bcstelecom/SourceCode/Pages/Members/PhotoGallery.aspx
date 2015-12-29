<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Member.master" AutoEventWireup="true"
    CodeFile="PhotoGallery.aspx.cs" Inherits="Pages_User_PhotoGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            /*
            *  Simple image gallery. Uses default settings
            */

            $('.fancybox').fancybox();

            /*
            *  Different effects
            */

            // Change title type, overlay closing speed
            $(".fancybox-effects-a").fancybox({
                helpers: {
                    title: {
                        type: 'outside'
                    },
                    overlay: {
                        speedOut: 0
                    }
                }
            });

            // Disable opening and closing animations, change title type
            $(".fancybox-effects-b").fancybox({
                openEffect: 'none',
                closeEffect: 'none',

                helpers: {
                    title: {
                        type: 'over'
                    }
                }
            });

            // Set custom style, close if clicked, change title type and overlay color
            $(".fancybox-effects-c").fancybox({
                wrapCSS: 'fancybox-custom',
                closeClick: true,

                openEffect: 'none',

                helpers: {
                    title: {
                        type: 'inside'
                    },
                    overlay: {
                        css: {
                            'background': 'rgba(238,238,238,0.85)'
                        }
                    }
                }
            });

            // Remove padding, set opening and closing animations, close if clicked and disable overlay
            $(".fancybox-effects-d").fancybox({
                padding: 0,

                openEffect: 'elastic',
                openSpeed: 150,

                closeEffect: 'elastic',
                closeSpeed: 150,

                closeClick: true,

                helpers: {
                    overlay: null
                }
            });

            /*
            *  Button helper. Disable animations, hide close button, change title type and content
            */

            $('.fancybox-buttons').fancybox({
                openEffect: 'none',
                closeEffect: 'none',

                prevEffect: 'none',
                nextEffect: 'none',

                closeBtn: false,

                helpers: {
                    title: {
                        type: 'inside'
                    },
                    buttons: {}
                },

                afterLoad: function () {
                    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                }
            });


            /*
            *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
            */

            $('.fancybox-thumbs').fancybox({
                prevEffect: 'none',
                nextEffect: 'none',

                closeBtn: false,
                arrows: false,
                nextClick: true,

                helpers: {
                    thumbs: {
                        width: 50,
                        height: 50
                    }
                }
            });

            /*
            *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
            */
            $('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
				    openEffect: 'none',
				    closeEffect: 'none',
				    prevEffect: 'none',
				    nextEffect: 'none',

				    arrows: false,
				    helpers: {
				        media: {},
				        buttons: {}
				    }
				});

            /*
            *  Open manually
            */

            $("#fancybox-manual-a").click(function () {
                $.fancybox.open('1_b.jpg');
            });

            $("#fancybox-manual-b").click(function () {
                $.fancybox.open({
                    href: 'iframe.html',
                    type: 'iframe',
                    padding: 5
                });
            });

            $("#fancybox-manual-c").click(function () {
                $.fancybox.open([
					{
					    href: '1_b.jpg',
					    title: 'My title'
					}, {
					    href: '2_b.jpg',
					    title: '2nd title'
					}, {
					    href: '3_b.jpg'
					}
                ], {
                    helpers: {
                        thumbs: {
                            width: 75,
                            height: 50
                        }
                    }
                });
            });


        });
	</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <style type="text/css">
                .gallery li
                {
                    display: inline;
                }
                
                .gallery li img
                {
                    margin: 5px;
                }
            </style>
            <asp:Panel runat="server" DefaultButton="btnSearch" ID="pnlCriteia">
                <div class="member-search-form mb-20px">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <label class="">
                                            Photo Album:</label>
                                        <asp:DropDownList CssClass="form-control" ID="ddlCategory" runat="server" DataValueField="CID"
                                            DataTextField="CName">
                                            <asp:ListItem Text="Select Album" Value="0">
                                            </asp:ListItem>
                                        </asp:DropDownList>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="form-group">
                                <asp:Button CssClass="btn btn-search" runat="server" ID="btnSearch" Text="Search"
                                    OnClick="btnSearch_Click" CausesValidation="False" />
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Repeater ID="rptPhotoGallery" runat="server">
                        <ItemTemplate>
                            <a id="A1" class="fancybox" rel="gallery1" runat="server" href='<%# String.Concat("~/Resources/Images/UserFiles/PhotoGallery/Main/", Eval("ImagePath").ToString()) %>'>
                                <div class="image-container">
                                    <asp:Image Title="" runat="server" ID="photo1" ImageUrl='<%# String.Concat("~/Resources/Images/UserFiles/PhotoGallery/Thumbs/", Eval("ImagePath").ToString()) %>' />
                                </div>
                            </a>
                        </ItemTemplate>
                    </asp:Repeater>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
