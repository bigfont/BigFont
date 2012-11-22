﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default_Old.aspx.cs" Inherits="BigFont.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>BigFont.ca ~ Technology and Web Solutions on Salt Spring Island</title>
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <link href="assets-101/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="assets-101/bootstrap/css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="assets-101/site/css/bigfont.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        body > .navbar .brand
        {
            padding-right: 0;
            padding-left: 0;
            margin-left: 20px;
            float: right;
            font-weight: bold;
            color: #000;
            text-shadow: 0 1px 0 rgba(255,255,255,.1), 0 0 30px rgba(255,255,255,.125);
            -webkit-transition: all .2s linear;
            -moz-transition: all .2s linear;
            transition: all .2s linear;
        }
        body > .navbar .brand:hover
        {
            text-decoration: none;
            text-shadow: 0 1px 0 rgba(255,255,255,.1), 0 0 30px rgba(255,255,255,.4);
        }
        article section header { padding-top:70px; }
        
    </style>
    <%--Google Analytics--%>
    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36302929-1']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <%--End Google Analytics--%>
</head>
<!-- Navbar
    ================================================== -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar">
                </span>
            </button>
            <%--<a class="brand" href="./index.html">Bootstrap</a>--%>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="active"><a href="/Default.aspx">Home</a> </li>
                    <li class=""><a href="/People.aspx">People</a> </li>                    
                </ul>
            </div>
        </div>
    </div>
