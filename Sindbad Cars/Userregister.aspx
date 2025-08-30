<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userregister.aspx.cs" Inherits="Sindbad_Cars.Userregister" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • Create Account</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap + Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />

    <style>
        :root{
            --brand:#0d6efd; --ink:#1f2937; --muted:#6b7280;
            --bg:#f7f8fb; --card-r:18px; --benefit-bg:#eef5ff;
        }
        body{font-family:ui-sans-serif,-apple-system,"Segoe UI",Roboto,"Helvetica Neue",Arial;background:var(--bg);color:var(--ink)}

        .navbar{backdrop-filter:blur(8px); background:rgba(255,255,255,.85); border-bottom:1px solid rgba(0,0,0,.06)}
        .navbar-brand img{height:55px}

        /* Centered hero */
        .hero-mini{
            background: radial-gradient(900px 400px at 10% -10%, rgba(13,110,253,.15), transparent 60%),
                        radial-gradient(700px 400px at 110% 0%, rgba(102,16,242,.12), transparent 60%),
                        #0b1220;
            color:#fff; padding:56px 0 40px; text-align:center;
        }
        .hero-mini .container{max-width: 980px;}

        .reg-card{background:#fff; border-radius:var(--card-r); box-shadow:0 24px 60px rgba(16,24,40,.14); overflow:hidden}
        .reg-aside{
            background: var(--benefit-bg);
            padding:28px; height:100%;
            border-right:1px solid rgba(13,110,253,.12);
        }
        .reg-aside .badge{background:#fff; color:var(--brand); border:1px solid rgba(13,110,253,.2)}
        .reg-aside li{margin-bottom:12px; color:#0b1220}

        .input-group-text{border-radius:12px 0 0 12px; width:48px; justify-content:center}
        .input-group-text i{opacity:.85}
        .form-section-title{font-weight:800; letter-spacing:-.02em}
        .help-text{color:var(--muted); font-size:.925rem}
        .invalid-feedback{display:block}

        .footer{background:#0b1220; color:#e5e7eb; margin-top:56px}
        .footer .bottom{border-top:1px solid rgba(255,255,255,.08)}
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
                    
                    <li class="nav-item"><a class="nav-link active" href="Userregister.aspx">Register</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO (centered) -->
    <header class="hero-mini">
        <div class="container">
            <h1 class="mb-1 fw-bold">Create your account</h1>
            <p class="mb-0 text-white-50">Join Sindbad Cars to save favorites, track purchases, and get offers.</p>
        </div>
    </header>

    <!-- REGISTER CARD -->
    <section class="container my-5">
        <div class="row g-0 reg-card">
            <!-- Benefits -->
            <div class="col-lg-5 reg-aside d-flex align-items-center">
                <div class="w-100">
                    <span class="badge rounded-pill mb-2">Why join?</span>
                    <h4 class="fw-bold mb-3">Benefits</h4>
                    <ul class="list-unstyled">
                        <li><i class="fa-solid fa-shield-check me-2 text-primary"></i>Secure purchases & warranty tracking</li>
                        <li><i class="fa-solid fa-bell me-2 text-primary"></i>Alerts on new models & price drops</li>
                        <li><i class="fa-solid fa-heart me-2 text-primary"></i>Save and compare favorites</li>
                        <li><i class="fa-solid fa-car-side me-2 text-primary"></i>Faster test-drive bookings</li>
                    </ul>
                    <p class="help-text mb-0">We respect your privacy. Your data stays safe and is never sold.</p>
                </div>
            </div>

            <!-- Form -->
            <div class="col-lg-7 p-4 p-md-5">
                <asp:ScriptManager runat="server" />
                <h3 class="form-section-title mb-3">Your details</h3>

                <asp:ValidationSummary ID="valSummary" runat="server"
                    HeaderText="Please fix the following:"
                    CssClass="alert alert-danger" ValidationGroup="reg" />

                <div class="row g-3">
                    <!-- Full Name -->
                    <div class="col-12">
                        <label class="form-label fw-semibold" for="txtName">Full name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa-regular fa-user"></i></span>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control form-control-lg" MaxLength="80" />
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                            ErrorMessage="Name is required." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                    </div>

                    <!-- Email -->
                    <div class="col-md-6">
                        <label class="form-label fw-semibold" for="txtEmail">Email</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa-regular fa-envelope"></i></span>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" TextMode="Email" />
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="Email is required." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtEmail"
                            ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
                            ErrorMessage="Enter a valid email address." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                    </div>

                    <!-- Phone -->
                    <div class="col-md-6">
                        <label class="form-label fw-semibold" for="txtPhone">Phone</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa-solid fa-phone"></i></span>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control form-control-lg" MaxLength="20" />
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                            ErrorMessage="Phone is required." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPhone"
                            ValidationExpression="^\+?[0-9\s\-]{8,20}$"
                            ErrorMessage="Enter a valid phone number." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                    </div>

                    <!-- Password -->
                    <div class="col-md-6">
                        <label class="form-label fw-semibold" for="txtPassword">Password</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control form-control-lg" TextMode="Password" />
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="Password is required." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                        <div class="form-text">At least 6 characters recommended.</div>
                    </div>

                    <!-- Confirm -->
                    <div class="col-md-6">
                        <label class="form-label fw-semibold" for="txtConfirm">Confirm password</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fa-solid fa-lock"></i></span>
                            <asp:TextBox ID="txtConfirm" runat="server" CssClass="form-control form-control-lg" TextMode="Password" />
                        </div>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirm"
                            ErrorMessage="Please confirm password." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                        <asp:CompareValidator runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword"
                            ErrorMessage="Passwords do not match." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                    </div>

                    <!-- Address (optional) -->
                    <div class="col-12">
                        <label class="form-label fw-semibold" for="txtAddress">Address (optional)</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control form-control-lg" TextMode="MultiLine" Rows="3" />
                    </div>

                    <!-- Terms -->
                    <div class="col-12">
                        <div class="form-check">
                            <asp:CheckBox ID="chkTerms" runat="server" CssClass="form-check-input" />
                            <label class="form-check-label" for="chkTerms">
                                I agree to the <a href="#" class="link-primary">Terms</a> and <a href="#" class="link-primary">Privacy Policy</a>.
                            </label>
                        </div>
                        <!-- RequiredFieldValidator doesn't work with CheckBox; use CustomValidator -->
                        <asp:CustomValidator ID="cvTerms" runat="server"
                            ClientValidationFunction="validateTerms"
                            ErrorMessage="You must accept the terms to continue."
                            CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="reg" />
                    </div>

                    <!-- Actions -->
                    <div class="col-md-6">
                        <asp:Button ID="btnRegister" runat="server" Text="Create account"
                            CssClass="btn btn-primary btn-lg w-100" ValidationGroup="reg"
                            OnClick="btnRegister_Click" />
                    </div>
                    <div class="col-md-6">
                        <a href="index.aspx" class="btn btn-outline-secondary btn-lg w-100">Cancel</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer">
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
                        <li><a class="link-light text-decoration-none" href="#popular-section">Ranges</a></li>
                        
                        <li><a class="link-light text-decoration-none" href="Userregister.aspx">Register</a></li>
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

<!-- Checkbox validator (no jQuery needed) -->
<script type="text/javascript">
    function validateTerms(sender, args) {
        var cb = document.getElementById('<%= chkTerms.ClientID %>');
        args.IsValid = cb && cb.checked;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
