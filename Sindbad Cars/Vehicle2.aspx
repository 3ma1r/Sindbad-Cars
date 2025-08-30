<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicle2.aspx.cs" Inherits="Sindbad_Cars.Vehicle2" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • Toyota Innova Crysta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap 5 + Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />

    <style>
        :root{
            --brand:#0d6efd; --ink:#1f2937; --muted:#6b7280; --bg:#f7f8fb;
            --card-r:18px; --shadow:0 10px 30px rgba(16,24,40,.08);
        }
        body{font-family:ui-sans-serif,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial;background:var(--bg);color:var(--ink)}

        /* NAV */
        .navbar{backdrop-filter:blur(8px); background:rgba(255,255,255,.85); border-bottom:1px solid rgba(0,0,0,.06)}
        .navbar-brand img{height:55px}

        /* HERO */
        .hero{
            background: radial-gradient(900px 400px at 10% -10%, rgba(13,110,253,.15), transparent 60%),
                        radial-gradient(700px 400px at 110% 0%, rgba(102,16,242,.12), transparent 60%),
                        #0b1220;
            color:#fff; padding:48px 0 36px; text-align:center;
        }

        /* CAROUSEL (uniform height) */
        .vehicle-hero .carousel-item,
        .vehicle-hero .carousel-inner{ aspect-ratio: 16 / 9; }
        .vehicle-hero .carousel-item img{ width:100%; height:100%; object-fit:cover; display:block; }

        /* CARDS */
        .cardx{background:#fff; border:0; border-radius:var(--card-r); box-shadow:var(--shadow)}
        .cardx h5{font-weight:700}
        .list-check li{margin-bottom:.5rem}
        .list-check i{width:1.25rem}
        .table-sm td, .table-sm th{padding:.55rem .75rem}
        .table thead th{background:#f2f4f7}

        /* Equal-height layout on desktop */
        @media (min-width: 992px){
          .row.equalize.align-items-stretch{align-items:stretch!important;}
          .equalize .col-lg-8,
          .equalize .col-lg-4{display:flex;}
          .equalize .col-lg-8 > .cardx{flex:1; margin-bottom:0;}
          .equalize .col-lg-4 > .right-stack{display:flex; flex-direction:column; flex:1; min-height:100%;}
          .right-stack .card-history{margin-bottom:1rem;}
          .right-stack .card-features{flex:1; display:flex; flex-direction:column;}
        }

        /* BUY panel (rectangular, centered) */
        .buy-panel{ max-width:760px; }
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
                <img src="logo2/logo1.png" class="me-2" alt="Sindbad" />
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

                    
                    <li class="nav-item"><a class="nav-link" href="Userregister.aspx">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <header class="hero">
        <div class="container">
            <h1 class="fw-bold mb-1">Toyota Innova Crysta</h1>
            <p class="mb-0 text-white-50">Spacious, durable, and packed with comfort & safety</p>
        </div>
    </header>

    <!-- IMAGES (CAROUSEL) -->
    <section class="container my-4 vehicle-hero">
        <div id="crystaCarousel" class="carousel slide cardx overflow-hidden">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="innova crysta/1.jpg" alt="Innova Crysta - image 1" />
                </div>
                <div class="carousel-item">
                    <img src="innova crysta/3.jpg" alt="Innova Crysta - image 2" />
                </div>
                <!-- repeat to make 4 slides without adding new files -->
                <div class="carousel-item">
                    <img src="innova crysta/1.jpg" alt="Innova Crysta - image 3" />
                </div>
                <div class="carousel-item">
                    <img src="innova crysta/3.jpg" alt="Innova Crysta - image 4" />
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#crystaCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#crystaCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <!-- CONTENT -->
    <section class="container my-4">
        <div class="row g-4 equalize align-items-stretch">
            <!-- LEFT: Basic Information -->
            <div class="col-lg-8">
                <div class="cardx p-4">
                    <h5 class="mb-3"><i class="fa-solid fa-circle-info me-2 text-primary"></i>Basic Information</h5>
                    <div class="table-responsive">
                        <table class="table table-sm align-middle mb-0">
                            <tbody>
                                <tr><th scope="row" style="width:260px">Vehicle ID</th><td>D4010561</td></tr>
                                <tr><th scope="row">Exterior color</th><td>Pearl White</td></tr>
                                <tr><th scope="row">Interior color</th><td>Black</td></tr>
                                <tr><th scope="row">Kilometers</th><td>85,000 - 90,000</td></tr>
                                <tr><th scope="row">Fuel Type</th><td>Diesel</td></tr>
                                <tr><th scope="row">Engine Displacement</th><td>2393 cc</td></tr>
                                <tr><th scope="row">Number of cylinders</th><td>4</td></tr>
                                <tr><th scope="row">Boot Space</th><td>300 Litres</td></tr>
                                <tr><th scope="row">Transmission type</th><td>Manual</td></tr>
                                <tr><th scope="row">Body type</th><td>MUV</td></tr>
                                <tr><th scope="row">Engine type</th><td>2.4 Diesel engine</td></tr>
                                <tr><th scope="row">Gear box</th><td>5-speed</td></tr>
                                <tr><th scope="row">Seating capacity</th><td>7,8</td></tr>
                                <tr><th scope="row">Fuel tank capacity</th><td>55 litres</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- RIGHT: History + Features (features grows to align bottoms) -->
            <div class="col-lg-4">
                <div class="right-stack">
                    <div class="cardx p-4 card-history">
                        <h5 class="mb-3"><i class="fa-solid fa-clipboard-check me-2 text-primary"></i>Vehicle History</h5>
                        <div class="table-responsive">
                            <table class="table table-sm align-middle mb-0">
                                <tbody>
                                    <tr><th scope="row" style="width:200px">Accidents or damage</th><td>Non reported</td></tr>
                                    <tr><th scope="row">1-owner vehicle</th><td>No</td></tr>
                                    <tr><th scope="row">Personal use only</th><td>Yes</td></tr>
                                    <tr><th scope="row">Manufacture Warranty</th><td>valid till 15-03-2025</td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="cardx p-4 card-features">
                        <h5 class="mb-3"><i class="fa-solid fa-list-check me-2 text-primary"></i>Features</h5>
                        <ul class="list-unstyled list-check mb-0">
                            <li><i class="fa-solid fa-check text-success me-2"></i>Spacious interior for family/business trips</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Advanced safety: multiple airbags, ABS with EBD, VSC</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Powerful yet efficient diesel engine options</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Luxurious comfort with premium upholstery</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Smart infotainment with navigation & smartphone integration</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- READY TO BUY (centered rectangle) -->
    <section class="container my-4">
        <div class="cardx p-4 mx-auto text-center buy-panel">
            <h5 class="mb-3">Ready to buy?</h5>
            <div class="d-inline-flex align-items-center mb-3">
                <i class="fa-solid fa-tag fa-lg me-2 text-success"></i>
                <div class="price">OMR 7,400</div>
            </div>
            <div>
                <a href="Payment.aspx?item=Toyota%20Innova%20Crysta&price=7400"
   class="btn btn-primary btn-lg">Buy</a>
            </div>
            <hr />
            <div class="small text-muted">
                <i class="fa-solid fa-shield-halved me-2 text-primary"></i>Warranty valid till 15-03-2025 &nbsp;•&nbsp;
                <i class="fa-solid fa-gas-pump me-2 text-primary"></i>Diesel &nbsp;•&nbsp;
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
                        <img src="logo2/logo1.png" alt="Sindbad" style="height:40px" class="me-2" />
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

<!-- Bootstrap bundle (no jQuery needed) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