</div>
<body data-spy="scroll" data-target="#navigation" data-offset="21">
    <%--bootstrap root container--%>
    <div class="container">
        <%--header--%>
        <header class="row">
            <div class="span12">
                <img src="assets-101/site/img/logo_600.jpg" alt="The BigFont logo has a small capital 'A', then a large upward-pointing arrow, and next a large capital 'Z.' Following this is the business title, BigFont.ca, and its tagline, 'Legible Technology.'"
                    title="The BigFont.ca Logo" />
                <hgroup class="hidden-phone page-header">
                    <h1>
                        Technology & Web Solutions</h1>
                </hgroup>
            </div>
        </header>
        <%--article and main content--%>
        <article class="row">
            <%--affix, appears to require the div.affix-container parent--%>
            <%--scrollspy, appears to require the data-target on the nav element not its child menu element--%>
            <%--TODO - use the address element around our contact information--%>
            <div class="span4 affix-container">
                <nav id="navigation" data-offset-top="260" data-spy="affix">
                    <menu class="nav nav-list nav-stacked bs-docs-sidenav">
                        <li class="contact"><a class="non-link" href="#"><i class="icon-bell"></i>250-931-7299</a>
                        </li>
                        <li class="contact"><a href="mailto:info@bigfont.ca?subject='Enquiry%20from%20BigFont.ca'">
                            <i class="icon-envelope"></i>info@bigfont.ca</a></li>
                        <li><a href="#about"><i class="icon-chevron-right"></i>About Us</a></li>
                        <li><a href="#services"><i class="icon-chevron-right"></i>Services</a></li>
                        <li><a href="#responsive-design"><i class="icon-chevron-right"></i>Responsive</a></li>
                        <li><a href="#clients"><i class="icon-chevron-right"></i>Client List</a></li>
                        <li><a href="#rates"><i class="icon-chevron-right"></i>Rate Structure</a></li>
                        <li><a href="#shaun"><i class="icon-chevron-right"></i>Shaun Luttin</a></li>
                        <li><a href="#tony"><i class="icon-chevron-right"></i>Tony Edwards</a></li>
                        <li><a href="#adrian"><i class="icon-chevron-right"></i>Adrian Fletcher</a></li>
                    </menu>
                </nav>
            </div>
            <div class="span8">
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
                <section>
                    <div class="row">
                        <div class="span7">
                            <header id="services">
                                <h1>
                                    Services</h1>
                            </header>
                            <dl>
                                <dt>Personal and Smaller Project Web Solutions</dt>
                                <dd>
                                    We create custom solutions tailored to our clients’ unique requirements.
                                </dd>
                                <dt>Packaged Web Solutions</dt>
                                <dd>
                                    For simple, easily managed Web sites, choose among our proprietary Web site packages,
                                    WordPress sites, and PrestaShop e-commerce payment system.
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
                <section>
                    <div class="row">
                        <div class="span7">
                            <header id="responsive-design">
                                <h1>
                                    Responsive Design</h1>
                            </header>
                            <p>
                                <strong>BigFont specializes in <dfn id="rd">Responsive Design</dfn>.</strong></p>
                            <p>
                                <abbr title="Responsive Design">
                                    RD</abbr>
                                is the technology that ensures that <em>any</em> web page will present well on <em>any</em>
                                sized computer device.</p>
                            <p>
                                Businesses are finding that with the exponential growth in the use of mini computers
                                such as mobile phones and tablets that their standard web sites do not present well
                                on them. Attempts to access web sites on such devices frequently lead to frustration
                                and discontinuance.</p>
                            <p>
                                Conversely, a web site that has been created with
                                <abbr title="Responsive Design">
                                    RD</abbr>
                                as its core technology is designed for use with devices such as mobile phones in
                                addition to tablets and regular size computer screens. This is not simply a zooming
                                in or squishing capability which might well leave the page display little if any
                                improved.</p>
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
                                later time.</p>
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
                        <div class="span7">
                            <header id="clients">
                                <h1>
                                    Client List</h1>
                            </header>
                            <ul>
                                <li>Dave's Drilling & Blasting</li>
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
                        <div class="span7">
                            <header id="rates">
                                <h1>
                                    Rate Structure</h1>
                            </header>
                            <p class="lead">
                                Our hourly rate is $50.00</p>
                            <p>
                                <strong>The rate covers productive work.</strong></p>
                            <p>
                                If the nature of your project requires a learning period, before or during the project
                                execution, we will not bill for the time spent learning. For example: A web-site
                                building project consumed 39 hours overall but included 7.5 hours of learning. The
                                resulting billing was for 31.5 hours.</p>
                            <p>
                                <strong>The hourly rate is standard for all projects.</strong> It applies to:</p>
                            <ul>
                                <li>Personal and Smaller Project Web Solutions</li>
                                <li>Packaged Web Solutions</li>
                                <li>Business Solutions</li>
                                <li>
                                    <abbr class="initialism" title="Multiple Listing Service">
                                        MLS</abbr>&reg; Integrated Web Sites</li>
                                <li>Local Technical Support</li>
                            </ul>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="span7">
                            <header id="shaun">
                                <h1>
                                    Shaun Luttin</h1>
                            </header>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span9">
                            <div class="contact-card well well-small">
                                <div class="contact-card-inner">
                                    <img class="img-polaroid img-rounded" src="assets-101/site/img/shaun200x200.png"
                                        alt="Shaun Luttin has brown hair that reaches past his shoulders. He has medium-sized, toothy smile, and is standing in front of leafy bush."
                                        title="Headshot of Shaun Luttin">
                                </div>
                                <div class="contact-card-inner">
                                    <h3>
                                        Technology</h3>
                                    <a class="multiline" href="mailto:shaun@bigfont.ca?subject=Enquiry about BigFont.ca Services">
                                        <span>shaun@</span> <span>bigfont.ca</span> </a>
                                    <img class="img-polaroid img-rounded" src="assets-101/site/img/shaun_contact_card_etc_1_100x75.jpg"
                                        alt="Shaun is both a Microsoft Certified Technology Specialist and a Microsoft Certified Professional Developer"
                                        title="Microsoft Certified Professional Developer Logo">
                                    <img class="img-polaroid img-rounded" src="assets-101/site/img/shaun_contact_card_etc_2_100x75.jpg"
                                        alt="" title="Microsoft Certified Technology Specialist Logo">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="span7">
                            <p class="lead">
                                I was born and raised in Vancouver and completed post secondary education at the
                                University of British Columbia. After receiving a Bachelor of Human Kinetics in
                                2008, I sampled careers in health care, leisure administration, and academic research.
                                The latter included co-publishing a paper on Motor Learning with Dr. Nicola Hodges.</p>
                            <p>
                                In 2010 I enrolled in an intensive software development program at the BC Institute
                                of Technology. Since graduation I have provided Web development and technical support
                                services to small and medium-sized businesses. I am a Microsoft Certified Professional
                                Developer.</p>
                            <p>
                                In 2011 my wife Kathryn and I moved from Vancouver to Salt Spring Island. Recently
                                I decided to start BigFont.ca with two goals. The first is to assist businesses
                                in need of sophisticated
                                <abbr class="initialism" title="Information Technology">
                                    IT</abbr>
                                solutions. The second is to help residents in need of home technical support.</p>
                            <p>
                                In my spare time I study chess, practice sleight-of-hand, and am a prolific reader.
                                View my complete vita on <a href="http://ca.linkedin.com/in/shaunluttin">LinkedIn</a>.
                            </p>
                            <p>
                                Microsoft Certification ID: 8147280</p>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="span7">
                            <header id="tony">
                                <h1>
                                    Tony Edwards</h1>
                            </header>
                            <div class="row">
                                <div class="span9">
                                    <div class="contact-card well well-small">
                                        <div class="contact-card-inner">
                                            <img class="img-polaroid img-rounded" src="assets-101/site/img/tony200x200.png" title="Headshot of Tony Edwards"
                                                alt="Tony Edwards is wearing a gray and dark blue textured flat cap, thin rimmed glasses, a white t-shirt, and has black-gray hair. He is casually smiling with an astute look and is sitting in on a maroon couch.">
                                        </div>
                                        <div class="contact-card-inner">
                                            <h3>
                                                Marketing</h3>
                                            <a class="multiline" href="mailto:tony@bigfont.ca?subject=Enquiry about BigFont.ca Services">
                                                <span>tony@</span> <span>bigfont.ca</span> </a>
                                            <img class="img-polaroid img-rounded" src="assets-101/site/img/tony_contact_card_etc_1_100x75.jpg"
                                                alt="A standard looking school crest with a giraffe as its center piece." title="The Kongwa School Crest">
                                            <img class="img-polaroid img-rounded" src="assets-101/site/img/tony_contact_card_etc_2_100x75.jpg"
                                                alt="An horizontally fipped version of the previous image." title="The Kongwa School Crest">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class="lead">
                                My life of experiences includes photography and film, exposure to diverse cultures,
                                geographies, and cities, and work with the largest and smallest businesses.</p>
                            <p>
                                In photography and film, I was producer & director of
                                <abbr title="Television">
                                    TV</abbr>
                                commercials, cinema commercials, and radio spots. My life has been set in English,
                                African, Mexican, and French Canadian, during which I have researched rural Africa,
                                rural
                                <abbr title="United States of America">
                                    US</abbr>, and countless other urban environments. My early life is documented
                                in <a href="http://www.slopeofkongwahill.com/">The Slope of Kongwa Hill.</a></p>
                            <p>
                                My marketing career spans case studies, budget building, account retention, branch
                                building, integration of marketing, advertising, promotions, public relations, and
                                qualitative research, business building, and new business consultations.
                            </p>
                            <p>
                                Through BigFont, I am available as marketing consultant to your company. Marketing
                                rates are negotiable and change with project requirements.</p>
                        </div>
                    </div>
                </section>
                <section>
                    <div class="row">
                        <div class="span7">
                            <header id="adrian">
                                <h1>
                                    Adrian Fletcher</h1>
                            </header>
                            <div class="row">
                                <div class="span9">
                                    <div class="contact-card well well-small">
                                        <div class="contact-card-inner">
                                            <img class="img-polaroid img-rounded" src="assets-101/site/img/adi200x200.png" title="Headshot of Adrian Fletcher"
                                                alt="Adrian has a silver-gray beard, a focused look on his face, and is standing in front of some vines through which light filters.">
                                        </div>
                                        <div class="contact-card-inner">
                                            <h3>
                                                Design</h3>
                                            <a class="multiline" href="mailto:adrian@bigfont.ca?subject=Enquiry about BigFont.ca Services">
                                                <span>adrian@</span> <span>bigfont.ca</span> </a>
                                            <%--                                            
                                            <img class="img-polaroid img-rounded" src="assets-101/site/img/adi_contact_card_etc_1_100x75.jpg"
                                                alt="An artists rendering of a crow with a rose in its mouth." title="The Cranky Crow">
                                            <img class="img-polaroid img-rounded" src="assets-101/site/img/adi_contact_card_etc_2_100x75.jpg"
                                                alt="An horizontally fipped version of the previous image." title="The Cranky Crow">--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class="lead">
                                My passion is designing intuitive and attractive web sites that are built on uncompromising
                                user-centred information design.
                            </p>
                            <p>
                                I studied Internet technologies at Capilano College, and Java programming and database
                                design at Simon Fraser University in 1999. Later, I established my own business.
                                I am also skilled at web graphics and web page layout and design, content editing
                                and print formatting. I firmly believe that communication is key in everything we
                                do, and I bring that to website development in every way I can.</p>
                            <p>
                                I have recent experience as a REALTOR&reg; and am a
                                <abbr class="initialism" title="British Columbia Recreation and Parks Association">
                                    BCRPA</abbr>
                            Personal Trainer. I enjoy the outdoors and exploring new terrain, as a hiker, runner
                            and kayaker.
                        </div>
                    </div>
                </section>
                <%--article footer--%>
                <footer>
                    <a href="#">Return to Top</a>
                </footer>
            </div>
        </article>
    </div>
    <%--end bootstrap root container--%>
    <script src="http://code.jquery.com/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.1.1/js/bootstrap.min.js"
        type="text/javascript"></script>
    <script src="assets-101/site/js/bigfont.js" type="text/javascript"></script>
</body>
</html>