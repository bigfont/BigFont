<%@ Page Title="" Language="C#" MasterPageFile="~/SitePresentation.master" AutoEventWireup="true"
    CodeBehind="ResponsiveDemo.aspx.cs" Inherits="BigFont.ResponsiveDemo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li><a href="#about"><i class="icon-chevron-right"></i>About Us</a></li>
    <li><a href="#services"><i class="icon-chevron-right"></i>Services</a></li>
    <li><a href="#responsive-design"><i class="icon-chevron-right"></i>Responsive</a></li>
    <li><a href="#clients"><i class="icon-chevron-right"></i>Client List</a></li>
    <li><a href="#rates"><i class="icon-chevron-right"></i>Rate Structure</a></li>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <section>
        <div class="row">
            <div class="span7">
                <header id="about">
                    <h1>
                        About Us</h1>
                </header>
                <p>
                    <strong>BigFont.ca</strong> is a technology and Web solutions provider. Our customers
                    vary between local residents through to small and medium-sized businesses anywhere.
                    We offer usable, legible technology wherever the Web will take us.</p>
            </div>
        </div>
    </section>
</asp:Content>
