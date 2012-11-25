<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="BigFont.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>
        Contact the People Who Like Big Font!</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li><a href="#head-office"><i class="icon-chevron-right"></i>Head Office</a></li>
    <li><a href="#technology"><i class="icon-chevron-right"></i>Technology</a></li>
    <li><a href="#design"><i class="icon-chevron-right"></i>Design</a></li>
    <li><a href="#marketing"><i class="icon-chevron-right"></i>Marketing</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <section id="head-office">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>
                        BigFont.ca Head Office</h1>
                </header>
                <address>
                    #2103 - 115 Fulford Ganges Road<br>
                    Salt Spring Island, BC, Canada, V8K 2T9﻿<br>
                    <abbr title="Phone">
                        P:</abbr>
                    (250) 931-7229<br>
                    <abbr title="Phone">
                        E:</abbr>
                    info@bigfont.ca
                </address>
            </div>
        </div>
    </section>
    <section id="technology">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>
                        Technology
                    </h1>
                </header>
                <address>
                    <strong>Shaun Luttin</strong><br>
                    Head of Technology<br>
                    <abbr title="Phone">
                        P:</abbr>
                    (250) 931-0628<br>
                    <abbr title="Phone">
                        E:</abbr>
                    shaun@bigfont.ca
                </address>
            </div>
        </div>
    </section>
    <section id="design">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>
                        Design
                    </h1>
                </header>
                <address>
                    <strong>Adrian Fletcher</strong><br>
                    Head of Design<br>
                    <abbr title="Phone">
                        P:</abbr>
                    (250) 538-2164<br>
                    <abbr title="Phone">
                        E:</abbr>
                    adrian@bigfont.ca
                </address>
            </div>
        </div>
    </section>
    <section id="marketing">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>
                        Marketing</h1>
                </header>
                <address>
                    <strong>Tony Edwards</strong><br>
                    Head of Marketing <br>
                    <abbr title="Phone">
                        P:</abbr>
                    (250) 537-1255<br>
                    <abbr title="Phone">
                        E:</abbr>
                    tony@bigfont.ca
                </address>
            </div>
        </div>
    </section>
    <%--article footer--%>
    <footer>
        <a href="#">Return to Top</a>
    </footer>
</asp:Content>
