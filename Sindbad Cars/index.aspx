<!DOCTYPE html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Sindbad_Cars.index" %>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sindbad Cars</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --brand: #0d6efd;
            --brand-2: #6610f2;
            --ink: #1f2937;
            --muted: #6b7280;
            --bg-soft: #f7f8fb;
            --card-radius: 16px;
            --shadow: 0 10px 30px rgba(16, 24, 40, 0.08);
            --shadow-lg: 0 24px 60px rgba(16, 24, 40, 0.14);
        }

        body { font-family: ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial; color: var(--ink); background: var(--bg-soft); }

        /* Navbar */
        .navbar { backdrop-filter: blur(8px); background: rgba(255,255,255,0.75); border-bottom: 1px solid rgba(0,0,0,0.05); }
        .navbar-brand img { height: 55px; }
        .nav-link { font-weight: 600; }

        /* Hero */
        .hero { position: relative; min-height: 72vh; display: grid; place-items: center; overflow: hidden;
            background: radial-gradient(1200px 600px at 10% -20%, rgba(13,110,253,.18), transparent 60%),
                        radial-gradient(900px 500px at 110% 0%, rgba(102,16,242,.15), transparent 60%),
                        #0b1220; }
        .hero::before { content: ""; position: absolute; inset: 0; background: url("Car pic 2/1 (1).png") center/cover no-repeat; opacity: .35; filter: saturate(115%) contrast(105%) brightness(90%); }
        .hero-card { position: relative; z-index: 1; background: rgba(255,255,255,0.9); border-radius: 24px; box-shadow: var(--shadow-lg);
            padding: clamp(22px, 3vw, 36px); max-width: 900px; width: min(92%, 1000px); }
        .hero h1 { font-size: clamp(28px, 3.5vw, 44px); margin-bottom: .25rem; }
        .hero p { color: var(--muted); font-size: clamp(14px, 1.3vw, 18px); }
        .hero .cta { gap: 12px; }

        /* Sections */
        .section-title { font-weight: 800; letter-spacing: -0.02em; margin-bottom: 1.25rem; }
        .section-note { color: var(--muted); margin-bottom: 2rem; }
        .py-section { padding: 64px 0; }
        @media (max-width: 575.98px) { .py-section { padding: 48px 0; } }

        /* Cards */
        .card-glow { border: 0; border-radius: var(--card-radius); background: #fff; box-shadow: var(--shadow); transition: transform .25s ease, box-shadow .25s ease; height: 100%; }
        .card-glow:hover { transform: translateY(-6px); box-shadow: var(--shadow-lg); }
        .card-glow .card-body { padding: 20px; }

        /* Popular Ranges */
        .range-card { max-width: 520px; margin-inline: auto; }
        .range-card .card-img-top { width: 100%; height: auto; border-radius: 14px; }

        /* Features icons */
        .feature-icon { width: 72px; height: 72px; object-fit: contain; filter: drop-shadow(0 6px 18px rgba(0,0,0,.12)); }

        /* Counters */
        .counters { background: linear-gradient(90deg, var(--brand), var(--brand-2)); color: #fff; border-radius: 24px; padding: 36px 18px; box-shadow: var(--shadow-lg); }
        .counter { font-size: clamp(36px, 5vw, 56px); font-weight: 800; line-height: 1; }
        .counter-label { opacity: .9; }

        /* Footer */
        footer { background: #0b1220; color: #e5e7eb; }
        .footer-top { padding: 56px 0 28px; }
        .footer-brand img { height: 42px; }
        .footer-title { color: #ffffff; font-weight: 700; margin-bottom: .75rem; }
        .footer-link { color: #a7b0c0; text-decoration: none; display: inline-block; margin: 4px 0; }
        .footer-link:hover { color: #ffffff; }
        .footer-bottom { border-top: 1px solid rgba(255,255,255,0.08); padding: 16px 0; color: #9aa4b2; }
    </style>
</head>
<body>

    <!-- Nav -->
    <nav class="navbar navbar-expand-lg sticky-top">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="index.aspx">
                <img src="logo2/logo1.png" alt="Sindbad Logo" class="me-2">
                <span class="fw-bold">Sindbad Cars</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMain" aria-controls="navMain" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div id="navMain" class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#popular-section">Ranges</a></li>

                    <!-- NEW -->
                    <li class="nav-item"><a class="nav-link" href="UserProfile.aspx">Profile</a></li>
                    <li class="nav-item"><a id="navLogout" class="nav-link" href="Auth.aspx">Logout</a></li>
                    <!-- /NEW -->
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero -->
    <section class="hero">
        <div class="hero-card text-center">
            <span class="badge bg-primary-subtle text-primary fw-semibold mb-2">Trusted Used Cars</span>
            <h1>Drive Quality. Drive Confidence.</h1>
            <p class="mb-3">Reliable MPV and Compact cars with warranty, safe purchase, and a money-back promise.</p>
            <div class="d-flex justify-content-center cta">
                <a href="#popular-section" class="btn btn-primary btn-lg">
                    Explore Ranges <i class="fa-solid fa-arrow-right ms-2"></i>
                </a>
                <!-- removed Register button intentionally -->
            </div>
        </div>
    </section>

    <!-- Features -->
    <section class="container py-section" id="features">
        <h2 class="section-title text-center">Our Features</h2>
        <p class="section-note text-center">Backed by guarantees so you shop with peace of mind.</p>

        <div class="row g-4">
            <div class="col-md-4">
                <div class="card-glow h-100">
                    <div class="card-body text-center">
                        <img src="icons 2/650917.png" class="feature-icon mb-3" alt="Money Back">
                        <h5 class="fw-bold mb-1">Money Back Guarantee</h5>
                        <p class="text-muted mb-0">If you don't fall in love with the vehicle, simply return it to us.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card-glow h-100">
                    <div class="card-body text-center">
                        <img src="icons 2/2787513.png" class="feature-icon mb-3" alt="Safe Purchase">
                        <h5 class="fw-bold mb-1">Safe Purchase</h5>
                        <p class="text-muted mb-0">We guarantee the technical condition of every vehicle sold.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card-glow h-100">
                    <div class="card-body text-center">
                        <img src="icons 2/4400863.png" class="feature-icon mb-3" alt="Warranty">
                        <h5 class="fw-bold mb-1">6-Month Warranty</h5>
                        <p class="text-muted mb-0">With every car you receive an extended warranty.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Counters -->
    <section class="container py-section">
        <div class="counters">
            <div class="row text-center g-4">
                <div class="col-md-4">
                    <div class="counter" data-count="500">0</div>
                    <div class="counter-label">Cars Sold</div>
                </div>
                <div class="col-md-4">
                    <div class="counter" data-count="300">0</div>
                    <div class="counter-label">Happy Clients</div>
                </div>
                <div class="col-md-4">
                    <div class="counter" data-count="120">0</div>
                    <div class="counter-label">Available Models</div>
                </div>
            </div>
        </div>
    </section>

    <!-- Popular Ranges -->
    <section class="container py-section" id="popular-section">
        <h2 class="section-title text-center">Popular Ranges</h2>
        <p class="section-note text-center">Choose the style that fits your life.</p>

        <div class="row g-4">
            <div class="col-md-6">
                <div class="card-glow range-card h-100">
                    <img src="MPV and Compact/MPV.jpg" class="card-img-top" alt="MPV">
                    <div class="card-body text-center">
                        <h5 class="fw-bold">MPV Cars</h5>
                        <p class="text-muted">Spacious cars perfect for families and groups.</p>
                        <a href="Model1.aspx" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card-glow range-card h-100">
                    <img src="MPV and Compact/combat3.jpg" class="card-img-top" alt="Compact">
                    <div class="card-body text-center">
                        <h5 class="fw-bold">Compact Cars</h5>
                        <p class="text-muted">Efficient and stylish, perfect for city driving.</p>
                        <a href="Model2.aspx" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container footer-top">
            <div class="row g-4">
                <div class="col-lg-6">
                    <div class="footer-brand d-flex align-items-center mb-2">
                        <img src="logo2/logo1.png" alt="Sindbad Logo" class="me-2">
                        <h5 class="mb-0 text-white fw-bold">Sindbad Cars</h5>
                    </div>
                    <p class="mb-0 text-white-50">
                        Reliable MPV and Compact vehicles with transparent history, fair pricing, and real warranty.
                    </p>
                </div>

                <div class="col-lg-3 col-6">
                    <h6 class="footer-title">Quick Links</h6>
                    <ul class="list-unstyled mb-0">
                        <li><a class="footer-link" href="index.aspx">Home</a></li>
                        <li><a class="footer-link" href="#popular-section">Ranges</a></li>
                        <li><a class="footer-link" href="UserProfile.aspx">Profile</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-6">
                    <h6 class="footer-title">Contact</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-1"><i class="fa-solid fa-phone me-2"></i>+968 94793188</li>
                        <li class="mb-1"><i class="fa-solid fa-envelope me-2"></i>Sindbad_Cars@gmail.com</li>
                        <li><i class="fa-solid fa-location-dot me-2"></i>Sindbad Showroom, Sultan Qaboos St, Muscat, Oman</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom text-center">
            <div class="container small">
                © 2024 Sindbad Cars. All rights reserved.
            </div>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // Counter Animation (unchanged)
        const counters = document.querySelectorAll('.counter');
        counters.forEach(counter => {
            const target = +counter.getAttribute('data-count');
            let current = 0;
            const step = Math.ceil(target / 40);
            const tick = () => {
                current = Math.min(current + step, target);
                counter.textContent = current.toLocaleString();
                if (current < target) requestAnimationFrame(tick);
            };
            tick();
        });

        // NEW: logout clears temporary profile and lets the browser follow the link to Auth.aspx
        const logout = document.getElementById('navLogout');
        if (logout) {
            logout.addEventListener('click', () => {
                try { localStorage.removeItem('sc_user'); } catch (e) { }
            });
        }
    </script>
</body>
</html>
