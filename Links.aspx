<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="BigFont.Links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>Links to Technology Services on Salt Spring</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li><a href="#web-dev-tools"><i class="icon-chevron-right"></i>Web Dev Tools</a></li>
    <li><a href="#web-designers"><i class="icon-chevron-right"></i>Web Designers</a></li>
    <li><a href="#computer-technicians"><i class="icon-chevron-right"></i>Computer Technicians</a></li>
    <li><a href="#computer-retailers"><i class="icon-chevron-right"></i>Computer Retailers</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <section id="web-dev-tools">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>Web Dev Tools</h1>
                </header>
                <p>In the spirit of open-source, here are some terrific, mostly free, web development tools:</p>
                <ul>
                    <li><a href="http://www.getpaint.net/redirect/getpdn.html">Paint.NET</a>
                        <span>Paint.NET is a free alternative to Photoshop.</span>
                        <img border="0" alt="Get Paint.NET!" title="Get Paint.NET!" src="http://www.getpaint.net/images/getpdn.png" /></li>
                    <li><a href="http://twitter.github.io/bootstrap/">Twitter Bootstrap</a>
                        <span>This responsive framework is free from Twitter.</span></li>
                    <li><a href="http://www.orchardproject.net/">Orchard CMS</a>
                        <span>Microsoft backs this free content management system.</span></li>
                    <li><a href="http://www.jslint.com/">jsLint</a>
                        <span>This free tool is like a spellcheck for your JavaScript.</span>
                    </li>
                    <li><a href="http://validator.w3.org/">Markup Validation Service</a>
                        <span>Check the markup (HTML, XHTML, …) of Web documents.</span>
                    </li>
                    <li><a href="http://validator.w3.org/checklink">Link Checker</a>
                        <span>Check links and anchors in Web pages or full Web sites.</span></li>
                    <li><a href="http://developers.whatwg.org/">HTML: The Living Standard</a>
                        <span>An authoritative technical guide to HTML.</span>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <section id="web-designers">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>Web Designers</h1>
                </header>
                <p>In addition to BigFont.ca, Salt Spring is home to the following Web design companies:</p>
                <ul>
                    <li><a href="http://www.imaginethatgraphics.ca/" target="_blank">Imagine That Graphics</a></li>
                    <li><a href="http://www.kmaxmultimedia.com" target="_blank">KMAX Multimedia</a></li>
                    <li><a href="http://www.floatingworld.ca" target="_blank">Floating World</a></li>
                    <li><a href="http://www.ravenisle.com" target="_blank">Raven Isle</a></li>
                    <li><a href="http://www.sky-valley-web-design.com/" target="_blank">Sky Valley Web Design</a></li>
                    <li><a href="http://www.malcolmdesign.com/" target="_blank">Malcolm Design</a></li>
                    <li><a href="http://www.bibbycommunications.ca" target="_blank">Bibby Communications</a></li>
                    <li><a href="http://www.christinaheinemanndesign.ca/" target="_blank">Christina Heinemann Design</a></li>
                    <li><a href="http://www.mobiuscommunications.com/" target="_blank">Mobius Communications</a></li>
                    <li><a href="http://www.bytesizedwebsites.com" target="_blank">Byte Sized Websites</a></li>
                </ul>
            </div>
        </div>
    </section>
    <section id="computer-technicians">
        <header>
            <h1>Computer Technicians</h1>
        </header>
        <p>If your computer is broken, you might have it fixed at one of these local companies:</p>
        <ul>
            <li><a href="http://www.saltspringcomputer.com/">Salt Spring Computer</a></li>
            <li><a href="http://www.saltspringcomputers.com/">Salt Spring Computers</a></li>
        </ul>
    </section>
    <section id="computer-retailers">
        <header>
            <h1>Computer Retailers
            </h1>
        </header>
        <p>The following companies, located on Salt Spring, sell computer hardware and accessories.</p>
        <ul>
            <li><a href="http://www.yellowpages.ca/bus/British-Columbia/Salt-Spring-Island/Orca-Electronics/6092219.html">Orca Electronics</a></li>
            <li><a href="http://www.yelp.ca/biz/electronic-ark-salt-spring-island">Electronic Arc</a></li>
        </ul>
    </section>
</asp:Content>
