# APSOVA — Integrated Insurance CRM & Agency Platform

**Apsova** is an integrated Insurance CRM, Agency Management, HR/Payroll, and Dual-Ledger Commission Accounting platform tailored for Indian insurance corporate agencies, IMF (Insurance Marketing Firms), and broking businesses.

---

## 🌟 Key Functional Pillars

1. **Dual Partner Governance (Maker-Checker):**
   * Separate owner accounts for **Partner 1 (Arun)** and **Partner 2**.
   * Maker-Checker workflows for agent payouts, bulk agent reassignments, and attendance adjustments.
   * Complete business dashboard separating **Gross Premium Volume** from **Apsova Net Revenue**.

2. **5 Insurance Categories & Multi-Insurer Master:**
   * **Health Insurance:** Star Health, Care Health, Niva Bupa, HDFC ERGO (Individual & Floater).
   * **Motor Insurance:** ICICI Lombard, Tata AIG, Bajaj Allianz, Go Digit (OD, TP, IDV, NCB discounts).
   * **Life Insurance:** HDFC Life, Tata AIA, ICICI Prudential (Term & PPT).
   * **Group Insurance:** ICICI Lombard, Star Health (Employee rosters).
   * **Pet Insurance:** Future Generali, Bajaj Allianz (Microchip, breed, and age).

3. **Agency Network & Agent Registration:**
   * Permanent internal Agent IDs starting from **`APS-100 onwards`** (`APS-100`, `APS-101`, `APS-102`...).
   * Separate insurer-specific POSP codes.
   * **Bulk Agent Transfer Wizard:** Reassigns agents upon manager resignation while preserving historical attribution and settled commissions.

4. **Automated Renewal Engine (60, 30, 15, 7, 1-Day Milestones):**
   * Multi-stage renewal pipeline.
   * Automated WhatsApp, SMS & calling reminders in **Malayalam (മലയാളം)** & **English**.
   * Previous policy linking to renewed policy.

5. **Dual-Entry Commission Accounting:**
   * **Ledger A (Insurer Receivable):** Expected commissions vs. actual insurer bank receipts, tracking short-receipts and recoveries.
   * **Ledger B (Agent Payable):** Commission payable to POSP agents with TDS deduction and Partner Maker-Checker approval.
   * **Excel Statement Reconciliation Engine:** Automatically matches insurer monthly payout Excel sheets against issued policies.

6. **HR, Mobile Attendance & Payroll:**
   * Mobile-friendly check-in/out with location geofencing.
   * Configurable salary calculation (calendar-day vs. working-day, Loss of Pay, incentives).
   * Monthly payslip generation.

---

## 🚀 Running Locally (Zero Dependencies)

Apsova includes a built-in lightweight local development server:

```bash
# Start local server on port 3000
node server.js
```

Open your browser at: **`http://localhost:3000`**

---

## 🌐 Deploying to Hostinger VPS (KVM)

Apsova is optimized for **Hostinger VPS (Ubuntu 22.04 / 24.04 LTS)**:

1. **PM2 Cluster Management:** Pre-configured in `ecosystem.config.js`.
2. **Nginx Reverse Proxy & SSL:** Template in `nginx-hostinger.conf`.
3. **Database Schema:** PostgreSQL schema configured in `prisma/schema.prisma`.
4. **Automated Backups:** Daily PostgreSQL backup script in `scripts/backup-db.sh`.
5. **Full Deployment Guide:** Read [hostinger_vps_guide.md](hostinger_vps_guide.md).

---

## 🎨 Design System
* **Brand Theme:** Policybazaar Design Standards (Navy `#0B2546`, Signature Orange `#FF5C26`, Blue `#0065FF`, Verified Green `#00A859`).
* **Self-Contained:** Built-in styling with zero external CDN dependency — 100% resilient to AdBlockers and offline use.
