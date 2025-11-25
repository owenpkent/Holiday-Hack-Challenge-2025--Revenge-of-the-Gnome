# ❄️ Challenge 6: Nmap Scanning ❄️

## 🔍 The Gnome Reconnaissance Mission 🔍

Time to channel your inner elf and do some network reconnaissance! The gnomes have hidden services all over the network, and we need to find them using the trusty nmap tool.

---

## ❄️ The Mission ❄️

Use nmap to discover open ports, identify services, and grab banners from mysterious network hosts.

---

## 🎄 Nmap Commands Used 🎄

### Default Scan
```bash
nmap 127.0.12.25
```
Scans the top 1000 most common ports.

### Scan All TCP Ports
```bash
nmap -p- 127.0.12.25
```
Scans all 65535 TCP ports (takes longer but thorough).

### Scan IP Range
```bash
nmap 127.0.12.20-28
```
Scans multiple hosts in a range.

### Service Version Detection
```bash
nmap -sV -p 8080 127.0.12.25
```
Identifies what service is running on a specific port.

### Banner Grabbing with Ncat
```bash
ncat 127.0.12.25 24601
```
Connects to a port and displays the service banner.

---

## ❄️ Nmap Cheat Sheet ❄️

| Flag | Description |
|------|-------------|
| `-p-` | Scan all 65535 ports |
| `-p 80,443` | Scan specific ports |
| `-sV` | Service version detection |
| `-sS` | TCP SYN scan (stealth) |
| `-sT` | TCP connect scan |
| `-sU` | UDP scan |
| `-O` | OS detection |
| `-A` | Aggressive scan (OS, version, scripts, traceroute) |
| `-T4` | Faster timing |
| `-oN file` | Output to file |

---

## 🎅 Findings 🎅

| Host | Port | Service |
|------|------|---------|
| 127.0.12.25 | 8080 | HTTP (web server) |
| 127.0.12.25 | 24601 | Custom service (banner grabbed) |

---

## ❄️ Technical Summary ❄️

- **nmap**: Network exploration and security auditing tool
- **ncat**: Netcat replacement for reading/writing network data
- **Banner grabbing**: Connecting to a service to see its identification message
- **Port scanning**: Discovering which network ports are open and listening

---

*Even Santa uses nmap to check who's been naughty or nice on the network!* 🎅❄️🔍🎄
