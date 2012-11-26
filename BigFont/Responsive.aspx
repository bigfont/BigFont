<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.master" AutoEventWireup="true"
    CodeBehind="Responsive.aspx.cs" Inherits="BigFont.Responsive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>
        BigFont Responsive Design Demo</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li class="visible-desktop visible-mediaqueries">
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
    <section class="hidden-desktop hidden-mediaqueries">
        <div class="row">
            <div class="span7">
                <p>
                    The responsive demo requires a modern browser and a desktop computer. Please visit
                    BigFont.ca on your <em>desktop</em> computer and, if necessary, download a <a target="_blank"
                        href="http://fresh-browsers.com/en">modern browser</a>. In the meantime, you
                    can learn about <a href="/Default.aspx#responsive-design">responsive design</a>
                    or return to the BigFont.ca <a href="/Default.aspx">home</a> page.</p>
            </div>
        </div>
    </section>
    <section id="responsive-demo" class="visible-desktop visible-mediaqueries">
        <div class="row">
            <div class="span7">
                <div class="btn-group" data-toggle="buttons-radio">
                    <button id="btn-group-responsive-demo" type="button" class="btn btn-primary active"
                        data-target="#mobile-portrait" data-toggle="tab">
                        Smart Phone 1</button>
                    <button type="button" class="btn btn-primary" data-target="#mobile-landscape" data-toggle="tab">
                        Smart Phone 2</button>
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
    <%--article footer--%>
    <footer>
        <%--Empty for spacing--%>
    </footer>
</asp:Content>
