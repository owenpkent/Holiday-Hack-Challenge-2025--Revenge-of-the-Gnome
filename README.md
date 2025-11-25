# ❄️🎄 Holiday Hack Challenge 2025: Revenge of the Gnome 🎄❄️

*Those mischievous gnomes are at it again!*

This repository contains solutions and code for the **SANS Holiday Hack Challenge 2025: Revenge of the Gnome** event.

---

## 🎅 About

The SANS Holiday Hack Challenge is an annual cybersecurity-themed puzzle competition featuring challenges in web security, cryptography, reverse engineering, networking, and more. This year, sneaky gnomes are causing chaos throughout the Dosis Neighborhood, and it's up to us to stop them!

---

## ❄️ Challenges Completed ❄️

### 🔍 [01 - Threat Intelligence Analysis](./01-Threat-Intelligence-Analysis/)
**The Gnome Phishing Scheme**

Those crafty gnomes at "Icicle Innovations" launched a phishing campaign disguised as a holiday kitchen renovation offer! We extracted and defanged all malicious IOCs (domains, IPs, URLs, emails) while filtering out legitimate Dosis Neighborhood assets.

**Skills:** Regex patterns, IOC extraction, defanging techniques, threat analysis

---

### 🔥 [02 - Fire Alarm Privilege Escalation](./02-Fire-Alarm-Privilege-Escalation/)
**The Locked-Out Fire System**

Gnomes revoked admin access to the neighborhood fire alarm system! We used PATH hijacking to escalate privileges from `chiuser` to root and restored fire safety controls.

**Skills:** Linux privilege escalation, PATH hijacking, sudo exploitation, bash scripting

---

### 🎅 [03 - Santa Tracker](./03-Santa-Tracker/)
**The Hidden Port Mystery**

Gnomes tampered with the Santa-tracking service and moved it to a mystery port! We used `ss -tlnp` to find where the tracker was hiding and restored neighborhood Christmas spirit.

**Skills:** Linux networking, socket statistics, process identification

---

### 🌐 [04 - Visual Networking](./04-Visual-Networking-DNS/)
**The Network Academy**

A hands-on journey through DNS lookups, TCP 3-way handshakes, TLS encryption, and HTTPS requests. Even gnomes need to understand how the internet works!

**Skills:** DNS (A records), TCP handshake (SYN/ACK), TLS handshake, HTTP/HTTPS protocols

---

### �️ [05 - Firewall Configuration](./05-Firewall-Configuration/)
**The Network Segmentation Challenge**

Those gnomes messed with the firewall rules! We configured proper network segmentation between Internet, DMZ, Internal Network, Cloud Services, and Workstations - blocking direct internet access to internal systems.

**Skills:** Firewall rules, network segmentation, DMZ architecture, port management

---

### 🔍 [06 - Nmap Scanning](./06-Nmap-Scanning/)
**The Reconnaissance Mission**

Time to find what the gnomes are hiding! We used nmap to scan for open ports, identify services, and grab banners from mysterious network hosts.

**Skills:** Port scanning, service detection, banner grabbing, nmap, ncat

---

### ☁️ [07 - Azure CLI - Storage Secrets](./07-Azure-CLI/)
**The Cloud Misconfiguration**

Someone left their Azure storage wide open! We discovered a misconfigured storage account with public blob access and found exposed admin credentials.

**Skills:** Azure CLI, cloud security, storage account enumeration, blob access, misconfiguration detection

---

## �️ Technical Skills Covered

| Category | Skills |
|----------|--------|
| **Threat Intel** | Regex, IOC extraction, defanging, phishing analysis |
| **Linux** | Privilege escalation, PATH hijacking, sudo, ss, bash |
| **Networking** | DNS, TCP, TLS, HTTP/HTTPS, ports, firewalls |
| **Scanning** | Nmap, port scanning, service detection, banner grabbing |
| **Cloud** | Azure CLI, storage accounts, blob containers, misconfigurations |
| **Security** | Threat analysis, indicator handling, network segmentation |

---

## 📁 Repository Structure

```
Holiday-Hack-Challenge-2025--Revenge-of-the-Gnome/
├── 01-Threat-Intelligence-Analysis/
│   ├── README.md
│   ├── phishing_email.txt
│   ├── regex_patterns.md
│   ├── defang_commands.sed
│   ├── defang_guide.md
│   └── extracted_iocs.md
├── 02-Fire-Alarm-Privilege-Escalation/
│   └── README.md
├── 03-Santa-Tracker/
│   └── README.md
├── 04-Visual-Networking-DNS/
│   └── README.md
├── 05-Firewall-Configuration/
│   └── README.md
├── 06-Nmap-Scanning/
│   └── README.md
├── 07-Azure-CLI/
│   └── README.md
└── README.md
```

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## ⚠️ Disclaimer

These solutions are provided for educational purposes. Participants should attempt challenges independently before reviewing solutions. Don't let the gnomes win by cheating! 🎄

---

## 🔗 Links

- **SANS Holiday Hack Challenge:** https://www.holidayhackchallenge.com/
- **SANS Institute:** https://www.sans.org/

---

*May your holidays be merry and your systems be secure!* 🎅❄️🎄⛄

**Happy Hacking & Happy Holidays!**
