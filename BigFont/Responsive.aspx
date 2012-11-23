<%@ Page Title="" Language="C#" MasterPageFile="~/SitePresentation.master" AutoEventWireup="true"
    CodeBehind="Responsive.aspx.cs" Inherits="BigFont.Responsive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSubNav" runat="server">
    <li data-carousel-item-id="mobile-portrait" class="active"><a><i class="icon-chevron-right">
    </i>Mobile Portrait</a></li>
    <li data-carousel-item-id="mobile-landscape"><a><i class="icon-chevron-right"></i>Mobile
        Landscape</a></li>
    <li data-carousel-item-id="small-tablet-portrait"><a><i class="icon-chevron-right"></i>
        Small Tablet Portrait</a></li>
    <li>
        <button class="btn btn-primary" data-target="#responsive-demo-modal" data-toggle="modal">
            Play with Resizing!</button></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <section id="responsive-demo">
        <div class="row">
            <div class="span8">
                <header id="about">
                    <h1>
                        BigFont Responsive Design Demo</h1>
                </header>
                <div id="responsive-demo-carousel" class="carousel slide">
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                        <div id="mobile-portrait" class="active item">
                            <iframe src="Default.aspx" height="480" width="320" class="img-rounded"></iframe>
                        </div>
                        <div id="mobile-landscape" class="item">
                            <iframe src="Default.aspx" height="320" width="480" class="img-rounded"></iframe>
                        </div>
                        <div id="small-tablet-portrait" class="item">
                            <iframe src="Default.aspx" height="800" width="600" class="img-rounded"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="responsive-demo-modal" class="modal hide fade resizable" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel" aria-hidden="true">
        <iframe src="http://www.bigfont.ca" width="100%" height="100%"></iframe>
    </div>
</asp:Content>
