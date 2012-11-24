<%@ Page Title="" Language="C#" MasterPageFile="~/SitePresentation.master" AutoEventWireup="true"
    CodeBehind="Responsive.aspx.cs" Inherits="BigFont.Responsive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>
        BigFont Responsive Design Demo</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li class="active"><a data-target="#mobile-portrait" data-toggle="tab">Mobile Portrait</a></li>
    <li><a data-target="#mobile-landscape" data-toggle="tab">Mobile Landscape</a></li>
    <li><a data-target="#small-tablet-portrait" data-toggle="tab">Small Tablet Portrait</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <input type="hidden" id="no-scrollspy" />
    <section id="responsive-demo">
        <div class="row">
            <div class="span8">
                <div id="tabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="mobile-portrait">
                        <iframe src="Default.aspx" height="480" width="320" class="img-rounded img-polaroid"></iframe>
                    </div>
                    <div class="tab-pane fade" id="mobile-landscape">
                        <iframe src="Default.aspx" height="320" width="480" class="img-rounded img-polaroid"></iframe>
                    </div>
                    <div class="tab-pane fade" id="small-tablet-portrait">
                        <iframe src="Default.aspx" height="800" width="600" class="img-rounded img-polaroid"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
