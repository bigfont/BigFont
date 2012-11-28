<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="BigFont.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>
        Contact the People Who Like BigFont!</h1>
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
                        Head Office</h1>
                </header>
                <address class=well>
                    <dl>
                        <dt>Address</dt>
                        <dd>
                            Suite 2103 - 115 Fulford Ganges Road</dd>
                        <dd>
                            Salt Spring Island, BC
                        </dd>
                        <dd>
                            V8K 2T9,  Canada﻿</dd>
<%--                        <dt>Phone</dt>
                        <dd>
                            (250) 931-7229</dd>--%>
                        <dt>Email</dt>
                        <dd>
                            info@bigfont.ca</dd>
                    </dl>
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
                <address class=well>
                    <dl>
                        <dt>Head of Technology</dt>
                        <dd>
                            Shaun Luttin</dd>
                        <dt>Phone</dt>
                        <dd>
                            (250) 931-0628
                        </dd>
                        <dt>Email</dt>
                        <dd>
                            shaun@bigfont.ca</dd>
                    </dl>
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
                <address class=well>
                    <dl>
                        <dt>Head of Design</dt>
                        <dd>
                            Adrian Fletcher
                        </dd>
                        <dt>Phone</dt>
                        <dd>
                            (250) 538-2164
                        </dd>
                        <dt>Email</dt>
                        <dd>
                            adrian@bigfont.ca
                        </dd>
                    </dl>
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
                <address class=well>
                    <dl>
                        <dt>Head of Marketing</dt>
                        <dd>
                            Tony Edwards
                        </dd>
                        <dt>Phone</dt>
                        <dd>
                            (250) 537-1255
                        </dd>
                        <dt>Email</dt>
                        <dd>
                            tony@bigfont.ca
                        </dd>
                    </dl>
                </address>
            </div>
        </div>
    </section>
    <%--article footer--%>
    <footer>
        <a href="#">Return to Top</a>
    </footer>
</asp:Content>
