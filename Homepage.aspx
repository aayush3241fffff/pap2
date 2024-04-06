<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Pap.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/gym gorilla logo.png">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>GYM GORRILA </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/gaia.css" rel="stylesheet"/>

    <!--     Fonts and icons     -->
    <link href='https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600' rel='stylesheet' type='text/css'>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/fonts/pe-icon-7-stroke.css" rel="stylesheet">
    <!--   core js files    -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.js" type="text/javascript"></script>

<!--  js library for devices recognition -->
<script type="text/javascript" src="assets/js/modernizr.js"></script>

<!--  script for google maps   -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!--   file where we handle all the script from the Gaia - Bootstrap Template   -->
<script type="text/javascript" src="assets/js/gaia.js"></script>



</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-default navbar-transparent navbar-fixed-top" color-on-scroll="200">
        <!-- if you want to keep the navbar hidden you can add this class to the navbar "navbar-burger"-->
        <div class="container">
            <div class="navbar-header">
                <button id="menu-toggle" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar bar1"></span>
                    <span class="icon-bar bar2"></span>
                    <span class="icon-bar bar3"></span>
                </button>
                <a class="navbar-brand" href="#" style="margin-left: 100px;">
                    <img src="assets/img/gym gorilla logo.png" alt="Your Logo">
                </a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right navbar-uppercase">
                    
                    <li>
                        <a href="user_profile.html" target="_blank">Profile</a><!--edit this later -->
                    </li>
                    <ul class="dropdown-menu dropdown-danger" id="languageDropdown">
                        <li>
                            <a href="#" id="enLanguage"><i class="#"></i> En</a>
                        </li>
                        <li>
                            <a href="#" id="ptLanguage"><i class="#"></i> Pt</a>
                        </li>
                    </ul>
                    <li>
                        <a href="login.aspx" class="btn btn-danger btn-fill">Login</a>
                    
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>


    <div class="section section-header">
        <div class="parallax filter filter-color-red">
            <div class="image"
                style="background-image: url('assets/img/back\ pose.jpg')">
            </div>
            <div class="container">
                <div class="content">
                    <div class="title-area">
                        
                        <h1 class="title-modern">GYM GORILLA</h1>
                        <h3>Every day is a choice</h3>
                        <div class="separator line-separator">♦</div>
                    </div>

                    <div class="button-get-started">
                        <a href = "registration.aspx" target="_blank" class="btn btn-white btn-fill btn-lg ">
                            Get Started
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="section">
        <div class="container">
            <div class="row">
                <div class="title-area">
                    <h2>What we do </h2>
                    <div class="separator separator-danger">✻</div>
                    <p class="description">We are pleased to present a series of exercises designed to enhance your overall health. These exercises have been carefully selected to contribute to your well-being.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="info-icon">
                        <div class="icon text-danger">
                            <img src="/assets/img/routine logo.jfif">
                        </div>
                        <h3>Routine</h3>
                        <p class="description">We provide schedule designed to help you achieve your desired physic. These routines will differ according to your body.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="info-icon">
                        <div class="icon-text-danger-2">
                            <img src="/assets/img/meal logo.jfif">
                        </div>
                        <h3>Diet</h3>
                        <p class="description">We provide customized meal proportions to help you achieve your desired physic. These meals will be different according to what your body needs.</p>
                    </div>
                </div>
                
            </div>
        </div>
    </div>


    <div class="section section-our-team-freebie">
        <div class="parallax filter filter-color-black">
            <div class="image" style="background-image:url('assets/img/asthetic\ gym\ pic\ 1.jpg')">
            </div>
            <div class="container">
                <div class="content">
                    <div class="row">
                        <div class="title-area">
                            <h2>ROUTINES</h2>
                            <div class="separator separator-danger">✻</div>
                            <p class="description">These routines are designed for the specific type of body that you want to achieve. Choose your goal carefully.</p>
                        </div>
                    </div>

                    <div class="team">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="">
                                                    <img alt="..." class="img-circle" src="/assets/img/Gorilla Gym Logo.jfif">
                                                </div>
                                                <div class="description">
                                                        <div class="row">
                                                            <a class="btn" href="Bulking_Excercise.html"><b>BULKING</b></a> 
                                                        </div>
                                                    
                                                    <p class="small-text"></p>
                                                    <p class="description">These exercises are designed to help you gain weight and become more muscular. But remember Patience is important.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="">
                                                    <img alt="..." class="img-circle" src="/assets/img/opopo.jfif">
                                                </div>
                                                <div class="description">
                                                    <div class="row">
                                                        <a class="btn" href="cutting.html"><b>CUTTING</b></a> 
                                                    </div>
                                                    <p class="small-text"></p>
                                                    <p class="description">These exercises are designed to help you maintain calorie deficit as a means to lose body fat while maintaining as much muscle mass as possible.</p>
                                                </div>
                                            </div>
                                        </div>
                                     </div>
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="">
                                                    <img alt="..." class="img-circle" src="/assets/img/popopo.jfif">
                                                </div>
                                                <div class="description">
                                                    <div class="row">
                                                        <a class="btn" href="maintain.html"><b>MAINTAIN</b></a> 
                                                    </div>
                                                    <p class="small-text"></p>
                                                    <p class="description">These exercises are disigned to help you maintain your current body physic without losing much or gaining more calories. </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section section-our-clients-freebie">
        <div class="container">
            <div class="title-area">
                <h5 class="subtitle text-gray">Here are some</h5>
                <h2>Our Insipiration</h2>
                <div class="separator separator-danger">∎</div>
            </div>

            <ul class="nav nav-text" role="tablist">
                <li class="active">
                    <a href="#testimonial1" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="assets/img/faces/chris bumstead.jpg"/>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#testimonial2" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="assets/img/arnlod.jpg"/>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#testimonial3" role="tab" data-toggle="tab">
                        <div class="image-clients">
                            <img alt="..." class="img-circle" src="assets/img/faces/zyzz.jpg"/>
                        </div>
                    </a>
                </li>
            </ul>


            <div class="tab-content">
                <div class="tab-pane active" id="testimonial1">
                    <p class="description">
                        “Having a champion mentality isn't about the trophies, medals, or success. It's about having no quit. It's not letting anyone hear you complain, standing up for all you believe in, living your truth, and setting the standard at which you operate at for everything in your life." - <b>Chris Bumstead</b>
                    </p>
                </div>
                <div class="tab-pane" id="testimonial2">
                    <p class="description">“The last three or four reps is what makes the muscle grow. This area of pain divides the champion from someone else who is not a champion.” That’s what most people lack, having the guts to go on and just say they’ll go through the pain no matter what happens.” - <b>Arnold schwarzenegger</b>
                    </p>
                </div>
                <div class="tab-pane" id="testimonial3">
                    <p class="description"> "Everybody, one day will die, and be forgotten. Act and behave in a way that will make life interesting and fun, fuck a mundane predictable life working monday to friday with something you derive no pleasure from; just living life out till you grow old and wither away." - <b>Zyzz</b>
                        
                    </p>
                </div>

            </div>

        </div>
    </div>


    <div class="section section-small section-get-started">
        <div class="parallax filter">
            <div class="image"
                style="background-image: url('/assets/img/black.jpg')">
            </div>
            <div class="container">
                <div class="title-area">
                    <h2 class="text-white"></h2>
                    <div class="separator line-separator">♦</div>
                    <p class="description">We will be happy to help you in anyway we possibly can. If you want to know more about us click on the button below.</p>
                </div>

                <div class="button-get-started">
                    <a href="About_us.html" class="btn btn-danger btn-fill btn-lg">About us</a>
                </div>
            </div>
        </div>
    </div>


    <footer class="footer footer-big footer-color-black" data-color="black">
        <div class="container">
            <div class="row">
                
            </div>
            <hr>
            
        </div>
    </footer>
    </form>
</body>
</html>
