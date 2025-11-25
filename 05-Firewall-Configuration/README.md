# ❄️ Challenge 5: Firewall Configuration ❄️

## 🔥 The Gnome Network Chaos 🔥

Those meddling gnomes have been tampering with the Dosis Neighborhood firewall rules! Time to configure proper network segmentation and keep the bad guys out while letting the good traffic flow.

---

## ❄️ The Mission ❄️

Configure firewall rules between network zones to meet security requirements while maintaining necessary connectivity.

---

## 🎄 Network Zones 🎄

| Zone | Description |
|------|-------------|
| **Internet** | External/untrusted network |
| **DMZ** | Demilitarized Zone - public-facing services |
| **Internal Network** | Protected corporate network |
| **Cloud Services** | Cloud infrastructure |
| **Workstations** | End-user devices |

---

## ❄️ Firewall Rules Configuration ❄️

### 1. Internet → DMZ
**Allow only HTTP and HTTPS traffic**
```
✓ HTTP (Port 80)
✓ HTTPS (Port 443)
✗ DNS (Port 53)
✗ SMB (Port 445)
✗ SMTP (Port 25)
✗ SSH (Port 22)
```

### 2. DMZ → Internal Network
**Allow HTTP, HTTPS, and SSH traffic**
```
✓ HTTP (Port 80)
✓ HTTPS (Port 443)
✓ SSH (Port 22)
✗ DNS (Port 53)
✗ SMB (Port 445)
✗ SMTP (Port 25)
```

### 3. Internal Network → DMZ
**Allow HTTP, HTTPS, and SSH traffic**
```
✓ HTTP (Port 80)
✓ HTTPS (Port 443)
✓ SSH (Port 22)
✗ DNS (Port 53)
✗ SMB (Port 445)
✗ SMTP (Port 25)
```

### 4. Internal Network → Cloud Services
**Allow HTTP, HTTPS, SSH, and SMTP traffic**
```
✓ HTTP (Port 80)
✓ HTTPS (Port 443)
✓ SSH (Port 22)
✓ SMTP (Port 25)
✗ DNS (Port 53)
✗ SMB (Port 445)
```

### 5. Internal Network → Workstations
**Allow all traffic types**
```
✓ HTTP (Port 80)
✓ HTTPS (Port 443)
✓ SSH (Port 22)
✓ SMB (Port 445)
✓ SMTP (Port 25)
✓ DNS (Port 53)
```

### 6. Security Best Practice
**Block direct Internet to Internal access**
```
Internet → Internal Network: ALL BLOCKED (0/6)
```

---

## 🎅 Victory! 🎅

All firewall rules configured correctly! The Dosis Neighborhood network is now properly segmented and secure from those sneaky gnomes! 🛡️

---

## ❄️ Technical Summary ❄️

| Port | Service | Description |
|------|---------|-------------|
| 22 | SSH | Secure Shell |
| 25 | SMTP | Email transfer |
| 53 | DNS | Domain name resolution |
| 80 | HTTP | Web traffic (unencrypted) |
| 443 | HTTPS | Web traffic (encrypted) |
| 445 | SMB | File sharing |

---

## ❄️ Key Concepts ❄️

- **DMZ**: Buffer zone between internet and internal network
- **Defense in Depth**: Multiple layers of security
- **Least Privilege**: Only allow necessary traffic
- **Network Segmentation**: Isolate different network zones

---

*The gnomes can't get through our firewall now!* 🎅❄️🔥🎄
