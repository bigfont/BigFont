<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BigFont.Default" %>

<!DOCTYPE html />
<html>
<head runat="server">
    <title></title>
    <link href="assets-78/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets-78/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"
        type="text/css" />
    <link href="assets-78/site/css/bigfont.css" rel="stylesheet" type="text/css" />
    <link href="assets-78/site/css/bigfont-sandbox.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--Subhead--%>
        <header class="jumbotron subhead" id="overview">
            <div class="container">
                <img src="assets-78/site/img/logo_600.jpg" alt="BigFont.ca Logo" />
            </div>
        </header>
        <%--Container--%>
        <div class="container">
            <div class="row">
                <%--Affix nav--%>
                <div class="span3" style="min-height: 1px;">
                    <div data-offset-top="200" data-spy="affix" id="subnav" class="affix">
                        <div class="row">
                            <div class="span3">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li><a href="#aboutUs"><i class="icon-chevron-right"></i>About Us</a></li>
                                    <li><a href="#portfolio"><i class="icon-chevron-right"></i>Portfolio</a></li>
                                    <li><a href="#adrian"><i class="icon-chevron-right"></i>Adrian Fletcher</a></li>
                                    <li><a href="#shaun"><i class="icon-chevron-right"></i>Shaun Luttin</a></li>
                                    <li class="contact"><a href="mailto:adrian@bigfont.ca?subject='Enquiry from BigFont.ca'">
                                        <i class="icon-envelope"></i>adrian@bigfont.ca</a> </li>
                                    <li class="contact"><a href="#" class="non-link"><i class="icon-bell"></i>250-931-7221</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="row">
                            <div class="span3">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span9">
                    <section id="aboutUs">
                        <div class="row">
                            <div class="hack-vertical-spacer hidden-phone">
                            </div>
                            <div class="span6">
                                <div class="page-header">
                                    <h1>
                                        About Us</h1>
                                </div>
                                <div class="well">
                                    <p>
                                        BigFont.ca is a computer and Internet technology service on Salt Spring Island.
                                        We work with local residential customers and small to medium sized businesses. We
                                        offer usable, legible technology wherever the Web will take us.</p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="portfolio">
                        <div class="row">
                            <div class="hack-vertical-spacer hidden-phone">
                            </div>
                            <div class="span6">
                                <div class="page-header">
                                    <h1>
                                        Portfolio</h1>
                                </div>
                                <div class="well">
                                    <p>
                                        We have worked with businesses, artists, and professionals, using diverse technologies
                                        to create simple, elegant designs.</p>
                                    <ul>
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
                        </div>
                    </section>
                    <section id="adrian">
                        <div class="row">
                            <div class="hack-vertical-spacer hidden-phone">
                            </div>
                            <div class="span6">
                                <div class="page-header">
                                    <h1>
                                        Adrian Fletcher</h1>
                                </div>
                                <div class="headshot-etc">
                                    <img class="well well-small headshot" src="assets-78/site/img/adi.png" alt="Adrian Fletcher">
                                </div>
                                <div class="well">
                                    <p>
                                        I came to Canada from England in 1991 after meeting my future wife Darlene while
                                        on safari in Zimbabwe. We moved to Salt Spring from Victoria in June of this year.
                                        My passion is designing web sites that work because they are built on uncompromising
                                        user-centred information design.</p>
                                    <p>
                                        I studied Internet technologies at Capilano College, and Java programming and database
                                        design at Simon Fraser University in 1999. I was then employed for nine years at
                                        UVic, designing and building complex web systems, after which I decided to branch
                                        out on my own. I am also skilled at web graphics and web page layout and design,
                                        content editing and formatting.</p>
                                    <p>
                                        I have recent experience as a Realtor and am a BCRPA Personal Trainer. I enjoy the
                                        outdoors and exploring new terrain, as a hiker, runner and kayaker. I firmly believe
                                        that communication is key in everything we do, and I bring that to web site development
                                        in every way I can.</p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section id="shaun">
                        <div class="row">
                            <div class="hack-vertical-spacer hidden-phone">
                            </div>
                            <div class="span6">
                                <div class="page-header">
                                    <h1>
                                        Shaun Luttin</h1>
                                </div>
                                <div class="headshot-etc">
                                    <img class="well well-small headshot" src="assets-78/site/img/shaun.png" alt="Shaun Luttin">
                                    <img class="etc" src="assets-78/site/img/logo_MCTS_NoText.png" alt="Microsoft Certified Technology Specialist Logo">
                                    <img class="etc" src="assets-78/site/img/logo_MCPD_NoText.png" alt="Microsoft Certified Professional Developer Logo">
                                </div>
                                <div class="well">
                                    <p>
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
                                        in need of sophisticated IT solutions. The second is to help residents in need of
                                        home technical support.</p>
                                    <p>
                                        In my spare time I study chess, practice sleight-of-hand, and enjoy public domain
                                        eBooks. I am a Microsoft Certified Professional Developer.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script src="assets-78/external/js/jquery.min.js" type="text/javascript"></script>
    <script src="assets-78/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
