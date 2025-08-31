<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="Sindbad_Cars.Auth" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • Welcome</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap 5 + Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />

    <style>
        :root{
            --brand:#0d6efd; --brand-2:#6610f2; --ink:#1f2937; --muted:#6b7280; --bg:#f7f8fb;
            --card-r:18px; --shadow:0 10px 30px rgba(16,24,40,.08); --shadow-lg:0 24px 60px rgba(16,24,40,.14);
        }
        body{font-family:ui-sans-serif,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial;background:var(--bg);color:var(--ink)}

        /* HERO */
        .hero{
            background: radial-gradient(1000px 420px at 10% -20%, rgba(13,110,253,.18), transparent 60%),
                        radial-gradient(800px 420px at 110% 0%, rgba(102,16,242,.15), transparent 60%),
                        #0b1220;
            color:#fff;
            padding: 46px 0 28px;
            text-align:center;
        }
        .hero h1{font-weight:800; letter-spacing:-.02em}
        .hero p{color:#cbd5e1}

        .cardx{background:#fff; border:0; border-radius:var(--card-r); box-shadow:var(--shadow)}
        .list-check li{margin:.4rem 0}
        .list-check i{width:1.3rem}
        .pill-btn .nav-link{font-weight:700}
        .pill-btn .nav-link.active{background:var(--brand); color:#fff}
        .feature-ic{width:38px; height:38px; display:inline-grid; place-items:center; border-radius:12px; background:#eef2ff; color:#3b82f6}

        /* ====== HEIGHT MATCH (only layout change requested) ====== */
        @media (min-width: 992px){
          .equalize{ align-items: stretch; }
          .equalize > [class*="col-"]{ display:flex; }
          .equalize > [class*="col-"] > .cardx{ flex:1; }

          .equalize > [class*="col-"] > .stack{
              display:flex;
              flex-direction:column;
              flex:1;
              min-height:100%;
          }
          .equalize .stack .cardx{ margin-bottom:1rem; }
          .equalize .stack .cardx:last-child{
              margin-bottom:0;
              flex:1; /* makes "How it works" end with the right card */
          }
        }
    </style>
</head>
<body>
<form id="form1" runat="server">

    <!-- HERO (no navbar on auth) -->
    <header class="hero">
        <div class="container">
            <div class="d-inline-flex align-items-center gap-3">
                <img src="logo2/logo1.png" alt="Sindbad" style="height:48px" />
                <h1 class="mb-0">Welcome</h1>
            </div>
            <p class="mt-2 mb-0">Sign up or log in to explore MPV &amp; Compact cars with verified history and fair pricing.</p>
        </div>
    </header>

    <!-- CONTENT -->
    <section class="container my-4">
        <div class="row g-4 equalize">
            <!-- LEFT: Why choose us + How it works (stack) -->
            <div class="col-lg-6">
                <div class="stack w-100">
                    <div class="cardx p-4">
                        <h3 class="h4 fw-bold mb-3">Why choose us</h3>
                        <ul class="list-unstyled list-check mb-4">
                            <li><i class="fa-solid fa-check text-success me-2"></i>Verified specs &amp; clear vehicle history</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>Upfront pricing—no surprises</li>
                            <li><i class="fa-solid fa-check text-success me-2"></i>6-month warranty on eligible cars</li>
                            <li class="mb-0"><i class="fa-solid fa-check text-success me-2"></i>Detailed model pages with quality images</li>
                        </ul>
                        <hr class="my-3" />
                        <h4 class="h5 mb-3"><i class="fa-solid fa-user-plus text-primary me-2"></i>About your account</h4>
                        <p class="mb-0 text-muted">Use your account to save favorites, track purchases, and receive alerts on new arrivals.</p>
                    </div>

                    <div class="cardx p-4">
                        <h4 class="h5 fw-bold mb-3"><i class="fa-solid fa-shuffle text-primary me-2"></i>How it works</h4>
                        <ol class="ps-3 mb-0">
                            <li class="mb-2"><span class="fw-semibold">Create your account</span> — just name, email, and password.</li>
                            <li class="mb-2"><span class="fw-semibold">Explore models</span> — view specs, history, and features.</li>
                            <li class="mb-2"><span class="fw-semibold">Choose your car</span> — use “View details” to compare quickly.</li>
                            <li class="mb-0"><span class="fw-semibold">Checkout</span> — confirm via Payment page (demo flow).</li>
                        </ol>
                    </div>
                </div>
            </div>

            <!-- RIGHT: Auth card (tabs) -->
            <div class="col-lg-6">
                <div class="cardx p-4">
                    <ul class="nav nav-pills pill-btn mb-4" id="authTabs" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="tab-signup" data-bs-toggle="pill" data-bs-target="#pane-signup" type="button" role="tab" aria-controls="pane-signup" aria-selected="true">Create account</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="tab-login" data-bs-toggle="pill" data-bs-target="#pane-login" type="button" role="tab" aria-controls="pane-login" aria-selected="false">Log in</button>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <!-- Sign up (DIV, not nested form) -->
                        <div class="tab-pane fade show active" id="pane-signup" role="tabpanel" aria-labelledby="tab-signup">
                            <div id="formSignUp">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label">Full name</label>
                                        <input type="text" class="form-control" id="suName" placeholder="Your name" />
                                        <div class="invalid-feedback">Please enter your name.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Email</label>
                                        <input type="email" class="form-control" id="suEmail" placeholder="name@email.com" />
                                        <div class="invalid-feedback">Please enter a valid email.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Password</label>
                                        <input type="password" class="form-control" id="suPass" placeholder="••••••••" />
                                        <div class="invalid-feedback">Please enter a password (min 6 chars).</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Confirm password</label>
                                        <input type="password" class="form-control" id="suPass2" placeholder="••••••••" />
                                        <div class="invalid-feedback">Passwords do not match.</div>
                                    </div>
                                    <div class="col-md-12">
                                        <label class="form-label">Phone (optional)</label>
                                        <input type="tel" class="form-control" id="suPhone" placeholder="e.g. 94793188" />
                                    </div>
                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="suTerms" />
                                            <label class="form-check-label" for="suTerms">
                                                I agree to the <a href="#">terms</a> and <a href="#">privacy policy</a>.
                                            </label>
                                            <div class="invalid-feedback d-block" id="suTermsError" style="display:none;">You must agree before continuing.</div>
                                        </div>
                                    </div>
                                    <div class="col-12 mt-1">
                                        <button id="btnSignUp" type="button" class="btn btn-primary btn-lg">Create account</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Login (DIV, not nested form) -->
                        <div class="tab-pane fade" id="pane-login" role="tabpanel" aria-labelledby="tab-login">
                            <div id="formLogin" class="pt-1">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label">Email</label>
                                        <input type="email" class="form-control" id="liEmail" placeholder="name@email.com" />
                                        <div class="invalid-feedback">Please enter a valid email.</div>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label">Password</label>
                                        <input type="password" class="form-control" id="liPass" placeholder="••••••••" />
                                        <div class="invalid-feedback">Please enter your password.</div>
                                    </div>
                                    <div class="col-12 mt-1">
                                        <button id="btnLogin" type="button" class="btn btn-primary btn-lg">Log in</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr class="mt-4" />
                    <p class="small text-muted mb-0">By continuing, you agree to our terms and acknowledge our privacy policy.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- CENTER INFO CARD -->
    <section class="container my-4">
        <div class="cardx p-4 mx-auto" style="max-width:980px">
            <div class="row text-center g-4">
                <div class="col-6 col-md-3">
                    <div class="feature-ic mx-auto mb-2"><i class="fa-solid fa-location-dot"></i></div>
                    <div class="fw-semibold">Location</div>
                    <div class="text-muted">Muscat, Oman</div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="feature-ic mx-auto mb-2"><i class="fa-solid fa-layer-group"></i></div>
                    <div class="fw-semibold">Categories</div>
                    <div class="text-muted">MPV / Compact</div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="feature-ic mx-auto mb-2"><i class="fa-solid fa-headset"></i></div>
                    <div class="fw-semibold">Support</div>
                    <div class="text-muted">Phone &amp; Email</div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="feature-ic mx-auto mb-2"><i class="fa-solid fa-shield-halved"></i></div>
                    <div class="fw-semibold">Warranty</div>
                    <div class="text-muted">Up to 6 months</div>
                </div>
            </div>
        </div>
    </section>

</form>

<!-- Bootstrap bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    (function () {
        // Helper to toggle invalid state + message
        function setInvalid(input, show) {
            if (!input) return;
            if (show) { input.classList.add('is-invalid'); }
            else { input.classList.remove('is-invalid'); }
        }

        // ===== Sign Up (no nested form; click handler) =====
        const suName = document.getElementById('suName');
        const suEmail = document.getElementById('suEmail');
        const suPass = document.getElementById('suPass');
        const suPass2 = document.getElementById('suPass2');
        const suTerms = document.getElementById('suTerms');
        const suTermsError = document.getElementById('suTermsError');
        const btnSignUp = document.getElementById('btnSignUp');

        btnSignUp.addEventListener('click', function () {
            let ok = true;

            if (!suName.value.trim()) { setInvalid(suName, true); ok = false; } else setInvalid(suName, false);

            const mailok = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(suEmail.value.trim());
            if (!mailok) { setInvalid(suEmail, true); ok = false; } else setInvalid(suEmail, false);

            if (suPass.value.length < 6) { setInvalid(suPass, true); ok = false; } else setInvalid(suPass, false);

            if (suPass2.value !== suPass.value || !suPass2.value) { setInvalid(suPass2, true); ok = false; } else setInvalid(suPass2, false);

            if (!suTerms.checked) { suTermsError.style.display = ''; ok = false; } else suTermsError.style.display = 'none';

            if (!ok) return;

            // SAVE + REDIRECT  ⬇⬇⬇ (add this block here)
            const user = {
                name: suName.value.trim(),
                email: suEmail.value.trim(),
                phone: (suPhone?.value || '').trim()
            };
            try {
                localStorage.setItem('sc_user', JSON.stringify(user));
            } catch (e) { /* ignore quota/unsupported */ }

            alert('Registered successfully! Redirecting to home…');
            window.location.href = 'index.aspx';
            // SAVE + REDIRECT  ⬆⬆⬆
       
        });

        // ===== Login (no nested form; click handler) =====
        const liEmail = document.getElementById('liEmail');
        const liPass = document.getElementById('liPass');
        const btnLogin = document.getElementById('btnLogin');

        btnLogin.addEventListener('click', function () {
            let ok = true;

            const mailok = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(liEmail.value.trim());
            if (!mailok) { setInvalid(liEmail, true); ok = false; } else setInvalid(liEmail, false);

            if (!liPass.value) { setInvalid(liPass, true); ok = false; } else setInvalid(liPass, false);

            if (!ok) return;

            alert('No account found. Please register first.');
        });

    })();
</script>
</body>
</html>
