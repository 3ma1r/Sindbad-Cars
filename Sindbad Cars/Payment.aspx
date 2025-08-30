<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Sindbad_Cars.Payment" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <meta charset="utf-8" />
  <title>Sindbad Cars • Secure Checkout</title>
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

    .navbar{backdrop-filter:blur(8px); background:rgba(255,255,255,.85); border-bottom:1px solid rgba(0,0,0,.06)}
    .navbar-brand img{height:44px}

    .hero{
      background: radial-gradient(900px 400px at 10% -10%, rgba(13,110,253,.15), transparent 60%),
                  radial-gradient(700px 400px at 110% 0%, rgba(102,16,242,.12), transparent 60%),
                  #0b1220;
      color:#fff; padding:42px 0 32px; text-align:center;
    }

    .cardx{background:#fff; border:0; border-radius:var(--card-r); box-shadow:var(--shadow)}
    .cardx h5{font-weight:700}

    .method-pill input{display:none;}
    .method-pill label{
      user-select:none; cursor:pointer; border:1px solid #e5e7eb; border-radius:14px;
      padding:10px 14px; display:flex; align-items:center; gap:.5rem;
      transition:.15s; background:#fff;
    }
    .method-pill input:checked + label{
      border-color:var(--brand); box-shadow:0 0 0 3px rgba(13,110,253,.15);
    }

    .small-muted{color:var(--muted); font-size:.9rem}

    .order-line{display:flex; justify-content:space-between;}
    .order-total{font-weight:800; font-size:1.15rem}

    @media (min-width: 992px){
      .sticky-lg{ position:sticky; top:18px; }
    }
  </style>
</head>
<body>

<!-- NOTE: we do NOT disable autocomplete, so the browser can show “Save card” -->
<form id="form1" runat="server" novalidate>

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
          <li class="nav-item"><a class="nav-link" href="Model1.aspx">MPV</a></li>
          <li class="nav-item"><a class="nav-link" href="Model2.aspx">Compact</a></li>
          
        </ul>
      </div>
    </div>
  </nav>

  <!-- HERO -->
  <header class="hero">
    <div class="container">
      <h1 class="fw-bold mb-1">Secure Checkout</h1>
      <p class="mb-0 text-white-50">Fill your payment details to confirm your purchase.</p>
    </div>
  </header>

  <!-- CONTENT -->
  <section class="container my-4">
    <div class="row g-4">
      <!-- LEFT -->
      <div class="col-lg-8">
        <div class="cardx p-4">
          <h5 class="mb-3">Payment method</h5>

          <!-- Alerts -->
          <div id="formSuccess" class="alert alert-success d-none" role="alert">
            ✅ Order placed successfully. Redirecting to Home…
          </div>
          <div id="formErrors" class="alert alert-danger d-none" role="alert">
            Please fix the errors highlighted below.
          </div>

          <div class="d-flex gap-3 mb-3">
            <div class="method-pill">
              <input type="radio" name="pm" id="pmVisa" checked />
              <label for="pmVisa"><i class="fa-brands fa-cc-visa fa-lg text-primary"></i> Visa</label>
            </div>
            <div class="method-pill">
              <input type="radio" name="pm" id="pmDebit" />
              <label for="pmDebit"><i class="fa-solid fa-credit-card fa-lg text-primary"></i> Debit card</label>
            </div>
          </div>

          <div class="row g-3">
            <div class="col-12">
              <label class="form-label" for="txtName">Cardholder Name</label>
              <input id="txtName" class="form-control" placeholder="e.g. Ahmed Al-Habsi" autocomplete="cc-name" />
              <div class="invalid-feedback">Please enter the cardholder name.</div>
            </div>

            <div class="col-12">
              <label class="form-label" for="txtCard">Card Number</label>
              <input id="txtCard" class="form-control"
                     inputmode="numeric" maxlength="19"
                     autocomplete="cc-number" name="cc-number"
                     placeholder="•••• •••• •••• ••••" />
              <div class="invalid-feedback">Enter a valid card number.</div>
            </div>

            <div class="col-6 col-md-4">
              <label class="form-label" for="txtExp">Expiry (MM/YY)</label>
              <input id="txtExp" class="form-control"
                     inputmode="numeric" maxlength="5"
                     autocomplete="cc-exp" name="cc-exp"
                     placeholder="MM/YY" />
              <div class="invalid-feedback">Enter a valid future date (MM/YY).</div>
            </div>

            <div class="col-6 col-md-4">
              <label class="form-label" for="txtCvv">CVV</label>
              <input id="txtCvv" class="form-control"
                     inputmode="numeric" maxlength="4"
                     autocomplete="cc-csc" name="cc-csc"
                     placeholder="•••" />
              <div class="invalid-feedback">CVV must be 3–4 digits.</div>
            </div>

            <div class="col-12 col-md-8">
              <label class="form-label" for="txtEmail">E-mail</label>
              <input id="txtEmail" class="form-control" type="email" placeholder="you@example.com" autocomplete="email" />
              <div class="invalid-feedback">Enter a valid email.</div>
            </div>

            <div class="col-12 col-md-6">
              <label class="form-label" for="selCountry">Country</label>
              <select id="selCountry" class="form-select">
                <option value="">Select country…</option>
                <option>Oman</option>
                <option>United Arab Emirates</option>
                <option>Saudi Arabia</option>
                <option>Qatar</option>
                <option>United Kingdom</option>
              </select>
              <div class="invalid-feedback">Please choose your country.</div>
            </div>

            <div class="col-12">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="chkTerms" />
                <label class="form-check-label" for="chkTerms">
                  I confirm the details are correct and I agree to the purchase terms.
                </label>
              </div>
              <div class="text-danger small d-none" id="termsError">Please confirm you agree to the terms.</div>
            </div>

            <div class="col-12">
              <!-- onclick fallback so it always fires -->
              <button type="button" id="btnPay" class="btn btn-primary btn-lg w-100" onclick="handlePay()">
                <i class="fa-solid fa-lock me-2"></i>Place Order
              </button>
              <p class="small-muted mt-2 mb-0">
                <i class="fa-solid fa-shield-halved me-1"></i> Demo only — no real payment is processed.
              </p>
            </div>
          </div>
        </div>
      </div>

      <!-- RIGHT: Order summary -->
      <div class="col-lg-4">
        <div class="cardx p-4 order-card sticky-lg">
          <h5 class="mb-3">Your Order</h5>
          <div class="mb-3">
            <div class="order-line"><span id="ordName">Vehicle</span><strong id="ordPrice">OMR 0</strong></div>
            <div class="small-muted">Quantity: 1</div>
          </div>
          <hr>
          <div class="order-line"><span>Subtotal</span><span id="subTot">OMR 0</span></div>
          <div class="order-line small-muted"><span>Shipping &amp; Handling</span><span>OMR 0</span></div>
          <div class="order-line small-muted"><span>Estimated Tax</span><span>OMR 0</span></div>
          <hr>
          <div class="order-line order-total"><span>Order Total</span><span id="grandTot">OMR 0</span></div>
        </div>
      </div>
    </div>
  </section>

  <section class="container">
    <p class="small-muted text-center mb-4">
      We accept Visa &amp; debit cards. By placing your order you agree to our store policies.
    </p>
  </section>

</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    (function () {
        const $ = id => document.getElementById(id);
        const fmtOMR = n => "OMR " + Number(n).toLocaleString("en-US", { maximumFractionDigits: 3 });

        // NEW: accept any 16 digits (spaces/dashes allowed)
        function cardOk(num) {
            const s = (num || "").replace(/\D/g, "");
            return /^\d{16}$/.test(s);
        }
        function expOk(mmYY) {
            const m = /^\s*(\d{2})\/(\d{2})\s*$/.exec(mmYY || "");
            if (!m) return false;
            let mm = +m[1], yy = 2000 + (+m[2]);
            if (mm < 1 || mm > 12) return false;
            const end = new Date(yy, mm, 0, 23, 59, 59);
            return end >= new Date();
        }
        const emailOk = e => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(e || "");
        function setInvalid(input, msgEl, show) {
            if (!input) return;
            if (show) { input.classList.add("is-invalid"); msgEl && msgEl.classList.remove("d-none"); }
            else { input.classList.remove("is-invalid"); msgEl && msgEl.classList.add("d-none"); }
        }

        // Fill order from query (?item=&price=)
        function initOrder() {
            const p = new URLSearchParams(location.search);
            const name = p.get("item") || "Vehicle";
            const price = parseFloat(p.get("price") || "0") || 0;
            $("ordName").textContent = name;
            $("ordPrice").textContent = fmtOMR(price);
            $("subTot").textContent = fmtOMR(price);
            $("grandTot").textContent = fmtOMR(price);
        }

        // Expose for inline onclick fallback
        window.handlePay = function () {
            const name = $("txtName"), card = $("txtCard"), exp = $("txtExp"),
                cvv = $("txtCvv"), mail = $("txtEmail"), ctry = $("selCountry"),
                terms = $("chkTerms");

            let hasErr = false;

            if (!name.value.trim()) { setInvalid(name, name.nextElementSibling, true); hasErr = true; } else setInvalid(name, name.nextElementSibling, false);
            if (!cardOk(card.value)) { setInvalid(card, card.nextElementSibling, true); hasErr = true; } else setInvalid(card, card.nextElementSibling, false);
            if (!expOk(exp.value)) { setInvalid(exp, exp.nextElementSibling, true); hasErr = true; } else setInvalid(exp, exp.nextElementSibling, false);
            if (!/^\d{3,4}$/.test((cvv.value || "").trim())) { setInvalid(cvv, cvv.nextElementSibling, true); hasErr = true; } else setInvalid(cvv, cvv.nextElementSibling, false);
            if (!emailOk(mail.value)) { setInvalid(mail, mail.nextElementSibling, true); hasErr = true; } else setInvalid(mail, mail.nextElementSibling, false);
            if (!ctry.value) { setInvalid(ctry, ctry.nextElementSibling, true); hasErr = true; } else setInvalid(ctry, ctry.nextElementSibling, false);

            if (!terms.checked) { $("termsError").classList.remove("d-none"); hasErr = true; }
            else $("termsError").classList.add("d-none");

            const errBox = $("formErrors"), okBox = $("formSuccess");
            if (hasErr) {
                okBox.classList.add("d-none");
                errBox.classList.remove("d-none");
                const firstInvalid = document.querySelector(".is-invalid") || $("termsError");
                if (firstInvalid && firstInvalid.scrollIntoView) firstInvalid.scrollIntoView({ behavior: "smooth", block: "center" });
                return;
            }

            errBox.classList.add("d-none");
            okBox.classList.remove("d-none");

            // Show a visible success message, then redirect to Home
            alert("Order placed successfully!");
            setTimeout(() => { window.location.href = "index.aspx"; }, 800);
        };

        document.addEventListener("DOMContentLoaded", function () {
            initOrder();
            ["txtName", "txtCard", "txtExp", "txtCvv", "txtEmail", "selCountry"].forEach(id => {
                const el = $(id);
                if (!el) return;
                el.addEventListener("input", () => el.classList.remove("is-invalid"));
                el.addEventListener("change", () => el.classList.remove("is-invalid"));
            });
            const chk = $("chkTerms");
            if (chk) chk.addEventListener("change", () => $("termsError").classList.add("d-none"));
        });
    })();
</script>
</body>
</html>
