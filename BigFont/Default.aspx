<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BigFont.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>BigFont.ca ~ Technology and Web Solutions on Salt Spring Island</title>
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <link href="assets-92/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets-92/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"
        type="text/css" />
    <link href="assets-92/site/css/bigfont.css" rel="stylesheet" type="text/css" />
    <link href="assets-92/site/css/bigfont-sandbox.css" rel="stylesheet" type="text/css" />
</head>


<body data-spy="scroll" data-target="#navigation" data-offset="21">
    <%--bootstrap root container--%>
    <div class="container">
        <%--header--%>
        <header class="row">
            <div class="span12">
                <img src="assets-92/site/img/logo_600.jpg" alt="The BigFont logo has a small capital 'A', then a large upward-pointing arrow, and next a large capital 'Z.' Following this is the business title, BigFont.ca, and its tagline, 'Legible Technology.'"
                    title="The BigFont.ca Logo" />
                <hgroup class="explicit-wrap">
                    <h1>
                        Technology and Web:&nbsp;</h1>
                    <h2>
                        Solutions on Salt Spring&nbsp;</h2>
                </hgroup>
            </div>
        </header>
        <%--article and main content--%>
        <article class="row">
            <%--affix, appears to require the div.affix-container parent--%>
            <%--scrollspy, appears to require the data-target on the nav element not its child menu element--%>
            <%--TODO - use the address element around our contact information--%>            
            <div class="span3 affix-container">                                                           
                <nav id="navigation" data-offset-top="260" data-spy="affix">
                    <menu class="nav nav-list nav-stacked bs-docs-sidenav">
                        <li><a href="#about"><i class="icon-chevron-right"></i>About Us</a></li>
                        <li><a href="#services"><i class="icon-chevron-right"></i>Services</a></li>
                        <li><a href="#clients"><i class="icon-chevron-right"></i>Client List</a></li>
                        <li><a href="#shaun"><i class="icon-chevron-right"></i>Shaun Luttin</a></li>
                        <li><a href="#adrian"><i class="icon-chevron-right"></i>Adrian Fletcher</a></li>
                        <li class="contact"><a href="mailto:shaun@bigfont.ca?subject='Enquiry from BigFont.ca'">
                            <i class="icon-envelope"></i>shaun@bigfont.ca</a> </li>
                        <li class="contact"><a href="#" class="non-link"><i class="icon-bell"></i>250-931-0628</a>
                        </li>
                    </menu>
                </nav>
            </div>          
            <div class="span9">
                <section>
                    <div class="row">
                        <div class="span6">
                            <header id="about">
                                <h1>
                                    About Us</h1>
                            </header>
                            <p>
                                <strong>BigFont.ca</strong> is a technology and Web solutions provider located on
                                Salt Spring Island. Our customers vary between local residents through to small
                                and medium-sized businesses anywhere. We offer usable, legible technology wherever
                                the Web will take us.</p>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="span6">
                            <header id="services">
                                <h1>
                                    Services</h1>
                            </header>
                            <dl>
                                <dt>Personal and Smaller Project Web Solutions</dt>
                                <dd>
                                    We create custom solutions tailored to our client’s unique requirements.
                                </dd>
                                <dt>Packaged Web Solutions</dt>
                                <dd>
                                    For simple, easily managed Web sites, choose among our proprietary Web site packages,
                                    WordPress sites, and PrestoShop e-commerce payment system.
                                </dd>
                                <dt>Business Solutions</dt>
                                <dd>
                                    We analyze your business to develop a Web strategy. The resulting insight facilitates
                                    our building a custom site that leverages the best of the Web for your company.
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
                                        RAM</abbr>, perform anti-virus checkups, or tutor you or your employees in new
                                    software. We make local house calls, or you drop off your device.
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
                <section>
                    <div class="row">
                        <div class="span6">
                            <header id="clients">
                                <h1>
                                    Client List</h1>
                            </header>
                            <ul>
                                <li>Nature Works</li>
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
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="span6">
                            <header id="shaun">
                                <h1>
                                    Shaun Luttin</h1>
                            </header>
                            <aside class="headshot-etc">
                                <img class="headshot" src="assets-92/site/img/shaun200x200.png" alt="Shaun Luttin has brown hair that reaches past his shoulders. He has medium-sized, toothy smile, and is standing in front of leafy bush."
                                    title="Headshot of Shaun Luttin">
                                <img class="etc" src="assets-92/site/img/mcts100x75.png" alt="Shaun is both a Microsoft Certified Technology Specialist and a Microsoft Certified Professional Developer"
                                    title="Microsoft Certified Technology Specialist Logo">
                                <img class="etc" src="assets-92/site/img/mcpd100x75.png" alt="" title="Microsoft Certified Professional Developer Logo">
                            </aside>
                            <p class="lead">
                                I was born and raised in Vancouver and completed post secondary education
                                at the University of British Columbia. After receiving a Bachelor of Human Kinetics
                                in 2008, I sampled careers in health care, leisure administration, and academic
                                research. The latter included co-publishing a paper on Motor Learning with Dr. Nicola
                                Hodges.</p>
                            <p>
                                In 2010 I enrolled in an intensive software development program at the BC Institute
                                of Technology. Since graduation I have provided Web development and technical support
                                services to small and medium-sized businesses. I am a Microsoft Certified Professional
                                Developer..</p>
                            <p>
                                In 2011 my wife Kathryn and I moved from Vancouver to Salt Spring Island. Recently
                                I decided to start BigFont.ca with two missions. The first is to assist businesses
                                in need of sophisticated
                                <abbr class="initialism" title="Information Technology">
                                    IT</abbr>
                                solutions. The second is to help residents in need of home technical support.</p>
                            <p>
                                In my spare time I study chess, practice sleight-of-hand, and am a prolific reader.
                            </p>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="span6">
                            <header id="adrian">
                                <h1>
                                    Adrian Fletcher</h1>
                            </header>
                            <aside class="headshot-etc">
                                <img src="assets-92/site/img/adi200x200.png" title="Headshot of Adrian Fletcher"
                                    alt="Adrian Fletcher has brown hair and a beard. Both have a hint of silver. He is has a focused look, a small smile, and is standing in front a tree.">
                            </aside>
                            <p class="lead">
                                My wife and I migrated to Canada from Britain in 1991 after we had met while on
                                safari in Zimbabwe. We moved to Salt Spring in June 2012. My passion is designing
                                web sites built on uncompromising user-centred information design.</p>
                            <p>
                                In 1999 I studied Internet technologies at Capilano College and Java programming
                                and data base design at Simon Fraser University. I was employed for nine years at
                                <abbr title="University of Victoria">
                                    UVic</abbr>, designing and building complex web systems. Later, I established
                                my own business. I am skilled at web graphics and web page layout and design, content
                                editing and formatting. I firmly believe that communication is key in everything
                                we do, and I bring that integrity to web site development.</p>
                            <p>
                                I hold current REALTOR&reg; credentials and am a
                                <abbr class="initialism" title="British Columbia Recreation and Parks Association">
                                    BCRPA</abbr>
                            Personal Trainer. I enjoy the outdoors and exploring new terrain, as a hiker, runner
                            and kayaker.
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
    <script src="http://code.jquery.com/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/js/bootstrap.min.js"
        type="text/javascript"></script>
    <script src="assets-92/site/js/bigfont.js" type="text/javascript"></script>
</body>
</html>
