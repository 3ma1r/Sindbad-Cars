<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Model1.aspx.cs" Inherits="Sindbad_Cars.Model1" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • MPV Cars</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap + Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />

    <style>
        :root{
            --brand:#0d6efd; --ink:#1f2937; --muted:#6b7280; --bg:#f7f8fb;
            --card-r:18px; --shadow:0 10px 30px rgba(16,24,40,.08); --shadow-lg:0 24px 60px rgba(16,24,40,.14);
        }
        body{font-family:ui-sans-serif,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial;background:var(--bg);color:var(--ink)}
        .navbar{backdrop-filter:blur(8px); background:rgba(255,255,255,.85); border-bottom:1px solid rgba(0,0,0,.06)}
        .navbar-brand img{height:55px}

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
        .car-card .img-wrap{background:#f4f6f9}
        .car-card img{display:block; width:100%; height:auto;} /* no cropping */
        .car-card .badge{font-weight:600}
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
                <img src="logo2/logo1.png" class="me-2" alt="Sindbad" />
                <span class="fw-bold">Sindbad Cars</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMain">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="navMain" class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                    
                    <li class="nav-item"><a class="nav-link active" href="Model1.aspx">MPV</a></li>
                    <li class="nav-item"><a class="nav-link" href="Model2.aspx">Compact</a></li>
                    <li class="nav-item"><a class="nav-link" href="UserProfile.aspx">Profile</a></li>
                    <li class="nav-item"><a id="navLogout" class="nav-link" href="Auth.aspx">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <header class="hero">
        <div class="container">
            <h1 class="fw-bold mb-1">MPV Cars</h1>
            <p class="mb-0 text-white-50">Spacious, comfortable, and family-friendly.</p>
        </div>
    </header>

    <!-- CAR GRID (Hycross + Crysta) -->
    <section class="container my-4">
        <div class="row g-4">
            <!-- Toyota Innova Hycross -->
            <div class="col-12 col-md-6">
                <div class="car-card card h-100">
                    <div class="img-wrap">
                        <!-- Replace with your Hycross image path if different -->
                        <img src="Toyota  innova/Hycross.jpg" alt="Toyota Innova Hycross" />
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <h5 class="card-title mb-0">Toyota Innova Hycross</h5>
                            <span class="badge bg-success-subtle text-success border border-success-subtle">7 seats</span>
                        </div>
                        <!-- More info (like Model 2) -->
                        <p class="card-text text-muted mb-2">
                            Hybrid powertrain • Automatic • Toyota Safety Sense • Spacious 3-row cabin •
                            Flexible seating • Smart key • Modern infotainment with Apple CarPlay/Android Auto.
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">Contact for price</span>
                            <a href="Vehicle1.aspx" class="btn btn-outline-primary btn-sm">View details</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Toyota Innova Crysta -->
            <div class="col-12 col-md-6">
                <div class="car-card card h-100">
                    <div class="img-wrap">
                        <!-- Replace with your Crysta image path if different -->
                        <img src="Toyota  innova/crysta.jpg" alt="Toyota Innova Crysta" />
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <h5 class="card-title mb-0">Toyota Innova Crysta</h5>
                            <span class="badge bg-success-subtle text-success border border-success-subtle">7 seats</span>
                        </div>
                        <!-- More info (like Model 2) -->
                        <p class="card-text text-muted mb-2">
                            2.4L diesel/2.7L petrol options • Automatic • Proven reliability • Comfortable ride •
                            Rear A/C vents • Generous cargo with fold-flat seats • Smart key convenience.
                        </p>
                        <div class="d-flex justify-content-between align-items-center">
                            <span class="price">Contact for price</span>
                            <a href="Vehicle2.aspx" class="btn btn-outline-primary btn-sm">View details</a>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
