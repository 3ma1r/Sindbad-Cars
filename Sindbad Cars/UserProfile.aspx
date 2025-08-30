<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="UserProfile.aspx.cs"
    Inherits="Sindbad_Cars.UserProfile" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sindbad Cars • Your Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap + Icons -->
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

        /* hero */
        .hero{
            background: radial-gradient(900px 400px at 10% -10%, rgba(13,110,253,.15), transparent 60%),
                        radial-gradient(700px 400px at 110% 0%, rgba(102,16,242,.12), transparent 60%),
                        #0b1220;
            color:#fff; text-align:center; padding:56px 0 40px;
        }
        .hero .container{max-width:980px}

        .cardx{background:#fff; border:0; border-radius:var(--card-r); box-shadow:var(--shadow);}
        .cardx h5{font-weight:700}
        .avatar{width:84px; height:84px; border-radius:50%; object-fit:cover; border:3px solid #fff; box-shadow:var(--shadow)}
        .list-compact li{margin-bottom:.5rem}
        .danger{border:1px dashed rgba(220,38,38,.35)}
        .invalid-feedback{display:block}
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
                    
                    <li class="nav-item"><a class="nav-link active" href="UserProfile.aspx">Profile</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO -->
    <header class="hero">
        <div class="container">
            <h1 class="fw-bold mb-1">Your profile</h1>
            <p class="mb-0 text-white-50">Manage your account information, password, and preferences.</p>
        </div>
    </header>

    <asp:ScriptManager runat="server" />

    <section class="container my-5">
        <div class="row g-4">
            <!-- LEFT: summary + preferences + history -->
            <div class="col-lg-4">

                <!-- Summary -->
                <div class="cardx p-4">
                    <div class="d-flex align-items-center">
                        <asp:Image ID="imgAvatar" runat="server" CssClass="avatar me-3" ImageUrl="logo2/logo2.png" />
                        <div>
                            <h5 class="mb-0"><asp:Label ID="lblName" runat="server" Text="Your Name"></asp:Label></h5>
                            <small class="text-muted">Member since <asp:Label ID="lblMemberSince" runat="server" Text="Jan 2024"></asp:Label></small>
                        </div>
                    </div>
                    <hr />
                    <ul class="list-unstyled list-compact mb-0">
                        <li><i class="fa-regular fa-envelope me-2 text-primary"></i><asp:Label ID="lblEmail" runat="server" Text="you@example.com"></asp:Label></li>
                        <li><i class="fa-solid fa-phone me-2 text-primary"></i><asp:Label ID="lblPhone" runat="server" Text="+968 90000000"></asp:Label></li>
                    </ul>
                </div>

                <!-- Preferences -->
                <div class="cardx p-4 mt-4">
                    <h5 class="mb-3">Preferences</h5>
                    <div class="form-check mb-2">
                        <asp:CheckBox ID="chkNotifyDeals" runat="server" CssClass="form-check-input" />
                        <label class="form-check-label" for="chkNotifyDeals">Email me deals and promotions</label>
                    </div>
                    <div class="form-check mb-3">
                        <asp:CheckBox ID="chkNotifyNewModels" runat="server" CssClass="form-check-input" />
                        <label class="form-check-label" for="chkNotifyNewModels">Notify me when new models arrive</label>
                    </div>
                    <asp:Button ID="btnSavePrefs" runat="server" CssClass="btn btn-outline-primary w-100" Text="Save preferences" OnClick="btnSavePrefs_Click" />
                </div>

                <!-- History (placeholders) -->
                <div class="cardx p-4 mt-4">
                    <h5 class="mb-3">Your activity</h5>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><i class="fa-solid fa-heart me-2 text-danger"></i>Saved cars: <strong><asp:Label ID="lblSavedCount" runat="server" Text="0"></asp:Label></strong></li>
                        <li class="mb-2"><i class="fa-solid fa-receipt me-2 text-success"></i>Purchases: <strong><asp:Label ID="lblPurchaseCount" runat="server" Text="0"></asp:Label></strong></li>
                        <li><i class="fa-solid fa-calendar-check me-2 text-primary"></i>Test drives booked: <strong><asp:Label ID="lblTestDrives" runat="server" Text="0"></asp:Label></strong></li>
                    </ul>
                </div>

                <!-- Danger zone -->
                <div class="cardx p-4 mt-4 danger">
                    <h6 class="text-danger fw-bold"><i class="fa-solid fa-triangle-exclamation me-1"></i>Danger zone</h6>
                    <p class="text-muted mb-3">Deleting your account is permanent and cannot be undone.</p>
                    <asp:Button ID="btnDeleteAccount" runat="server" CssClass="btn btn-outline-danger w-100" Text="Delete account" OnClick="btnDeleteAccount_Click" />
                </div>

            </div>

            <!-- RIGHT: editable forms -->
            <div class="col-lg-8">
                <!-- Status/alerts -->
                <asp:PlaceHolder ID="phStatus" runat="server">
                    <div class="alert alert-success d-none" id="alertStatus"></div>
                </asp:PlaceHolder>

                <!-- Edit profile -->
                <div class="cardx p-4 mb-4">
                    <h5 class="mb-3">Edit profile</h5>
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label" for="txtFullName">Full name</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFullName"
                                ErrorMessage="Name is required." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="profile" />
                        </div>
                        <div class="col-md-6">
                            <label class="form-label" for="txtPhoneEdit">Phone</label>
                            <asp:TextBox ID="txtPhoneEdit" runat="server" CssClass="form-control" />
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtPhoneEdit"
                                ValidationExpression="^\+?[0-9\s\-]{8,20}$" ErrorMessage="Enter a valid phone number."
                                CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="profile" />
                        </div>
                        <div class="col-12">
                            <label class="form-label" for="txtAddressEdit">Address</label>
                            <asp:TextBox ID="txtAddressEdit" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
                        </div>
                        <div class="col-12">
                            <asp:Button ID="btnSaveProfile" runat="server" Text="Save profile" CssClass="btn btn-primary"
                                ValidationGroup="profile" OnClick="btnSaveProfile_Click" />
                        </div>
                    </div>
                </div>

                <!-- Change password -->
                <div class="cardx p-4">
                    <h5 class="mb-3">Change password</h5>
                    <div class="row g-3">
                        <div class="col-md-4">
                            <label class="form-label" for="txtOldPassword">Current password</label>
                            <asp:TextBox ID="txtOldPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtOldPassword"
                                ErrorMessage="Current password required." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="pwd" />
                        </div>
                        <div class="col-md-4">
                            <label class="form-label" for="txtNewPassword">New password</label>
                            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtNewPassword"
                                ErrorMessage="New password required." CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="pwd" />
                        </div>
                        <div class="col-md-4">
                            <label class="form-label" for="txtConfirmNewPassword">Confirm new password</label>
                            <asp:TextBox ID="txtConfirmNewPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            <asp:CompareValidator runat="server" ControlToValidate="txtConfirmNewPassword"
                                ControlToCompare="txtNewPassword" ErrorMessage="Passwords do not match."
                                CssClass="invalid-feedback" Display="Dynamic" ValidationGroup="pwd" />
                        </div>
                        <div class="col-12">
                            <asp:Button ID="btnChangePassword" runat="server" Text="Update password" CssClass="btn btn-outline-primary"
                                ValidationGroup="pwd" OnClick="btnChangePassword_Click" />
                        </div>
                    </div>
                </div>

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
