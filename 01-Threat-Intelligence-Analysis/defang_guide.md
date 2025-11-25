# Defanging IOCs Guide

## 🚨 Step Objective: Defang IOCs 🚨

Defanging IOCs (Indicators of Compromise) is crucial to ensure that malicious content cannot be accidentally activated. This phishing campaign may be connected to the recent Gnome activities!

### Your Mission

Render malicious indicators harmless by modifying them so they cannot be accidentally clicked or executed.

---

## Defanging Rules

### 1. Replace Dots/Periods with [.]

**Rule:** `s/\./[.]/g`

**Examples:**
- `example.com` → `example[.]com`
- `192.168.1.1` → `192[.]168[.]1[.]1`
- `mail.icicleinnovations.mail` → `mail[.]icicleinnovations[.]mail`

### 2. Replace @ with [@]

**Rule:** `s/@/[@]/g`

**Examples:**
- `user@example.com` → `user[@]example[.]com`
- `info@icicleinnovations.mail` → `info[@]icicleinnovations[.]mail`
- `sales@icicleinnovations.mail` → `sales[@]icicleinnovations[.]mail`

### 3. Replace http with hxxp

**Rule:** `s/http/hxxp/g` (and `s/HTTP/HXXP/g` for uppercase)

**Examples:**
- `http://example.com` → `hxxp://example[.]com`
- `https://malicious.site` → `hxxps://malicious[.]site`

### 4. Replace :// with [://]

**Rule:** `s/:\/\/\/[:\\/]/g`

**Examples:**
- `https://example.com` → `hxxps[://]example[.]com`
- `http://malicious.site` → `hxxp[://]malicious[.]site`

---

## Combined SED Command

Execute all defanging rules in sequence:

```bash
sed 's/\./[.]/g; s/@/[@]/g; s/http/hxxp/g; s/:\/\/\/[:\\/]/g' input.txt > output.txt
```

---

## Full Defanging Examples

### Domain
- **Original:** `icicleinnovations.mail`
- **Defanged:** `icicleinnovations[.]mail`

### Email Address
- **Original:** `info@icicleinnovations.mail`
- **Defanged:** `info[@]icicleinnovations[.]mail`

### URL
- **Original:** `https://icicleinnovations.mail/renovation-planner.exe`
- **Defanged:** `hxxps[://]icicleinnovations[.]mail/renovation-planner[.]exe`

### IP Address
- **Original:** `192.168.1.1`
- **Defanged:** `192[.]168[.]1[.]1`

### Phone Number (bonus)
- **Original:** `523.555.0100`
- **Defanged:** `523[.]555[.]0100`

---

## IOCs from Phishing Email (Defanged)

### Domains
- `icicleinnovations[.]mail`
- `dosisneighborhood[.]corp`

### Email Addresses
- `sales[@]icicleinnovations[.]mail`
- `residents[@]dosisneighborhood[.]corp`
- `info[@]icicleinnovations[.]mail`

### URLs
- `hxxps[://]icicleinnovations[.]mail/renovation-planner[.]exe`
- `hxxps[://]icicleinnovations[.]mail/upload_photos`

### IP Addresses
- `172[.]16[.]254[.]1`
- `10[.]0[.]0[.]5`
- `192[.]168[.]1[.]1`

### Phone Numbers
- `523[.]555[.]0100`
- `523[.]555[.]0101`
- `523[.]555[.]RENO`

---

## Why Defanging Matters

1. **Safety** - Prevents accidental clicks on malicious links
2. **Sharing** - Safe to share in reports, emails, and documentation
3. **Analysis** - Allows detailed examination without activation risk
4. **Compliance** - Follows threat intelligence best practices
5. **Documentation** - Creates permanent records without security risk

---

## Tools for Defanging

- **Manual:** Use find-and-replace in text editors
- **Command Line:** SED, AWK, or similar tools
- **Python:** Custom scripts with regex
- **Online Tools:** Defang.io, URLhaus, etc.

---

## Testing Your Defanged IOCs

Verify that defanged indicators:
- ✅ Cannot be accidentally clicked
- ✅ Are still readable and identifiable
- ✅ Maintain all original information
- ✅ Are properly formatted for reports
