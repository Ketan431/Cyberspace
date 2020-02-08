<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="Cyberlaw.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Cyber Space</title>
    <link rel="icon" href="../img/icon.png" />

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css' />

    <!-- Custom styles for this template -->
    <link href="../css/agency.css" rel="stylesheet" />
    <!-- My Style -->
    <style>
        .navbar > .container, .navbar > .container-fluid {
            padding: 5px;
        }

        .dropbtn {
            background-color: #212529;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #212529;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: white;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

                .dropdown-content a:hover {
                    background-color: #212529;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown:hover .dropbtn {
            background-color: #212529;
        }

        .scrollFontSize {
            font-size: 60px;
        }

         .image {
            border-radius: 50% 50%;
            border: 2px solid #fed136;
        }
    </style>




</head>
<body id="page-top">
    <form id="form1" runat="server">
        <div>

            <!-- Navigation -->
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
                <div class="container">
                    <a class="navbar-brand scroll js-scroll-trigger" href="#page-top" style="font-size: 30px;">Cyber Space</a>
                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        Menu
            <i class="fas fa-bars"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav  ml-auto">
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#services">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#portfolio">Latest headlines</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#about">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#team">Cyber Security Team</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link js-scroll-trigger" href="sections.aspx">Portal</a>
                                
                            </li>

                            <li class="nav-item">
                                <a href="../login.aspx"><asp:Label ID="usrname" runat="server" CssClass="nav-link js-scroll-trigger" ToolTip="logout"></asp:Label></a>

                            </li>

                            <li class="nav-item">
                                <asp:Image ID="Image1" runat="server" Height="45px" Width="45px" CssClass="image" />
                            </li>

                            

                        </ul>
                    </div>
                </div>
            </nav>

            <!-- Header -->
            <header class="masthead" style="">
                <div class="container" id="divtoslide">
                    <div class="intro-text" id="txt">
                        <div class="intro-lead-in">Welcome To Our Online Cyber Security System!</div>
                        <div class="intro-heading text-uppercase" style="font-family: 'Times New Roman', Times, serif">We are happy to help you</div>
                        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
                    </div>
                </div>
            </header>

            <!-- Services -->
            <section class="page-section" id="services">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2 class="section-heading text-uppercase" style="color:white;">Services provided by us</h2>
                            <h3 class="section-subheading text-muted">Portal provides various services as.</h3>
                        </div>
                    </div>
                    <div class="row text-center">
                        <div class="col-md-4">
                            <span class="fa-stack fa-4x">
                                <i class="fas fa-circle fa-stack-2x text-primary"></i>
                                <i class="fas fa-list fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="service-heading">Complain Registration</h4>
                            <p class="text-muted">Portal provides you with complain form related to cyber crime.To file complain you must register as user or login.Complain must be real,faulty complain may cause you fine.</p>
                        </div>
                        <div class="col-md-4">
                            <span class="fa-stack fa-4x">
                                <i class="fas fa-circle fa-stack-2x text-primary"></i>
                                <i class="fas fa-laptop fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="service-heading">Basic info guide</h4>
                            <p class="text-muted">A basic guide of cyber security will be available to get knowlede about cyber security.Guide will contain step by step information about cyber security.You can also contribute your knowledge related to cyber security in comment secion.</p>
                        </div>
                        <div class="col-md-4">
                            <span class="fa-stack fa-4x">
                                <i class="fas fa-circle fa-stack-2x text-primary"></i>
                                <i class="fas fa-lock fa-stack-1x fa-inverse"></i>
                            </span>
                            <h4 class="service-heading">Web Security</h4>
                            <p class="text-muted">Portal is fully secured by SSID and BSSID.No cache or cookies are saved so that secret information should not be leaked.</p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Portfolio Grid -->

            <section class="bg-light page-section" id="portfolio">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2 class="section-heading text-uppercase">Latest News</h2>
                            <h3 class="section-subheading text-muted">Latest cyber crime news.</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-6 portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content">
                                        <i class="fas fa-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="../img/portfolio/news1.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <h4>Cyware Hacker News from Us</h4>
                                <p class="text-muted">Jun 17, 2019 | Breaches and Incidents</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content">
                                        <i class="fas fa-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="../img/portfolio/news2.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <h4>Cyware Hacker News from UK</h4>
                                <p class="text-muted">Jun 17, 2019 | Breaches and Incidents</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content">
                                        <i class="fas fa-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="../img/portfolio/news3.png" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <h4>Cyware Hacker News from Australia</h4>
                                <p class="text-muted">Jun 17, 2019 | Breaches and Incidents</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content">
                                        <i class="fas fa-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="../img/portfolio/news4.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <h4>Fault in Mobiles.</h4>
                                <p class="text-muted">Jun 17, 2019 | New Cyber Technologies</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content">
                                        <i class="fas fa-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="../img/portfolio/news5.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <h4>Ransome ware news</h4>
                                <p class="text-muted">Jun 17, 2019 | Malware and Vulnerabilities</p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content">
                                        <i class="fas fa-plus fa-3x"></i>
                                    </div>
                                </div>
                                <img class="img-fluid" src="../img/portfolio/news6.jpg" alt="" />
                            </a>
                            <div class="portfolio-caption">
                                <h4>Fraud news</h4>
                                <p class="text-muted">Jun 17, 2019 | Identity Theft, Fraud, Scams</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- About -->
            <section class="page-section" id="about">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2 class="section-heading text-uppercase">About</h2>
                            <h3 class="section-subheading text-muted">This portal is designed to help peoples who are suffering from cybercrime.</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="timeline">
                                <li>
                                    <div class="timeline-image">
                                        <img class="rounded-circle img-fluid" src="../img/about/1.jpg" alt="" />
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4>How we started</h4>
                                            <h4 class="subheading"></h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p class="text-muted">This portal was started by Miachel Dell in 1999.Nowaday Portal is wideley used.Total 3 team memebers started this initiative to help peoples.Ian Bell,designer of website.Alexa clarke Ethical Hacker.Sophia Louies,Investigating officer</p>

                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-image">
                                        <img class="rounded-circle img-fluid" src="../img/about/2.jpg" alt="" />
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4>March 2011</h4>
                                            <h4 class="subheading">An Agency is Born</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p class="text-muted">23rd March 2011 3 team members started an agency so that more number of peoples may aware of this portal.There are more than 20000 branches world wide.Around more than 20000 complaints are registered online and other complaints were registered in agency.</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-image">
                                        <img class="rounded-circle img-fluid" src="../img/about/3.jpg" alt="" />
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4>December 2012</h4>
                                            <h4 class="subheading">Transition to Full Service</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p class="text-muted">By December 2012 number of sevices were extended and upgraded to solve the problems fast and accurate.Online IP tracing,User tracing,Phone number tracing etc services were made available. </p>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-image">
                                        <img class="rounded-circle img-fluid" src="../img/about/4.jpg" alt="" />
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4>July 2014</h4>
                                            <h4 class="subheading">Against the law</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p class="text-muted">On 12th July 2014 our portal was declared against the law by Indian Government.But we hired the best lawyer of India to prove that we wre not doing any illegal activity.After lot of efforts our lawyer was able to prove that we were just helping peoples.After one month our website was set ti ISO to Certify.</p>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Team -->
            <section class="bg-light page-section" id="team">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2 class="section-heading text-uppercase">Our Amazing Team</h2>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="team-member">
                                <img class="mx-auto rounded-circle" src="../img/team/1.jpg" alt="" />
                                <h4>Sophia Louies</h4>
                                <p class="text-muted">Investigating Officer</p>
                                <ul class="list-inline social-buttons">
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="team-member">
                                <img class="mx-auto rounded-circle" src="../img/team/2.jpg" alt="" />
                                <h4>Ian Bell</h4>
                                <p class="text-muted">Lead Designer</p>
                                <ul class="list-inline social-buttons">
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="team-member">
                                <img class="mx-auto rounded-circle" src="../img/team/3.jpg" alt="" />
                                <h4>Alexa Clarke</h4>
                                <p class="text-muted">Ethical Hacker</p>
                                <ul class="list-inline social-buttons">
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <a href="#">
                                            <i class="fab fa-linkedin-in"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </section>

            <!-- Clients -->
            <section class="py-5">
                <div class="container">
                    <h3>Our Partners and Clients</h3>
                    <br />
                    <div class="row">

                        <div class="col-md-3 col-sm-6">
                            <a href="#">
                                <img class="img-fluid d-block mx-auto" src="../img/logos/envato.jpg" alt="" />
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <a href="#">
                                <img class="img-fluid d-block mx-auto" src="../img/logos/designmodo.jpg" alt="" />
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <a href="#">
                                <img class="img-fluid d-block mx-auto" src="../img/logos/themeforest.jpg" alt="" />
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <a href="#">
                                <img class="img-fluid d-block mx-auto" src="../img/logos/creative-market.jpg" alt="" />
                            </a>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Contact -->
            <section class="page-section" id="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <h2 class="section-heading text-uppercase">Contact Us</h2>
                            <h3 class="section-subheading text-muted">Feel free to ask queries.</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input class="form-control" id="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name." />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address." />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" id="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number." />
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <textarea class="form-control" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                        <p class="help-block text-danger"></p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                                <div class="col-lg-12 text-center">
                                    <div id="success"></div>
                                    <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit">Send Message</button>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>

            <!-- Footer -->
            <footer class="footer">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-4">
                            <span class="copyright">Copyright &copy; Cyberlaw 2019</span>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline social-buttons">
                                <li class="list-inline-item">
                                    <a href="#">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="https://www.facebook.com/ketu223">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="www.linkedin.com/in/ketan-bhenwal-371534190">
                                        <i class="fab fa-linkedin-in"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline quicklinks">
                                <li class="list-inline-item">
                                    <a href="#">Privacy Policy</a>
                                </li>
                                <li class="list-inline-item">
                                    <a href="#">Terms of Use</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>

            <!-- Portfolio Modals -->

            <!-- Modal 1 -->
            <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-dismiss="modal">
                            <div class="lr">
                                <div class="rl"></div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8 mx-auto">
                                    <div class="modal-body">
                                        <!-- News Details Go Here -->
                                        <h2 class="text-uppercase">Latest Cyber News from US</h2>
                                        <p class="item-intro text-muted">Three US Universities hit by data breaches impacting students and employees.</p>
                                        <img class="img-fluid d-block mx-auto" src="../img/portfolio/news1_full.jpg" alt="News1" />
                                        <p>
                                            Graceland University notified that an unauthorized third party gained access to the email accounts of certain employees on March 29, 2019, as well as from April 1-30 and April 12-May 1, 2019, respectively.
Missouri Southern State University suffered a data breach after several employees’ email accounts have been compromised in a phishing attack.
Three US Universities including Graceland University, Oregon State University, and Missouri Southern State University have disclosed data breach incidents impacting the personal information of their students and employees.
                                        </p>
                                        <a href="https://cyware.com/news/three-us-universities-hit-by-data-breaches-impacting-students-and-employees-101ae230" class="btn btn-info" target="_blank">Read More</a>
                                        <ul class="list-inline">
                                            <li>Date:Jun 17, 2019 </li>

                                        </ul>
                                        <button class="btn btn-primary" data-dismiss="modal" type="button">
                                            <i class="fas fa-times"></i>
                                            Close Project</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal 2 -->
            <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-dismiss="modal">
                            <div class="lr">
                                <div class="rl"></div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8 mx-auto">
                                    <div class="modal-body">
                                        <!-- News Details Go Here -->
                                        <h2 class="text-uppercase">Latest Cyber news from UK</h2>
                                        <p class="item-intro text-muted">Mermaids UK apologizes for data breach that disclosed private details of transgender children.</p>
                                        <img class="img-fluid d-block mx-auto" src="../img/portfolio/news2_full.jpg" alt="News2" />
                                        <p>
                                            Mermaids UK inadvertently disclosed over 1,000 pages of confidential emails online.
The letters exposed in the breach were sent between 2016 and 2017.
Mermaids UK has sent out an ‘apology’ letter for inadvertently exposing private details of transgender children and young people. The data breach occurred after the organization had published part of its email database on the internet.
                                        </p>
                                        <a href="https://cyware.com/news/mermaids-uk-apologizes-for-data-breach-that-disclosed-private-details-of-transgender-children-bd0c52b6" class="btn btn-info" target="_blank">Read More</a>
                                        <ul class="list-inline">
                                            <li>Date:Jun 17, 2019 </li>

                                        </ul>
                                        <button class="btn btn-primary" data-dismiss="modal" type="button">
                                            <i class="fas fa-times"></i>
                                            Close Project</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal 3 -->
            <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-dismiss="modal">
                            <div class="lr">
                                <div class="rl"></div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8 mx-auto">
                                    <div class="modal-body">
                                        <!-- News Details Go Here -->
                                        <h2 class="text-uppercase">Latest Cyber News from Australia</h2>
                                        <p class="item-intro text-muted">Australian Catholic University suffers data breach impacting the personal details of its staff.</p>
                                        <img class="img-fluid d-block mx-auto" src="../img/portfolio/news3_full.png" alt="news3" />
                                        <p>
                                            The threat actors involved in the attack sent phishing emails pretending to be from a trusted organization.
The emails included a link to a fake ACU login page.
The Australian Catholic University has suffered a fresh wave of cyberattack that resulted in the compromise of personal details of its staff. This is the second significant security breach that has occurred in a month at one of the country’s tertiary institutions.
                                        </p>
                                        <a href="https://cyware.com/news/australian-catholic-university-suffers-data-breach-impacting-the-personal-details-of-its-staff-9c97875a" class="btn btn-info" target="_blank">Read More</a>
                                        <ul class="list-inline">
                                            <li>Date:Jun 17, 2019 </li>

                                        </ul>
                                        <button class="btn btn-primary" data-dismiss="modal" type="button">
                                            <i class="fas fa-times"></i>
                                            Close Project</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal 4 -->
            <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-dismiss="modal">
                            <div class="lr">
                                <div class="rl"></div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8 mx-auto">
                                    <div class="modal-body">
                                        <!-- News Details Go Here -->
                                        <h2 class="text-uppercase">Faults in mobiles</h2>
                                        <p class="item-intro text-muted">Cellebrite touts upgraded tool that hacks Android and iOS devices.</p>
                                        <img class="img-fluid d-block mx-auto" src="../img/portfolio/news4_full.jpg" alt="" />
                                        <p>
                                            A new version of a tool released by the forensic company claims to hack Apple devices including those running iOS 12.3.
In addition, the tool is also reported to pull data from some premium Android devices manufactured by Samsung, Huawei, Motorola, LG, and Xiaomi.
Israel-based forensic company Cellebrite has announced a new version of its product that claims to hack Apple devices such as iPhones and iPads. Known as UFED Premium, this tool is an upgrade to an application known as Universal Forensic Extraction Device (UFED). It can unlock and extract data from Apple devices running recent versions of iOS, including 12.3. Furthermore, UFED Premium also claims to pull data from premium Android devices.
                                        </p>
                                        <a href="https://cyware.com/news/cellebrite-touts-upgraded-tool-that-hacks-android-and-ios-devices-cc073c9c" class="btn btn-info" target="_blank">Read More</a>
                                        <ul class="list-inline">
                                            <li>Date:Jun 17, 2019 </li>

                                        </ul>
                                        <button class="btn btn-primary" data-dismiss="modal" type="button">
                                            <i class="fas fa-times"></i>
                                            Close Project</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal 5 -->
            <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-dismiss="modal">
                            <div class="lr">
                                <div class="rl"></div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8 mx-auto">
                                    <div class="modal-body">
                                        <!-- Project Details Go Here -->
                                        <h2 class="text-uppercase">Malware and Vulnerabilities</h2>
                                        <p class="item-intro text-muted">Researchers unleash free decryption tool for all version of GandCrab ransomware.</p>
                                        <img class="img-fluid d-block mx-auto" src="../img/portfolio/news5_full.jpg" alt="" />
                                        <p>
                                            It is estimated that over 1.5 million Windows users have been infected by the ransomware since it first emerged in January 2018.
The key works for all the versions of ransomware - from 5.0 through 5.2.
Good news for the victims of GandCrab ransomware. A decryption tool that allows victims to unlock files encrypted by the ransomware has been released recently. The key works for all the versions of ransomware - from 5.0 through 5.2.
                                        </p>
                                        <a href="https://cyware.com/news/researchers-unleash-free-decryption-tool-for-all-version-of-gandcrab-ransomware-0273a19f" class="btn btn-info" target="_blank">Read More</a>
                                        <ul class="list-inline">
                                            <li>Date:Jun 17, 2019 </li>
                                        </ul>
                                        <button class="btn btn-primary" data-dismiss="modal" type="button">
                                            <i class="fas fa-times"></i>
                                            Close Project</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal 6 -->
            <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="close-modal" data-dismiss="modal">
                            <div class="lr">
                                <div class="rl"></div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8 mx-auto">
                                    <div class="modal-body">
                                        <!-- Project Details Go Here -->
                                        <h2 class="text-uppercase">Fraud Scams</h2>
                                        <p class="item-intro text-muted">New phishing campaign urges users to login to fake site to read an encrypted message.</p>
                                        <img class="img-fluid d-block mx-auto" src="../img/portfolio/news6_full.jpg" alt="" />
                                        <p>
                                            The phishing emails have subject lines similar to ‘Encrypted Message Received’ and includes a link stating ‘View Encrypted Email’.
Once users log in with their email credentials, the entered login credentials are saved, which will later be retrieved by the attackers.
A new phishing campaign that asks users to log in to a fake OneDrive site in order to read an encrypted message is making rounds.
                                        </p>
                                        <a href="https://cyware.com/news/new-phishing-campaign-urges-users-to-login-to-fake-site-to-read-an-encrypted-message-c3e3fdb6" class="btn btn-info" target="_blank">Read More</a>
                                        <ul class="list-inline">
                                            <li>Date:Jun 17, 2019 </li>
                                        </ul>
                                        <button class="btn btn-primary" data-dismiss="modal" type="button">
                                            <i class="fas fa-times"></i>
                                            Close Project</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript -->
            <script src="../vendor/jquery/jquery.min.js"></script>
            <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Plugin JavaScript -->
            <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Contact form JavaScript -->
            <script src="../js/jqBootstrapValidation.js"></script>
            <script src="../js/contact_me.js"></script>

            <!-- Custom scripts for this template -->
            <script src="../js/agency.min.js"></script>



        </div>
    </form>
        
    <script src="//code.tidio.co/n40ivuryngk8ixe6kgbdhkwhw8yjdjw3.js" async></script>
    
</body>
</html>
