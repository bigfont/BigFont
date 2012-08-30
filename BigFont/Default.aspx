<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BigFont.Default" %>

<%--

    Coding Standards / Guidelines / Aspirations        

    1. Avoid the div element

    Authors are strongly encouraged to view the div element as an element of last resort, 
    for when no other element is suitable. Use of more appropriate elements instead of the div 
    element leads to better accessibility for readers and easier maintainability for authors.
    http://developers.whatwg.org/grouping-content.html#the-div-element 

    2. 

--%>
<!DOCTYPE html />
<html>
<head runat="server">
    <title>BigFont.ca ~ Technology and Web Solutions on Salt Spring Island</title>
    <link href="assets-83/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets-83/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"
        type="text/css" />
    <link href="assets-83/site/css/bigfont.css" rel="stylesheet" type="text/css" />
    <link href="assets-83/site/css/bigfont-sandbox.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <%--bootstrap root container--%>
    <div class="container">
        <%--header--%>
        <header class="row">
            <div class="span12">
                <img src="assets-83/site/img/logo_600.jpg" alt="BigFont.ca Logo" />
            </div>
        </header>
        <%--article and main content--%>
        <article class="row">
            <%--subnav, appears to require the div.affix-container as a last resort--%>
            <div class="span3 affix-container">
                <nav data-offset-top="200" data-spy="affix" class="affix-top">
                    <menu class="nav nav-tabs nav-stacked">
                        <li><a href="#aboutUs"><i class="icon-chevron-right"></i>About Us</a></li>
                        <li><a href="#services"><i class="icon-chevron-right"></i>Services</a></li>
                        <li><a href="#portfolio"><i class="icon-chevron-right"></i>Portfolio</a></li>
                        <li><a href="#adrian"><i class="icon-chevron-right"></i>Adrian Fletcher</a></li>
                        <li><a href="#shaun"><i class="icon-chevron-right"></i>Shaun Luttin</a></li>
                        <li class="contact"><a href="mailto:adrian@bigfont.ca?subject='Enquiry from BigFont.ca'">
                            <i class="icon-envelope"></i>adrian@bigfont.ca</a> </li>
                        <li class="contact"><a href="#" class="non-link"><i class="icon-bell"></i>250-931-7221</a>
                        </li>
                    </menu>
                </nav>
            </div>
            <div class="span9">
                <header>
                    <h1>
                        <small>Technology and Web Solutions on Salt Spring Island</small>
                    </h1>
                </header>
                <section id="aboutUs">
                    <div class="row">
                        <div class="hack-vertical-spacer hidden-phone">
                        </div>
                        <div class="span6">
                            <header>
                                <h1>
                                    About Us</h1>
                            </header>
                            <p class="well">
                                <strong>BigFont.ca</strong> is a technology and Web solutions provider on Salt Spring
                                Island. We work with local residential customers and small- to medium-sized businesses.
                                We offer usable, legible technology wherever the Web will take us.</p>
                        </div>
                    </div>
                </section>
                <section id="services">
                    <div class="row">
                        <div class="hack-vertical-spacer hidden-phone">
                        </div>
                        <div class="span6">
                            <header>
                                <h1>
                                    Services</h1>
                            </header>
                            <dl class="well">
                                <dt>Custom Web Solutions</dt>
                                <dd>
                                    If your needs are unique or you want to stand out, we create a custom solution that
                                    does what you want.
                                </dd>
                                <dt>Packaged Web Solutions</dt>
                                <dd>
                                    For simple, easily managed Web sites, choose among our own Web site packages, WordPress
                                    sites, and PrestoShop e-commerce payment system.
                                </dd>
                                <dt>Deep Business Solutions</dt>
                                <dd>
                                    We analyze your business to develop a complete Web strategy. This lets us build
                                    your company a custom site that leverages the best of the Web!
                                </dd>
                                <dt>
                                    <%--Note: Looks weird with initialism class in dt--%>
                                    <abbr title="Multiple Listing Service">
                                        MLS</abbr>&reg; Integrated Web Sites</dt>
                                <dd>
                                    Our agreement with the Victoria Real Estate Board lets us integrate your
                                    <abbr class="initialism" title="Multiple Listing Service">
                                        MLS</abbr>&reg; listings into a Web site tailored for you, the REALTOR&reg;.</dd>
                                <dt>Local Technical Support</dt>
                                <dd>
                                    We can upgrade your
                                    <abbr class="initialism" title="Random Access Memory">
                                        RAM</abbr>, perform anti-virus checkups, or tutor you in new software. We come
                                    to your house (if you live on Salt Spring), or you drop off your device.
                                </dd>
                            </dl>
                        </div>
                    </div>
                </section>
                <%--POSSIBLE NEW SECTION                    
                    <section>
                        <dt>BigFont Areas of Special Interest</dt>
                        <dd>
                            <ul>
                                <li>Progressive enhancement</li>
                                <li>Responsive design</li>
                                <li>Radical Web standards conformance</li>
                                <li>Accessibility</li>
                                <li>Computer-to-computer communication</li>
                                <li>Social media</li>
                                <li>E-commerce</li>
                                <li>Search engine optimization (SEO)</li>
                                <li>Usability testing</li>
                                <li>Graphic design</li>
                                <li>Information architecture</li>
                                <li>Complex content management systems</li>
                                <li>Content editing</li>
                            </ul>
                        </dd>
                    </section>
                --%>
                <section id="portfolio">
                    <div class="row">
                        <div class="hack-vertical-spacer hidden-phone">
                        </div>
                        <div class="span6">
                            <header>
                                <h1>
                                    Portfolio</h1>
                            </header>
                            <figure class="well">
                                <figcaption>
                                    <p>
                                        We have worked with businesses, artists, and professionals, using diverse technologies
                                        to create simple, elegant designs.</p>
                                </figcaption>
                                <ul class="unstyled">
                                    <li><a href="http://fowlmoodfarm.com">Fowl Mood Farm</a></li>
                                    <li><a href="http://www.charityvillage.com">Charity Village</a></li>
                                    <li><a href="http://www.healthchoicesfirst.com/">Health Choices</a></li>
                                    <li><a href="http://www.resaas.com/">RESAAS</a></li>
                                    <li><a href="http://stage43.org/">Stage 43</a></li>
                                    <li><a href="http://crankycrowstudios.com/">Cranky Crow Studios</a></li>
                                    <li><a href="http://www.realefast.com/">realEfast</a></li>
                                    <li><a href="http://www.thetrailguy.com">The Trail Guy </a></li>
                                    <li><a href="http://uhire.uvic.ca">UVic Career Opportunities </a></li>
                                    <li><a href="http://www.dhmarchitect.ca">D H Moore - Architect </a></li>
                                    <li><a href="http://www.denacarroll.ca">Dena Carroll - Artist</a></li>
                                </ul>
                            </figure>
                        </div>
                    </div>
                </section>
                <section id="adrian">
                    <div class="row">
                        <div class="hack-vertical-spacer hidden-phone">
                        </div>
                        <div class="span6">
                            <header>
                                <h1>
                                    Adrian Fletcher</h1>
                            </header>
                            <figure class="headshot-etc">
                                <img class="well well-small headshot" src="assets-83/site/img/adi.png" alt="Adrian Fletcher">
                                <figcaption class="well">
                                    <p class="lead">
                                        I came to Canada from England in 1991 after meeting my future wife Darlene while
                                        on safari in Zimbabwe. We moved to Salt Spring from Victoria in June of this year.
                                        My passion is designing web sites that work because they are built on uncompromising
                                        user-centred information design.</p>
                                    <p>
                                        I studied Internet technologies at Capilano College, and Java programming and database
                                        design at Simon Fraser University in 1999. I was then employed for nine years at
                                        <abbr title="University of Victoria">
                                            UVic</abbr>, designing and building complex web systems, after which I decided
                                        to branch out on my own. I am also skilled at web graphics and web page layout and
                                        design, content editing and formatting.</p>
                                    <p>
                                        I have recent experience as a REALTOR&reg; and am a
                                        <abbr class="initialism" title="British Columbia Recreation and Parks Association">
                                            BCRPA</abbr>
                                        Personal Trainer. I enjoy the outdoors and exploring new terrain, as a hiker, runner
                                        and kayaker. I firmly believe that communication is key in everything we do, and
                                        I bring that to web site development in every way I can.</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </section>
                <section id="shaun">
                    <div class="row">
                        <div class="hack-vertical-spacer hidden-phone">
                        </div>
                        <div class="span6">
                            <header>
                                <h1>
                                    Shaun Luttin</h1>
                            </header>
                            <figure class="headshot-etc">
                                <img class="well well-small headshot" src="assets-83/site/img/shaun.png" alt="Shaun Luttin">
                                <img class="etc" src="assets-83/site/img/logo_MCTS_NoText.png" alt="Microsoft Certified Technology Specialist Logo">
                                <img class="etc" src="assets-83/site/img/logo_MCPD_NoText.png" alt="Microsoft Certified Professional Developer Logo">
                                <figcaption class="well">
                                    <p class="lead">
                                        I was born and raised in the Vancouver area and completed post secondary education
                                        at the University of British Columbia. After receiving a Bachelor of Human Kinetics
                                        in 2008, I sampled careers in health care, leisure administration, and academic
                                        research. The latter included co-publishing a paper on Motor Learning with Dr. Nicola
                                        Hodges.</p>
                                    <p>
                                        In 2010 I enrolled in an intensive software development program at the BC Institute
                                        of Technology. Since graduating with a certificate of technology, I have provided
                                        Web development and technical- support services to small- and medium-sized businesses
                                        in Canada.</p>
                                    <p>
                                        In 2011 my wife Kathryn and I moved from Vancouver to Salt Spring Island. Recently
                                        I decided to start BigFont.ca with two missions. The first is to assist businesses
                                        in need of sophisticated
                                        <abbr class="initialism" title="Information Technology">
                                            IT</abbr>
                                        solutions. The second is to help residents in need of home technical support.</p>
                                    <p>
                                        In my spare time I study chess, practice sleight-of-hand, and enjoy public domain
                                        eBooks. I am a Microsoft Certified Professional Developer.
                                    </p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </section>
            </div>
        </article>
        <%--article footer--%>
        <footer>
        </footer>
    </div>
    <%--end bootstrap root container--%>
    </form>
    <script src="assets-83/external/js/jquery.min.js" type="text/javascript"></script>
    <script src="assets-83/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
