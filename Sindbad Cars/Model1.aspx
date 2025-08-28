<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Model1.aspx.cs" Inherits="Sindbad_Cars.Model1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sindbad Cars</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
    header {
        background-color: #333;
        color: #fff;
        padding: 20px;
        text-align: center;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    header h1 {
        margin-bottom: 10px;
    }

    nav ul {
        list-style: none;
    }

    nav ul li {
        display: inline;
        margin-right: 20px;
    }

    nav ul li a {
        color: #fff;
        text-decoration: none;
    }

    main {
        padding: 20px;
    }

    .image-container {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 20px;
    }

    .image-container img {
        max-width: 45%; 
        margin: 0 5px; 
    }

    .image-description {
        text-align: center;
        margin-top: 10px;
    }
        .auto-style1 {
            font-family: Arial;
            font-size: medium;
            font-weight: bold;
        }
        
        .site-footer {
            background-color: #26272b;
            padding: 15px 0;
            font-size: 15px;
            line-height: 24px;
            color: #737373;
            box-shadow: 0 10px 20px rgba(0,0,0,0.5);
        }

        .site-footer hr {
            border-top-color: #bbb;
            opacity: 0.5;
        }

        .site-footer hr.small {
            margin: 10px 0;
        }

        .site-footer h6 {
            color: #fff;
            font-size: 16px;
            text-transform: uppercase;
            margin-top: 5px;
            letter-spacing: 2px;
        }

        .site-footer a {
            color: #737373;
        }

        .site-footer a:hover {
            color: #fff;
            text-decoration: none;
        }

        .footer-links {
            padding-left: 0;
            list-style: none;
        }

        .footer-links li {
            display: block;
        }

        .footer-links a {
            color: #737373;
        }

        .footer-links a:active,
        .footer-links a:focus,
        .footer-links a:hover {
            color: #fff;
            text-decoration: none;
        }

        .site-footer .social-icons {
            text-align: right;
        }

        .site-footer .social-icons a {
            width: 40px;
            height: 40px;
            line-height: 40px;
            margin-left: 6px;
            margin-right: 0;
            border-radius: 100%;
            background-color: #33353d;
        }

        .copyright-text {
            margin: 0;
        }

        @media (max-width: 991px) {
            .site-footer [class^="col-"] {
                margin-bottom: 30px;
            }
        }

        @media (max-width: 767px) {
            .site-footer {
                padding-bottom: 0;
            }
            .site-footer .copyright-text,
            .site-footer .social-icons {
                text-align: center;
            }
 

        </style>
</head>
<body>
    
    <header>
        <h1>MPV Cars</h1>
        <h2>Toyota Innova Models</h2>        
        <img src="logo2/logo2.png" alt="Logo" width="150" height="150">
       
        <nav>
    <ul class="auto-style5">
       <li><a href="index.aspx">Home</a></li>
 <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Vehicles</a>
            <ul class="dropdown-menu">
                <li class="dropdown-header">Toyota Innova</li>
                <li><a href="Vehicle1.aspx">Innova Hycross</a></li>
                <li><a href="Vehicle2.aspx">Innova Crysta</a></li>
                <li class="dropdown-divider"></li>
                <li class="dropdown-header">Toyota Corolla</li>
                <li><a href="Vehicle3.aspx">Corolla XLE</a></li>
                <li><a href="Vehicle4.aspx">Corolla XSE</a></li>
            </ul>
        </li>
        <li><a href="Phurcase.aspx">Purchases</a></li>
        <li><a href="Userregister.aspx">Register</a></li>
    </ul>
</nav>
    </header>

    
    <div class="image-container">
        
        <img src="Toyota  innova/Hycross.jpg" alt="First Image">
    </div>

    
    <div class="image-description">
        <p class="auto-style1">Toyota Innova Hycross</p>
        <p style="margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            <strong style="margin: 0px; padding: 0px; box-sizing: border-box; font-weight: 700;">When was the Toyota Hycross launched?</strong></p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            <span style="color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">The Toyota Hycross concept was unveiled at the 2001 Tokyo Motor Show. This concept eventually led to the development of the Toyota Highlander Hybrid, which was introduced to the market in 
            2005</span></p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            <strong style="margin: 0px; padding: 0px; box-sizing: border-box; font-weight: 700;">What features are available in the Toyota Hycross?</strong></p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            The Hycross is a new model that has a more muscular appearance than the Crysta. It sports a large trapezoidal grille at the front, flanked by slim LED headlights. The front bumper features triangular vents with thin LED daytime running lights, while the rear receives wraparound taillights connected by a chrome strip.</p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            The MPV&#39;s cabin gets a dual-tone interior with a choice of either seven or eight seats. It has a floating 10.1-inch touchscreen infotainment system, three-spoke steering wheel, semi-digital instrument cluster, gear shifter, electronic parking brake, and many other functions.</p>
       
       <button onclick="location.href='Vehicle1.aspx';" style="margin-top: 10px;">Learn more about the vehicle</button>

    </div>

    <div class="image-container">
        
        <img src="Toyota  innova/crysta.jpg" alt="Second Image">
    </div>

    
    <div class="image-description">
        <p class="auto-style1">Toyota Innova Crysta</p>
        <p style="margin: 0px; padding: 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            <strong style="margin: 0px; padding: 0px; box-sizing: border-box; font-weight: 700;">When was the Toyota Innova Crysta launched?</strong></p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            <span style="color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">The Toyota Innova Crysta was launched in India in May 2016</span></p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            <strong style="margin: 0px; padding: 0px; box-sizing: border-box; font-weight: 700;">What features are available in the Toyota Innova Crysta?</strong></p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            On the outside, the 2023 Innova Crysta gets a tweaked front face with more chrome highlights. The front grille gets a horizontal chrome stripe, while the bumper gets a chrome insert on the chin and around the fog lamp housing. Also up for offer is a black insert between the tail lights.</p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            Inside, the model comes equipped with an eight-way powered driver seat, rear AC vents with a digital display, a one-touch tumble function for second-row seats, and an eight-inch touchscreen infotainment system with Apple CarPlay and Android Auto.</p>
        <p style="margin: 0px; padding: 12px 0px 0px; box-sizing: border-box; color: rgb(111, 111, 111); font-family: LatoGoogle, Lato, LatoWeb, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(249, 249, 249); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
            The refreshed Innova Crysta, which is available in seven and eight-seat layouts, can be bought in five colours such as Super White, Attitude Black Mica, Avant-Garde Bronze Metallic, Silver Metallic, and Platinum White Pearl.&nbsp;</p>
        
        <button onclick="location.href='Vehicle2.aspx';" style="margin-top: 10px;">Learn more about the vehicle</button>
    </div>

    
   <footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h6>About Us</h6>
                <p class="text-justify">
                    <span style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: rgb(33, 33, 33); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style2">
                        Welcome to Sindbad! We're your go-to destination for quality used MPV and Compact cars. With a focus on reliability and value, we offer a curated selection of vehicles that meet our high standards. Browse our inventory with confidence and find your perfect ride today
                    </span>
                </p>
            </div>
            <div class="col-md-6">
                <h6 class="text-sm-right">Contact Information</h6>
                <ul class="showroom-info">
                    <p class="text-sm-right">Phone: +968 94793188</p>
                    <p class="text-sm-right">Fax: +968 94793188</p>
                    <p class="text-sm-right">Address: Sindbad Showroom, next to M H D, Sultan Qaboos St, Oman, Muscat </p>
                    <p class="text-sm-right">Email: Sindbad_Cars@gmail.com</p>
                </ul>
            </div>
            <div class="col-md-12 text-right">
                <p class="text-center">Copyright © 2024 All Rights Reserved by
                    <span class="auto-style14">Sindbad </span>
                </p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>



