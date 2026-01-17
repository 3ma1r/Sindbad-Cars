# Sindbad Cars

A modern **ASP.NET Web Forms** web application for browsing used cars (MPV & Compact), exploring detailed vehicle pages, and placing a **demo checkout**. It also includes a **front-end authentication page (no backend yet)** where users can sign up, and their info is stored temporarily and displayed on the **Profile** page.

---

## Tech Stack (Top 5)
- **ASP.NET Web Forms** (.NET Framework 4.7.2)
- **Bootstrap 5**
- **C#**
- **JavaScript (Vanilla)**
- **SmartASP.NET Hosting**

---
## Screenshots
> Add screenshots inside a folder like `/screenshots` then update paths below.

- **Home Page**
  ![Home](screenshots/home.png)

- **Vehicle Details**
  ![Vehicle Details](screenshots/vehicle.png)

- **Auth Page**
  ![Auth](screenshots/auth.png)

- **Profile Page**
  ![Profile](screenshots/profile.png)

- **Checkout Page (Demo)**
  ![Checkout](screenshots/checkout.png)

---

## Key Features (Top 3)
- **Vehicle browsing experience** with MPV/Compact ranges and clean detail pages (specs, history, gallery).
- **Demo checkout flow** with validation and success redirect (no real payment processing).
- **Auth + Profile (no backend yet):** user signs up on `Auth.aspx`, data is saved in `localStorage`, and shown in `UserProfile.aspx`.

---

## Pages Overview
- `Auth.aspx` → First landing page (signup/login + info sections)
- `index.aspx` → Home page (features, counters, popular ranges)
- `Model1.aspx` → MPV range
- `Model2.aspx` → Compact range
- `Vehicle1.aspx` – `Vehicle4.aspx` → Vehicle details pages
- `Payment.aspx` → Demo checkout page
- `UserProfile.aspx` → Displays user data saved from Auth

---

## How the Auth Works (Temporary)
- On successful signup, the app saves:
  - name
  - email
  - phone  
  into `localStorage` under:
  - `sc_user`

- The **UserProfile** page reads `sc_user` and displays it (temporary only).

---

## Run Locally
1. Clone the repository:
   ```bash
   git clone https://github.com/<YOUR-USERNAME>/<YOUR-REPO>.git
2. Open the solution in Visual Studio.
3. Make sure you have .NET Framework 4.7.2 installed.
4. Run with IIS Express.

## Deployment Notes (SmartASP.NET)

To make Auth.aspx open first, add this into Web.config:
   ```bash
  <system.webServer>
  <defaultDocument>
    <files>
      <clear />
      <add value="Auth.aspx" />
      <add value="index.aspx" />
      <add value="Default.aspx" />
    </files>
  </defaultDocument>
</system.webServer>
 ```

## Limitations

- Authentication is front-end only (no database storage for accounts).
- Checkout is dummy/demo only (no real payment gateway).
- Profile data is temporary and can be cleared by browser storage reset/logout.

---

## Future Improvements

- Add a real database for user accounts and login.
- Save purchases to database.
- Admin dashboard for adding/editing vehicles.
- Real payment integration.

---
