# Extracted IOCs - Phishing Email Analysis

## ✅ Verified Malicious IOCs Only

This document contains IOCs extracted from the phishing email, with legitimate Dosis Neighborhood assets filtered out.

---

## Malicious Domains

- `icicleinnovations[.]mail`
- `core[.]icicleinnovations[.]mail`
- `mail[.]icicleinnovations[.]mail`

**Note:** `dosisneighborhood[.]corp` is a legitimate Dosis Neighborhood asset and has been excluded.

---

## Malicious IP Addresses

- `172[.]16[.]254[.]1` (mail.icicleinnovations.mail server)
- `192[.]168[.]1[.]1` (core.icicleinnovations.mail server)

**Note:** `10[.]0[.]0[.]5` belongs to the trusted Dosis Neighborhood network and has been excluded.

---

## Malicious URLs

- `hxxps[://]icicleinnovations[.]mail/renovation-planner[.]exe`
- `hxxps[://]icicleinnovations[.]mail/upload_photos`

---

## Malicious Email Addresses

- `sales[@]icicleinnovations[.]mail`
- `info[@]icicleinnovations[.]mail`

**Note:** `residents[@]dosisneighborhood[.]corp` is an internal Dosis Neighborhood email address and has been excluded.

---

## Summary

| IOC Type | Count | Details |
|----------|-------|---------|
| Malicious Domains | 3 | icicleinnovations[.]mail, core[.]icicleinnovations[.]mail, mail[.]icicleinnovations[.]mail |
| Malicious IPs | 2 | 172[.]16[.]254[.]1, 192[.]168[.]1[.]1 |
| Malicious URLs | 2 | renovation-planner.exe download, upload_photos portal |
| Malicious Emails | 2 | sales and info addresses from icicleinnovations |

---

## Threat Assessment

**Campaign:** Icicle Innovations Kitchen Renovation Phishing

**Threat Level:** 🔴 HIGH

**Attack Vector:** Social engineering via holiday-themed phishing email

**Malicious Actions:**
1. Distribute potentially malicious executable (renovation-planner.exe)
2. Collect sensitive kitchen/home photos via upload portal
3. Establish command & control via icicleinnovations[.]mail infrastructure

**Recommended Actions:**
- Block all icicleinnovations[.]mail domains at network perimeter
- Alert residents not to download or execute renovation-planner.exe
- Monitor for any uploads to the malicious upload_photos portal
- Block communication with identified IP addresses
- Flag emails from sales@icicleinnovations[.]mail and info@icicleinnovations[.]mail
