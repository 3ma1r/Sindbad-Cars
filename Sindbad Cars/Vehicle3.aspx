<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicle3.aspx.cs" Inherits="Sindbad_Cars.Vehicle3" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • Toyota Corolla XLE</title>
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

        /* BUY panel (identical sizing to Vehicle1/2) */
        .buy-panel{ max-width:760px; margin-inline:auto; }
        .buy-panel h5{ font-size:1.25rem; }
        .price{font-weight:800; font-size:1.4rem; letter-spacing:-.01em}
        .buy-panel .btn{ padding:.7rem 1.25rem; font-size:1rem; }

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

                    
                     <li class="nav-item"><a class="nav-link" href="UserProfile.aspx">Profile</a></li>
                     <li class="nav-item"><a id="navLogout" class="nav-link" href="Auth.aspx">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <header class="hero">
        <div class="container">
            <h1 class="fw-bold mb-1">Toyota Corolla XLE</h1>
            <p class="mb-0 text-white-50">Comfort, safety, and technology in a compact sedan</p>
        </div>
    </header>

    <!-- IMAGES (CAROUSEL) -->
    <section class="container my-4 vehicle-hero">
        <div id="xleCarousel" class="carousel slide cardx overflow-hidden">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="corolla XLE/3.jpg" alt="Corolla XLE - image 1" />
                </div>
                <div class="carousel-item">
                    <img src="corolla XLE/2.jpg" alt="Corolla XLE - image 2" />
                </div>
                <!-- repeat to keep a smooth loop (no new files required) -->
                <div class="carousel-item">
                    <img src="corolla XLE/3.jpg" alt="Corolla XLE - image 3" />
                </div>
                <div class="carousel-item">
                    <img src="corolla XLE/2.jpg" alt="Corolla XLE - image 4" />
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#xleCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#xleCarousel" data-bs-slide="next">
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
                                <tr><th scope="row" style="width:260px">Vehicle ID</th><td>D4010442</td></tr>
                                <tr><th scope="row">Exterior color</th><td>Silver metallic</td></tr>
                                <tr><th scope="row">Interior color</th><td>Beige</td></tr>
                                <tr><th scope="row">Kilometers</th><td>40,000 - 49,000</td></tr>
                                <tr><th scope="row">Engine Type</th><td>Gas</td></tr>
                                <tr><th scope="row">Drive Type</th><td>Front wheel drive</td></tr>
                                <tr><th scope="row">Number of cylinders</th><td>4</td></tr>
                                <tr><th scope="row">Basic engine size</th><td>1.8L</td></tr>
                                <tr><th scope="row">Transmission type</th><td>Continuously variable-speed automatic</td></tr>
                                <tr><th scope="row">Torque</th><td>126 lb-ft @ 3,900 rpm</td></tr>
                                <tr><th scope="row">Valves</th><td>16</td></tr>
                                <tr><th scope="row">Fuel &amp; MPG</th><td>Regular unleaded</td></tr>
                                <tr><th scope="row">Seating capacity</th><td>5</td></tr>
                                <tr><th scope="row">Fuel tank capacity</th><td>50 litres</td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <!-- RIGHT: History + Features -->
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
                                    <tr><th scope="row">Manufacture Warranty</th><td>Valid till 11-09-2027</td></tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="cardx p-4 card-features">
                        <h5 class="mb-3"><i class="fa-solid fa-list-check me-2 text-primary"></i>Features</h5>
                        <ul class="list-unstyled list-check mb-0">
                            <li><i class="fa-solid fa-check text-success me-2"></i>Toyota Safety Sense™ 2.0</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Power-adjustable seats &amp; dual-zone climate control</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Touchscreen with Apple CarPlay® / Android Auto™</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>LED lighting &amp; alloy wheels</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Premium interior, split-folding rear seats</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>DRCC, lane features &amp; auto high beams</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Leather-trim steering &amp; heated front seats</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- READY TO BUY (centered rectangle, identical to V1/V2) -->
  <section class="container my-4">
  <div class="cardx p-4 text-center buy-panel">
    <h5 class="mb-3">Ready to buy?</h5>

    <div class="d-flex flex-column align-items-center">
  <div class="d-inline-flex align-items-center gap-2 mb-3">
    <i class="fa-solid fa-tag fa-lg text-success"></i>
    <div class="price mb-0">OMR 6,200</div>
  </div>
  <a href="Payment.aspx?item=Toyota%20Corolla%20XLE&price=6200"
     class="btn btn-primary btn-lg px-4">Buy</a>
</div>
    <hr />
    <div class="small text-muted">
      <i class="fa-solid fa-shield-halved me-2 text-primary"></i>Warranty valid till 11-09-2027 &nbsp;•&nbsp;
      <i class="fa-solid fa-gas-pump me-2 text-primary"></i>Regular unleaded &nbsp;•&nbsp;
      <i class="fa-solid fa-people-group me-2 text-primary"></i>5 seats • Sedan
    </div>
  </div>
</section>


    <!-- FOOTER (same across pages) -->
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
                        <li><a class="link-light text-decoration-none" href="UserProfile.aspx">Profile</a></li>
                        
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

<!-- Bootstrap bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
