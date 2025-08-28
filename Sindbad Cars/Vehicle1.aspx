<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicle1.aspx.cs" Inherits="Sindbad_Cars.Vehicle1" %>

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

        
        .slider {
            width: 80%;
            margin: 0 auto;
        }

        .slider img {
            width: 100%;
            height: auto;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            border: 2px solid #ccc;
            border-radius: 8px;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        td {
            background-color: #808080;
        }

        .auto-style2 {
            font-weight: bold;
        }
        .auto-style3 {
            text-align: center;
            font-family: Arial;
            font-size: medium;
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

    
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>    
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>   
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

    <script>
        $(document).ready(function () {
            $('.slider').slick({
                autoplay: true,
                autoplaySpeed: 4000, 
                dots: false, 
                infinite: true,
                speed: 700, 
                slidesToShow: 1,
                slidesToScroll: 1
            });
        });
    </script>
</head>
<body>
   
    <header>
        <h1>Toyota Innova Hycross</h1>
        
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

    
    <div class="slider">
        <div><img src="innova hycross/inovva hycoss.jpg" alt="Image 1"></div>
        <div><img src="innova hycross/toyota-innova-hycross.jpg" alt="Image 2"></div>
        
        <br />
    </div>

   
    <table>
        <tr class="auto-style1">
            <th class="auto-style3">Feautures</th>
        </tr>
        <tr>
            <td class="pros">
                <ul>
                    <li>Hybrid powertrain for fuel efficiency</li>
                    <li>Regenerative braking technology</li>
                    <li>Advanced infotainment system</li>
                    <li>Comprehensive safety features</li>
                    <li>Comfort and convenience amenities</li>
                </ul>
            </td>
        </tr>
    </table>

    <h2 class="text-center">Basic Information</h2>
    <table class="nav-justified">
        <tr>
            <td class="auto-style2">Vehicle ID</td>
            <td>D4116087</td>
        </tr>
        <tr>
            <td class="auto-style2">Exterior color</td>
            <td>White</td>
        </tr>
        <tr>
            <td class="auto-style2">Interior color</td>
            <td>Beige</td>
        </tr>
        <tr>
            <td class="auto-style2">Kilometers</td>
            <td>60,000 - 69,000</td>
        </tr>
        <tr>
            <td class="auto-style2">ARAI Mileage</td>
            <td>23.24 kmpl</td>
        </tr>
        <tr>
            <td class="auto-style2">Engine type</td>
            <td>2.0 TNGA 5th Generation in-line VVTi</td>
        </tr>
        <tr>
            <td class="auto-style2">Number of cylinders</td>
            <td>4</td>
        </tr>
        <tr>
            <td class="auto-style2">Battery type</td>
            <td>168 cell Ni-MH</td>
        </tr>
        <tr>
            <td class="auto-style2">Transmission type</td>
            <td>Automatic</td>
        </tr>
        <tr>
            <td class="auto-style2">Body type</td>
            <td>MUV</td>
        </tr>
        <tr>
            <td class="auto-style2">Secondary fuel type</td>
            <td>Electric</td>
        </tr>
        <tr>
            <td class="auto-style2">Engine displacement</td>
            <td>1987 cc</td>
        </tr>
        <tr>
            <td class="auto-style2">Seating capacity</td>
            <td>7,8</td>
        </tr>
        <tr>
            <td class="auto-style2">Fuel tank capacity</td>
            <td>52 litres</td>
        </tr>
        </table>
         

        <h2 class="text-center">Vehicle History</h2>
    <table class="nav-justified">
        <tr>
            <td class="auto-style2">Accidents or damage</td>
            <td>Non reported</td>
        </tr>
        <tr>
            <td class="auto-style2"><span style="color: rgb(33, 33, 33); font-family: &quot;Apercu Pro&quot;, Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 700; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">1-owner vehicle</span></td>
            <td>No</td>
        </tr>
       
        <tr>
            <td class="auto-style2">Personal use only</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td class="auto-style2">Manufacture Warranty</td>
            <td>Valid till 25-11-2026</td>
        </tr>
        </table>
    <div class="text-center">
        <h2>Price: 8,500</h2>
  <a href="Userregister.aspx" class="btn btn-primary btn-lg">Buy</a>

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

</body>
</html>
