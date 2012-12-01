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
                            #2103 - 115 Fulford Ganges Road</dd>
                        <dd>
                            Salt Spring Island, BC
                        </dd>
                        <dd>
                            V8K 2T9,  Canada﻿</dd>
<%--                        <dt>Phone</dt>
                        <dd>
                            (250) 931-7229</dd>--%>
                        <dt>Email</dt>
                        <dd><a href="#contact-form-office > .collapse" data-toggle="collapse">info@bigfont.ca</a></dd>  
                    </dl>
                    <form action="/FormProcessor.svc/ProcessForm" class="contact-form" enctype="application/x-www-form-urlencoded" id="contact-form-office" method=post target="">           
                        <div class="collapse">
                            <fieldset>                                     
                                <input name="toEmail" type="hidden" value="info@bigfont.ca">
                                <input name="toName" type="hidden" value="Shaun Luttin">
                                <div class="control-group">
                                    <label class="control-label" for="inputEmailFrom">From:</label>
                                    <input class="input-block-level" id="inputEmailFrom" name="fromEmail" placeholder="Type your email here." type="email">   
                                </div>                                                                                                                                                                         
                                <div class="control-group">
                                    <label class="control-label" for="inputFullName">Name:</label>
                                    <input class="input-block-level" id="inputFullName" name="fromName" placeholder="Type your name here." type=text>   
                                </div>  
                                <div class="control-group">
                                    <label class="control-label" for="inputSubject">Subject:</label>
                                    <input class="input-block-level" id="inputSubject" name="subject" placeholder="Type your subject here." type="text" />    
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                                        
                                    <label class="control-label" for="textareaMessage">Message:</label>
                                    <textarea class="input-block-level" id="textareaMessage" name="body" placeholder="Type your message here." rows="2"></textarea>              
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                              
                                    <button type=submit class="btn btn-primary" data-toggle="collapse" data-target="form#contact-form-office > .collapse">Send</button>
                                    <button type=reset class="btn btn-danger" data-toggle="collapse" data-target="form#contact-form-office > .collapse">Cancel</button>                                                    
                                </div>                                                                                                                                                                         
                            </fieldset>
                        </div>       
                    </form>                                                                        
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
                        <dd><a href="#contact-form-shaun > .collapse" data-toggle="collapse">shaun@bigfont.ca</a></dd>  
                    </dl>
                    <form action="/FormProcessor.svc/ProcessForm" class="contact-form" enctype="application/x-www-form-urlencoded" id="contact-form-shaun" method=post target="">           
                        <div class="collapse">
                            <fieldset>                                     
                                <input name="toEmail" type="hidden" value="shaun@bigfont.ca">
                                <input name="toName" type="hidden" value="Shaun Luttin">
                                <div class="control-group">
                                    <label class="control-label" for="inputEmailFrom">From:</label>
                                    <input class="input-block-level" id="inputEmailFrom" name="fromEmail" placeholder="Type your email here." type="email">   
                                </div>                                                                                                                                                                         
                                <div class="control-group">
                                    <label class="control-label" for="inputFullName">Name:</label>
                                    <input class="input-block-level" id="inputFullName" name="fromName" placeholder="Type your name here." type=text>   
                                </div>  
                                <div class="control-group">
                                    <label class="control-label" for="inputSubject">Subject <small>(optional)</small>:</label>
                                    <input class="input-block-level" id="inputSubject" name="subject" placeholder="Type your subject here." type="text" />    
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                                        
                                    <label class="control-label" for="textareaMessage">Message <small>(optional)</small>:</label>
                                    <textarea class="input-block-level" id="textareaMessage" name="body" placeholder="Type your message here." rows="2"></textarea>              
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                              
                                    <button type=submit class="btn btn-primary" data-toggle="collapse" data-target="form#contact-form-shaun > .collapse">Send</button>
                                    <button type=reset class="btn btn-danger" data-toggle="collapse" data-target="form#contact-form-shaun > .collapse">Cancel</button>                                                    
                                </div>                                                                                                                                                                         
                            </fieldset>
                        </div>       
                    </form>  
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
                        <dd><a href="#contact-form-adrian > .collapse" data-toggle="collapse">adrian@bigfont.ca</a></dd>  
                    </dl>
                    <form action="/FormProcessor.svc/ProcessForm" class="contact-form" enctype="application/x-www-form-urlencoded" id="contact-form-adrian" method=post target="">           
                        <div class="collapse">
                            <fieldset>                                     
                                <input name="toEmail" type="hidden" value="adrian@bigfont.ca">
                                <input name="toName" type="hidden" value="Adrian Fletcher">
                                <div class="control-group">
                                    <label class="control-label" for="inputEmailFrom">From:</label>
                                    <input class="input-block-level" id="inputEmailFrom" name="fromEmail" placeholder="Type your email here." type="email">   
                                </div>                                                                                                                                                                         
                                <div class="control-group">
                                    <label class="control-label" for="inputFullName">Name:</label>
                                    <input class="input-block-level" id="inputFullName" name="fromName" placeholder="Type your name here." type=text>   
                                </div>  
                                <div class="control-group">
                                    <label class="control-label" for="inputSubject">Subject <small>(optional)</small>:</label>
                                    <input class="input-block-level" id="inputSubject" name="subject" placeholder="Type your subject here." type="text" />    
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                                        
                                    <label class="control-label" for="textareaMessage">Message <small>(optional)</small>:</label>
                                    <textarea class="input-block-level" id="textareaMessage" name="body" placeholder="Type your message here." rows="2"></textarea>              
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                              
                                    <button type=submit class="btn btn-primary" data-toggle="collapse" data-target="form#contact-form-adrian > .collapse">Send</button>
                                    <button type=reset class="btn btn-danger" data-toggle="collapse" data-target="form#contact-form-adrian > .collapse">Cancel</button>                                                    
                                </div>                                                                                                                                                                         
                            </fieldset>
                        </div>       
                    </form> 
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
                        <dd><a href="#contact-form-tony > .collapse" data-toggle="collapse">tony@bigfont.ca</a></dd>  
                    </dl>
                    <form action="/FormProcessor.svc/ProcessForm" class="contact-form" enctype="application/x-www-form-urlencoded" id="contact-form-tony" method=post target="">           
                        <div class="collapse">
                            <fieldset>                                     
                                <input name="toEmail" type="hidden" value="tony@bigfont.ca">
                                <input name="toName" type="hidden" value="Tony Edwards">
                                <div class="control-group">
                                    <label class="control-label" for="inputEmailFrom">From:</label>
                                    <input class="input-block-level" id="inputEmailFrom" name="fromEmail" placeholder="Type your email here." type="email">   
                                </div>                                                                                                                                                                         
                                <div class="control-group">
                                    <label class="control-label" for="inputFullName">Name:</label>
                                    <input class="input-block-level" id="inputFullName" name="fromName" placeholder="Type your name here." type=text>   
                                </div>  
                                <div class="control-group">
                                    <label class="control-label" for="inputSubject">Subject <small>(optional)</small>:</label>
                                    <input class="input-block-level" id="inputSubject" name="subject" placeholder="Type your subject here." type="text" />    
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                                        
                                    <label class="control-label" for="textareaMessage">Message <small>(optional)</small>:</label>
                                    <textarea class="input-block-level" id="textareaMessage" name="body" placeholder="Type your message here." rows="2"></textarea>              
                                </div>                                                                                                                                                                         
                                <div class="control-group">                                              
                                    <button type=submit class="btn btn-primary" data-toggle="collapse" data-target="form#contact-form-tony > .collapse">Send</button>
                                    <button type=reset class="btn btn-danger" data-toggle="collapse" data-target="form#contact-form-tony > .collapse">Cancel</button>                                                    
                                </div>                                                                                                                                                                         
                            </fieldset>
                        </div>       
                    </form> 
                </address>
            </div>
        </div>
    </section>
    <%--article footer--%>
    <footer>
        <a href="#">Return to Top</a>
    </footer>
</asp:Content>
