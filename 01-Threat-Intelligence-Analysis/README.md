# ❄️ Challenge 1: Threat Intelligence Analysis ❄️

## 🎄 The Gnome Phishing Scheme 🎄

Those sneaky gnomes at "Icicle Innovations" are up to no good! They've launched a phishing campaign targeting the Dosis Neighborhood, disguised as a holiday kitchen renovation offer. Our mission: extract and defang all the malicious indicators before residents click on dangerous links!

---

## ❄️ Step 1: Extract IOCs (Indicators of Compromise) ❄️

### 🚨 Objective

Extract all suspicious domains, IPs, URLs, and email addresses from the phishing email. But watch out - don't include legitimate Dosis Neighborhood assets, or the security systems will get confused!

### Regex Patterns

**Domains:**
```regex
[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}
```

**IP Addresses:**
```regex
\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b
```

**URLs:**
```regex
https?://[^\s]+
```

**Email Addresses:**
```regex
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}
```

---

## ❄️ Step 2: Defang & Report ❄️

### SED Commands for Defanging

```sed
s/\./[.]/g; s/@/[@]/g; s/http/hxxp/g; s/:\/\//[://]/g
```

### Defanging Rules:
| Original | Defanged | SED Command |
|----------|----------|-------------|
| `.` | `[.]` | `s/\./[.]/g` |
| `@` | `[@]` | `s/@/[@]/g` |
| `http` | `hxxp` | `s/http/hxxp/g` |
| `://` | `[://]` | `s/:\/\//[://]/g` |

---

## 🎅 Extracted Malicious IOCs (Defanged) 🎅

### ⚠️ Malicious Domains
- `icicleinnovations[.]mail`
- `mail[.]icicleinnovations[.]mail`
- `core[.]icicleinnovations[.]mail`

### ⚠️ Malicious IP Addresses
- `172[.]16[.]254[.]1`
- `192[.]168[.]1[.]1`

### ⚠️ Malicious URLs
- `hxxps[://]icicleinnovations[.]mail/renovation-planner[.]exe`
- `hxxps[://]icicleinnovations[.]mail/upload_photos`

### ⚠️ Malicious Email Addresses
- `sales[@]icicleinnovations[.]mail`
- `info[@]icicleinnovations[.]mail`

---

## ✅ Excluded Legitimate Assets ✅

These belong to Dosis Neighborhood - NOT threats!
- `dosisneighborhood.corp` (legitimate domain)
- `10.0.0.5` (trusted network)
- `residents@dosisneighborhood.corp` (internal email)

---

## 📁 Solution Files

- `phishing_email.txt` - The original phishing email
- `regex_patterns.md` - All regex patterns with explanations
- `defang_commands.sed` - SED commands for defanging
- `defang_guide.md` - Complete defanging guide
- `extracted_iocs.md` - Final extracted and defanged IOCs

---

## ❄️ Lessons Learned ❄️

1. **Always filter legitimate assets** - Don't report your own infrastructure!
2. **Regex is your friend** - Master those patterns!
3. **Defang everything** - Safety first when sharing IOCs!

---

*The gnomes thought they could trick us with kitchen renovations... nice try!* 🎅❄️🎄
