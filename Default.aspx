<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="BigFont.Default1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>Welcome to BigFont.ca!</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li><a href="#about"><i class="icon-chevron-right"></i>About Us</a></li>
    <%--End Responsive Design sub-nav options--%>
    <li><a href="#clients"><i class="icon-chevron-right"></i>Client List</a></li>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <section id="about">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>About Us</h1>
                </header>
                <p>
                    <strong>BigFont.ca</strong> is a technology and web solutions provider. Our customers
                    vary between local residents through to small and medium-sized businesses anywhere.
                    We offer usable, legible technology.
                </p>
                <p>
                    Among the services we provide are website development, database administration, and technical support. 
                    For a more complete services list click <a href="Services.aspx">here</a>, and for examples of our work click <a href="#clients">here</a>.
                </p>
            </div>
        </div>
    </section>
    <section id="clients">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>Client List</h1>
                </header>
                <p>We have worked for the following small and medium-sized companies (most recent first):</p>
                <div class="accordion" id="accordionClientList">
                    <div class="accordion-group">
                        <h2>Solo Projects</h2>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseTen">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_fernwoodroadcafe.png" /><span>Fernwood Road Cafe</span>
                            </a>
                        </div>
                        <div id="collapseTen" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.fernwoodcafe.com"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Provided custom CSS to integrate the cafe's shopping cart into its existing WordPress theme.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.fernwoodcafe.com">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseTen">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseNine">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_ssidetailing.png" /><span>Gulf Island Detailing</span>
                            </a>
                        </div>
                        <div id="collapseNine" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.ssidetailing.com"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Built a clean, responsive, single-page website to market the business.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.ssidetailing.com">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseNine">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseEight">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_davesblasting.png" /><span>Dave's Blasting</span>
                            </a>
                        </div>
                        <div id="collapseEight" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.davesblasting.ca"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Designed and created a responsive, multi-page, media-rich website to market the business.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.davesblasting.ca">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseEight">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseSeven">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_gardenfaire.png" /><span>Garden Faire</span>
                            </a>
                        </div>
                        <div id="collapseSeven" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.gardenfaire.ca"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Modernized the existing by moving its content into a new, responsive content management system.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.gardenfaire.ca">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseSeven">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseSix">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_fowlmoodfarm.png" /><span>Fowl Mood Farm</span>
                            </a>
                        </div>
                        <div id="collapseSix" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.fowlmoodfarm.com"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Designed our first responsive website and included functionality to allow the owners to update the content.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.fowlmoodfarm.com">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseSix">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseFive">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_natureworks.png" /><span>Nature Works</span>
                            </a>
                        </div>
                        <div id="collapseFive" class="accordion-body collapse">

                            <div class="accordion-inner">
                                <div class="caption">
                                    <div class="portfolio img-polaroid" data-src="http://www.saltspringnatureworks.ca">
                                        <img src="assets-235/site/img/portfolio_natureworks_large.png" />
                                    </div>
                                    <p>Built a refrigeration monitoring system that graphs temperatures and sends warning emails.</p>
                                    <p>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseFive">Close</a>
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="accordion-group">
                        <h2>Team Projects</h2>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseFour">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_charityvillage.png" /><span>Charity Village</span>
                            </a>
                        </div>
                        <div id="collapseFour" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.charityvillage.com"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Provided website development and technical support during the website modernization project.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.charityvillage.com">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseFour">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseTwo">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_healthchoices.png" /><span>Health Choices First</span>
                            </a>
                        </div>
                        <div id="collapseTwo" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.healthchoicesfirst.com"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Provided website and database development as part of the development team.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.healthchoicesfirst.com">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseTwo">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseOne">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_resaas.png" /><span>RESAAS</span>
                            </a>
                        </div>
                        <div id="collapseOne" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.RESAAS.com"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Provided website and database development as part of the development team.</p>

                                    <p>
                                        <a class="btn btn-primary" href="http://www.RESAAS.com">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseOne">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseZero">
                                <img class="img-icon img-polaroid img-circle" src="assets-235/site/img/portfolio_stage43.png" /><span>Stage 43</span>
                            </a>
                        </div>
                        <div id="collapseZero" class="accordion-body collapse">
                            <div class="accordion-inner">
                                <div class="caption">
                                    <iframe class="portfolio img-polaroid" data-src="http://www.stage43.org"></iframe>
                                    <div class="portfolio portfolio-loading img-polaroid">Loading website: <progress></progress></div>
                                    <p>Provided website and database development to build this site from scratch during our practicum at BCIT.</p>
                                    <p>
                                        <a class="btn btn-primary" href="http://www.stage43.org">Visit Site</a>
                                        <a class="btn" data-toggle="collapse" data-parent="#accordionClientList" href="#collapseZero">Close</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
