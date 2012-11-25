<%@ Page Title="" Language="C#" MasterPageFile="~/SitePresentation.master" AutoEventWireup="true"
    CodeBehind="Responsive.aspx.cs" Inherits="BigFont.Responsive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>
        BigFont Responsive Design Demo</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li>
        <aside>
            <p>
                Click on the
                <label for="btn-group-responsive-demo">
                    blue buttons</label>
                to see responsive design in action. RD is the technology that ensures that any webpage
                will present well on any-sized computer device. <a href="/Default.aspx#responsive-design">
                    Read the full article</a>.</p>
        </aside></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <input type="hidden" id="no-scrollspy" />
    <section id="responsive-demo">
        <div class="row">
            <div class="span8">
                <div class="btn-group" data-toggle="buttons-radio">
                    <button id="btn-group-responsive-demo" type="button" class="btn btn-primary" data-target="#mobile-portrait"
                        data-toggle="tab">
                        Mobile Phone 1</button>
                    <button type="button" class="btn btn-primary" data-target="#mobile-landscape" data-toggle="tab">
                        Mobile Phone 2</button>
                    <button type="button" class="btn btn-primary" data-target="#small-tablet-portrait"
                        data-toggle="tab">
                        Small Tablet</button>
                </div>
                <div id="tabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="mobile-portrait">
                        <iframe src="http://www.fowlmoodfarm.com" height="480" width="320" class="img-rounded img-polaroid">
                        </iframe>
                    </div>
                    <div class="tab-pane fade" id="mobile-landscape">
                        <iframe src="http://www.fowlmoodfarm.com" height="320" width="480" class="img-rounded img-polaroid">
                        </iframe>
                    </div>
                    <div class="tab-pane fade" id="small-tablet-portrait">
                        <iframe src="http://www.fowlmoodfarm.com" height="800" width="600" class="img-rounded img-polaroid">
                        </iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
