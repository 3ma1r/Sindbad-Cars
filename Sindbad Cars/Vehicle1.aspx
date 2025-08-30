<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicle1.aspx.cs" Inherits="Sindbad_Cars.Vehicle1" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • Toyota Innova Hycross</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap 5 + Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />

    <style>
        :root{
            --brand:#0d6efd; --ink:#1f2937; --muted:#6b7280; --bg:#f7f8fb;
            --card-r:18px; --shadow:0 10px 30px rgba(16,24,40,.08); --shadow-lg:0 24px 60px rgba(16,24,40,.14);
        }
        body{font-family:ui-sans-serif,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial;background:var(--bg);color:var(--ink)}

        /* NAV */
        .navbar{backdrop-filter:blur(8px); background:rgba(255,255,255,.85); border-bottom:1px solid rgba(0,0,0,.06)}
        .navbar-brand img{height:44px}

        /* HERO */
        .hero{
            background: radial-gradient(900px 400px at 10% -10%, rgba(13,110,253,.15), transparent 60%),
                        radial-gradient(700px 400px at 110% 0%, rgba(102,16,242,.12), transparent 60%),
                        #0b1220;
            color:#fff; padding:48px 0 36px; text-align:center;
        }

        /* CAROUSEL (uniform height) */
        .vehicle-hero .carousel-item,
        .vehicle-hero .carousel-inner{ aspect-ratio: 16/9; }
        .vehicle-hero .carousel-item img{ width:100%; height:100%; object-fit:cover; display:block; }

        /* CARDS */
        .cardx{background:#fff; border:0; border-radius:var(--card-r); box-shadow:var(--shadow)}
        .cardx h5{font-weight:700}
        .list-check li{margin-bottom:.5rem}
        .list-check i{width:1.25rem}

        /* TABLES */
        .table-sm td, .table-sm th{padding:.55rem .75rem}
        .table thead th{background:#f2f4f7}

        /* >>> Equal-height layout (desktop) <<< */
        @media (min-width: 992px){
          .row.equalize.align-items-stretch{align-items:stretch!important;}
          .equalize .col-lg-8,
          .equalize .col-lg-4{display:flex;}

          /* Left: the Basic Info card fills its column height */
          .equalize .col-lg-8 > .cardx{flex:1; margin-bottom:0;} /* no extra bottom margin */

          /* Right: stack that fills the column height */
          .equalize .col-lg-4 > .right-stack{
            display:flex; flex-direction:column; flex:1; min-height:100%;
          }
          .right-stack .card-history{margin-bottom:1rem;}
          .right-stack .card-features{
            flex:1; display:flex; flex-direction:column; /* grows to match left card bottom */
          }
        }

        /* BUY panel */
        .buy-panel{ max-width: 760px; } /* rectangular, centered */
        .price{font-weight:800; font-size:1.4rem; letter-spacing:-.01em}

        /* FOOTER */
        footer{background:#0b1220;color:#e5e7eb;margin-top:56px}
        footer .bottom{border-top:1px solid rgba(255,255,255,.08)}
    </style>
</head>
<body>
<form id="form1" runat="server">

    <!-- NAV -->
    <nav class="navbar navbar-expand-lg sticky-top">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="index.aspx">
                <img src="logo2/logo2.png" class="me-2" alt="Sindbad" />
                <span class="fw-bold">Sindbad Cars</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMain">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="navMain" class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="vehDrop" role="button" data-bs-toggle="dropdown" aria-expanded="false">Vehicles</a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="vehDrop">
                            <li><h6 class="dropdown-header">Toyota Innova</h6></li>
                            <li><a class="dropdown-item" href="Vehicle1.aspx">Innova Hycross</a></li>
                            <li><a class="dropdown-item" href="Vehicle2.aspx">Innova Crysta</a></li>
                            <li><hr class="dropdown-divider" /></li>
                            <li><h6 class="dropdown-header">Toyota Corolla</h6></li>
                            <li><a class="dropdown-item" href="Vehicle3.aspx">Corolla XLE</a></li>
                            <li><a class="dropdown-item" href="Vehicle4.aspx">Corolla XSE</a></li>
                        </ul>
                    </li>

                    <li class="nav-item"><a class="nav-link" href="Phurcase.aspx">Purchases</a></li>
                    <li class="nav-item"><a class="nav-link" href="Userregister.aspx">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <header class="hero">
        <div class="container">
            <h1 class="fw-bold mb-1">Toyota Innova Hycross</h1>
            <p class="mb-0 text-white-50">Hybrid MPV • Efficient, spacious, and feature-rich</p>
        </div>
    </header>

    <!-- IMAGES (CAROUSEL) -->
    <section class="container my-4 vehicle-hero">
        <div id="hycrossCarousel" class="carousel slide cardx overflow-hidden">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="innova hycross/8.jpg" alt="Innova Hycross - image 1" />
                </div>
                <div class="carousel-item">
                    <img src="innova hycross/toyota-innova-hycross.jpg" alt="Innova Hycross - image 2" />
                </div>
      
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#hycrossCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#hycrossCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <!-- CONTENT -->
    <section class="container my-4">
        <!-- NOTE: added align-items-stretch for exact bottom alignment -->
        <div class="row g-4 equalize align-items-stretch">
            <!-- LEFT: ONLY Basic Information -->
            <div class="col-lg-8">
                <div class="cardx p-4">
                    <h5 class="mb-3"><i class="fa-solid fa-circle-info me-2 text-primary"></i>Basic Information</h5>
                    <div class="table-responsive">
                        <table class="table table-sm align-middle mb-0">
                            <tbody>
                                <tr><th scope="row" style="width:260px">Vehicle ID</th><td>D4116087</td></tr>
                                <tr><th scope="row">Exterior color</th><td>White</td></tr>
                                <tr><th scope="row">Interior color</th><td>Beige</td></tr>
                                <tr><th scope="row">Kilometers</th><td>60,000 - 69,000</td></tr>
                                <tr><th scope="row">ARAI Mileage</th><td>23.24 kmpl</td></tr>
                                <tr><th scope="row">Engine type</th><td>2.0 TNGA 5th Generation in-line VVTi</td></tr>
                                <tr><th scope="row">Number of cylinders</th><td>4</td></tr>
                                <tr><th scope="row">Battery type</th><td>168 cell Ni-MH</td></tr>
                                <tr><th scope="row">Transmission type</th><td>Automatic</td></tr>
                                <tr><th scope="row">Body type</th><td>MUV</td></tr>
                                <tr><th scope="row">Secondary fuel type</th><td>Electric</td></tr>
                                <tr><th scope="row">Engine displacement</th><td>1987 cc</td></tr>
                                <tr><th scope="row">Seating capacity</th><td>7,8</td></tr>
                                <tr><th scope="row">Fuel tank capacity</th><td>52 litres</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- RIGHT: History (top) + Features (fills to match left) -->
            <div class="col-lg-4">
                <div class="right-stack">
                    <!-- Vehicle History -->
                    <div class="cardx p-4 card-history">
                        <h5 class="mb-3"><i class="fa-solid fa-clipboard-check me-2 text-primary"></i>Vehicle History</h5>
                        <div class="table-responsive">
                            <table class="table table-sm align-middle mb-0">
                                <tbody>
                                    <tr><th scope="row" style="width:200px">Accidents or damage</th><td>Non reported</td></tr>
                                    <tr><th scope="row">1-owner vehicle</th><td>No</td></tr>
                                    <tr><th scope="row">Personal use only</th><td>Yes</td></tr>
                                    <tr><th scope="row">Manufacture Warranty</th><td>Valid till 25-11-2026</td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Features (flex-grow to align bottom with Basic Info) -->
                    <div class="cardx p-4 card-features">
                        <h5 class="mb-3"><i class="fa-solid fa-list-check me-2 text-primary"></i>Features</h5>
                        <ul class="list-unstyled list-check mb-0">
                            <li><i class="fa-solid fa-check text-success me-2"></i>Hybrid powertrain for fuel efficiency</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Regenerative braking technology</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Advanced infotainment system</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Comprehensive safety features</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Comfort and convenience amenities</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- READY TO BUY (centered rectangular panel below both columns) -->
    <section class="container my-4">
        <div class="cardx p-4 mx-auto text-center buy-panel">
            <h5 class="mb-3">Ready to buy?</h5>
            <div class="d-inline-flex align-items-center mb-3">
                <i class="fa-solid fa-tag fa-lg me-2 text-success"></i>
                <div class="price">OMR 8,500</div>
            </div>
            <div>
                <a href="Payment.aspx?item=Toyota%20Innova%20Hycross&price=8500"
                    class="btn btn-primary btn-lg">Buy</a>
            </div>
            <hr />
            <div class="small text-muted">
                <i class="fa-solid fa-shield-halved me-2 text-primary"></i>Warranty valid till 25-11-2026 &nbsp;•&nbsp;
                <i class="fa-solid fa-gas-pump me-2 text-primary"></i>Hybrid • 23.24 kmpl (ARAI) &nbsp;•&nbsp;
                <i class="fa-solid fa-people-group me-2 text-primary"></i>7–8 seats • MUV
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer>
        <div class="container py-4">
            <div class="row g-4">
                <div class="col-lg-6">
                    <div class="d-flex align-items-center mb-2">
                        <img src="logo2/logo2.png" alt="Sindbad" style="height:40px" class="me-2" />
                        <h5 class="mb-0 fw-bold text-white">Sindbad Cars</h5>
                    </div>
                    <p class="mb-0 text-white-50">Reliable MPV and Compact vehicles with transparent history, fair pricing, and real warranty.</p>
                </div>
                <div class="col-lg-3 col-6">
                    <h6 class="text-white fw-bold">Quick Links</h6>
                    <ul class="list-unstyled mb-0">
                        <li><a class="link-light text-decoration-none" href="index.aspx">Home</a></li>
                        <li><a class="link-light text-decoration-none" href="Model1.aspx">MPV</a></li>
                        <li><a class="link-light text-decoration-none" href="Model2.aspx">Compact</a></li>
                        <li><a class="link-light text-decoration-none" href="Phurcase.aspx">Purchases</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-6">
                    <h6 class="text-white fw-bold">Contact</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-1">+968 94793188</li>
                        <li class="mb-1">Sindbad_Cars@gmail.com</li>
                        <li>Sindbad Showroom, Sultan Qaboos St, Muscat, Oman</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="bottom py-3">
            <div class="container text-center small text-white-50">
                © 2024 Sindbad Cars. All rights reserved.
            </div>
        </div>
    </footer>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
