<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="BigFont.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>Services that BigFont.ca Provides</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li><a href="#packages"><i class="icon-chevron-right"></i>Packages</a></li>
    <li><a href="#services"><i class="icon-chevron-right"></i>Services</a></li>
    <%--Responsive Design sub-nav options for desktop and non-desktop--%>
    <li class="hidden-desktop"><a href="#responsive-design"><i class="icon-chevron-right"></i>Responsive</a></li>
    <li class="visible-desktop"><a href="#responsive-design"><i class="icon-chevron-right"></i>Responsive Design</a></li>
    <li><a href="#rates"><i class="icon-chevron-right"></i>Rate Structure</a></li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <section id="packages">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>Packages</h1>
                </header>
                <dl>
                    <dt>Get Started for $100</dt>
                    <dd>Host your website.</dd>
                    <dd>Register a domain name.</dd>
                    <dd>Receive two hours of web development.</dd>
                    <dd>This is usually enough to create a professional, single-page website.</dd>
                    <dd></dd>
                </dl>
            </div>

        </div>
    </section>
    <section id="services">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>Services</h1>
                </header>
                <dl>
                    <dt>Personal and Smaller Project Web Solutions</dt>
                    <dd>We create custom solutions tailored to our clients’ unique requirements.
                    </dd>
                    <dt>Packaged Web Solutions</dt>
                    <dd>For simple, easily-managed websites, choose among 1. our proprietary website packages, 2.
                        our WordPress sites, and 3. our PrestaShop e-commerce payment system.
                    </dd>
                    <dt>Business Solutions</dt>
                    <dd>We analyze your business to develop a web strategy. The resulting insight facilitates
                        our building a custom site that leverages the best of the web for your company.
                    </dd>
                    <dt>
                        <%--Note: Looks weird with initialism class in dt--%>
                        <abbr title="Multiple Listing Service">
                            MLS</abbr>&reg; Integrated Websites</dt>
                    <dd>Our agreement with the Victoria Real Estate Board lets us integrate your
                        <abbr class="initialism" title="Multiple Listing Service">
                            MLS</abbr>&reg; listings into a website tailored for you, the REALTOR&reg;.</dd>
                    <dt>Local Technical Support</dt>
                    <dd>We can tutor you or your employees in new
                        software. We make local house calls, or you drop off your device.
                    </dd>
                </dl>
            </div>
        </div>
    </section>
    <section id="responsive-design">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>Responsive Design</h1>
                </header>
                <p>
                    <strong>BigFont specializes in <dfn id="rd">Responsive Design</dfn>.</strong>
                </p>
                <p>
                    <abbr title="Responsive Design">
                        RD</abbr>
                    is the technology that ensures that <em>any</em> webpage will present well on <em>any-sized</em>
                    computer device.*
                </p>
                <p>
                    Businesses are finding that with the exponential growth in the use of mini computers
                    such as mobile phones and tablets that their standard websites do not present well
                    on them. Attempts to access websites on such devices frequently lead to frustration
                    and discontinuance.
                </p>
                <p>
                    Conversely, a website that has been created with
                    <abbr title="Responsive Design">
                        RD</abbr>
                    as its core technology is designed for use with devices such as mobile phones in
                    addition to tablets and regular size computer screens. This is not simply a zooming
                    in or squishing capability which might well leave the page display little if any
                    improved.
                </p>
                <p>
                    Fundamentally,
                    <abbr title="Responsive Design">
                        RD</abbr>
                    enhances legibility. It is a technology for re-arranging and positioning content
                    such that it is clearly and attractively displayed no matter the size of the device
                    – something the most ardent nomophobe would approve of. And it doesn’t hurt that
                    it is less expensive to originate your site with
                    <abbr title="Responsive Design">
                        RD</abbr>
                    rather than building the same site twice or trying to reverse engineer one at a
                    later time.
                </p>
                <p id="fn1">
                    * ‘Any-sized computer device’ refers to all lap top, Mac and PC computers and most
                    (though perhaps not all) tablets and cell phones that have been engineered and marketed
                    since 2010.
                </p>
            </div>
        </div>
    </section>

    <section id="rates">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>Rate Structure</h1>
                </header>
                <p class="lead">
                    Our hourly rate is $50.00
                </p>
                <p>
                    <strong>The rate covers productive work.</strong>
                </p>
                <p>
                    If the nature of your project requires a learning period, before or during the project
                    execution, we will not bill for the time spent learning. For example: A website
                    building project consumed 39 hours overall but included 7.5 hours of learning. The
                    resulting billing was for 31.5 hours.
                </p>
                <p>
                    <strong>The hourly rate is standard for all technical projects.</strong> It applies to:
                </p>
                <ul>
                    <li>Personal and Smaller Project Web Solutions</li>
                    <li>Packaged Web Solutions</li>
                    <li>Business Solutions</li>
                    <li>
                        <abbr class="initialism" title="Multiple Listing Service">
                            MLS</abbr>&reg; Integrated Websites</li>
                    <li>Local Technical Support</li>
                </ul>
                <p>Marketing consulting rates will be quoted separately.</p>
            </div>
        </div>
    </section>
</asp:Content>
