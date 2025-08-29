<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Model2.aspx.cs" Inherits="Sindbad_Cars.Model2" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • Compact Cars</title>
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
        .navbar{backdrop-filter:blur(8px); background:rgba(255,255,255,.85); border-bottom:1px solid rgba(0,0,0,.06)}
        .navbar-brand img{height:44px}

        /* Hero */
        .hero{
            background: radial-gradient(900px 400px at 10% -10%, rgba(13,110,253,.15), transparent 60%),
                        radial-gradient(700px 400px at 110% 0%, rgba(102,16,242,.12), transparent 60%),
                        #0b1220;
            color:#fff; text-align:center; padding:56px 0 40px;
        }
        .hero .container{max-width:980px}

        /* Cards */
        .car-card{background:#fff; border:0; border-radius:var(--card-r); box-shadow:var(--shadow); overflow:hidden; transition:transform .18s ease, box-shadow .18s ease}
        .car-card:hover{transform:translateY(-4px); box-shadow:var(--shadow-lg)}

        /* UNIFORM IMAGE HEIGHT, CONSISTENT CROP */
        .car-card .img-wrap{
            aspect-ratio: 16/9;       /* same visual height for all cards */
            overflow:hidden;
            background:#f4f6f9;
        }
        .car-card .img-wrap img{
            width:100%;
            height:100%;
            object-fit:cover;         /* fill the box; slight crop for identical look */
            display:block;
        }

        .price{font-weight:800; letter-spacing:-.01em}

        /* Footer */
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
                    <li class="nav-item"><a class="nav-link" href="Phurcase.aspx">Purchases</a></li>
                    <li class="nav-item"><a class="nav-link" href="Model1.aspx">MPV</a></li>
                    <li class="nav-item"><a class="nav-link active" href="Model2.aspx">Compact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <header class="hero">
        <div class="container">
            <h1 class="fw-bold mb-1">Compact Cars</h1>
            <p class="mb-0 text-white-50">Toyota Corolla Models</p>
        </div>
    </header>

    <!-- TWO CAR CARDS: XLE + XSE -->
    <section class="container my-4">
        <div class="row g-4">
            <!-- Corolla XLE -->
            <div class="col-12 col-md-6">
                <div class="car-card card h-100">
                    <div class="img-wrap">
                        <img src="Toyota corolla/XLE.jpg" alt="Toyota Corolla XLE" />
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <h5 class="card-title mb-0">Toyota Corolla XLE</h5>
                            <span class="badge bg-primary-subtle text-primary border border-primary-subtle">Comfort</span>
                        </div>
                        <p class="card-text text-muted mb-2">
                            Premium soft-touch interior • Heated front seats • Power driver seat •
                            Apple CarPlay/Android Auto • Toyota Safety Sense • Dual-zone A/C • Smart key.
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">Contact for price</span>
                            <a href="Vehicle3.aspx" class="btn btn-outline-primary btn-sm">Learn more</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Corolla XSE -->
            <div class="col-12 col-md-6">
                <div class="car-card card h-100">
                    <div class="img-wrap">
                        <img src="Toyota corolla/XSE.jpg" alt="Toyota Corolla XSE" />
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <h5 class="card-title mb-0">Toyota Corolla XSE</h5>
                            <span class="badge bg-danger-subtle text-danger border border-danger-subtle">Sport</span>
                        </div>
                        <p class="card-text text-muted mb-2">
                            Sporty exterior • SofTex/leather-trimmed seats • Larger touchscreen •
                            Toyota Safety Sense • Dual-zone A/C • Smart key • Optional moonroof & premium audio.
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">Contact for price</span>
                            <a href="Vehicle4.aspx" class="btn btn-outline-primary btn-sm">Learn more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Back to ranges -->
        <div class="text-center mt-4">
            <a href="index.aspx#popular-section" class="btn btn-outline-secondary">
                <i class="fa-solid fa-arrow-left-long me-1"></i> Back to ranges
            </a>
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
