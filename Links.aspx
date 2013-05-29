<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="BigFont.Links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>Links to Technology Services on Salt Spring</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li><a href="#web-designers"><i class="icon-chevron-right"></i>Web Designers</a></li>
    <li><a href="#computer-technicians"><i class="icon-chevron-right"></i>Computer Technicians</a></li>
    <li><a href="#computer-retailers"><i class="icon-chevron-right"></i>Computer Retailers</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainArticleSections" runat="server">
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
    <%--article footer--%>
    <footer>
        <a href="#">Return to Top</a>
    </footer>
</asp:Content>
