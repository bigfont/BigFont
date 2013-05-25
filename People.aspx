<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMain.Master" AutoEventWireup="true"
    CodeBehind="People.aspx.cs" Inherits="BigFont.People1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphHeader" runat="server">
    <h1>
        We Are People Who Like Big Font</h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphSubNav" runat="server">
    <li><a href="#shaun"><i class="icon-chevron-right"></i>Shaun Luttin</a></li>  
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMainArticleSections" runat="server">
    <section id="shaun">
        <div class="row">
            <div class="span7">
                <header>
                    <h1>
                        Shaun Luttin</h1>
                </header>
            </div>
        </div>
        <div class="row">
            <div class="span7">
                <div class="contact-card well well-small">
                    <div class="contact-card-inner">
                        <img class="img-polaroid img-rounded" src="assets-210/site/img/shaun_square_200.jpg"
                            alt="Shaun Luttin has short to medium length brown hair. He is wearing a blue pin-striped shirt and is standing, smiling, in front of a window."
                            title="Headshot of Shaun Luttin">
                    </div>
                    <div class="contact-card-inner">
                        <h3>
                            Technology</h3>
                        <a class="multiline" href="./contact?action=email#technology">
                            <span>shaun@</span> <span>bigfont.ca</span> </a>
                        <img class="img-polaroid img-rounded" src="assets-210/site/img/shaun_contact_card_etc_1_100x75.jpg"
                            alt="Shaun is both a Microsoft Certified Technology Specialist and a Microsoft Certified Professional Developer"
                            title="Microsoft Certified Professional Developer Logo">
                        <img class="img-polaroid img-rounded" src="assets-210/site/img/shaun_contact_card_etc_2_100x75.jpg"
                            alt="" title="Microsoft Certified Technology Specialist Logo">
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="span7">
                <p class="lead">
                    Shaun was born and raised in Vancouver and completed post secondary education at the
                    University of British Columbia. After receiving a Bachelor of Human Kinetics in
                    2008, he sampled careers in health care, leisure administration, and academic research.
                    The latter included co-publishing a paper on Motor Learning with Dr. Nicola Hodges.</p>
                <p>
                    In 2010 he enrolled in an intensive software development program at the BC Institute
                    of Technology. Since graduation he has provided web development and technical support
                    services to small and medium-sized businesses. He is a Microsoft Certified Professional Developer.</p>
                <p>
                    In 2011 he and his wife Kathryn moved from Vancouver to Salt Spring Island. In 2012
                    Shaun decided to start BigFont.ca with two goals. The first is to assist businesses
                    in need of sophisticated
                    <abbr class="initialism" title="Information Technology">
                        IT</abbr>
                    solutions. The second is to help residents in need of home technical support.</p>
                <p>
                    In his spare time Shaun studies chess, practices sleight-of-hand, and is a prolific reader.
                    View his complete vita on <a href="http://ca.linkedin.com/in/shaunluttin">LinkedIn</a>.
                </p>
                <p>
                    Microsoft ID: 
                    <a href="https://www.mcpvirtualbusinesscard.com/VBCServer/shaunluttin/profile">8147280</a></p>
            </div>
        </div>
    </section>
    <%--article footer--%>
    <footer>
        <a href="#">Return to Top</a>
    </footer>
</asp:Content>
