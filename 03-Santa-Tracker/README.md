# ❄️ Challenge 3: Santa Tracker Port Discovery ❄️

## 🎅 The Gnome Sabotage 🎅

Oh no! Those pesky gnomes have been at it again! They tampered with the neighborhood's beloved Santa-tracking service. The tinkerer built this tracker so everyone would know when Santa arrives on Christmas Eve, but now it's running on a mystery port!

---

## ❄️ The Mission ❄️

Find which port the `santa_tracker` process is listening on and verify the service is running!

---

## 🎄 The Solution 🎄

### Step 1: Find the port using ss
```bash
ss -tlnp
```

**Flags explained:**
- `-t` = TCP connections
- `-l` = Listening sockets
- `-n` = Numeric (don't resolve names)
- `-p` = Show process using the socket

### Step 2: Connect to verify
```bash
curl http://localhost:<PORT>
```

Or with netcat:
```bash
nc localhost <PORT>
```

---

## 🎅 Victory! 🎅

The Santa tracker is found and operational! Now the whole Dosis Neighborhood will know exactly when Santa's sleigh is approaching! 🛷✨

---

## ❄️ Technical Summary ❄️

| Item | Details |
|------|---------|
| Tool Used | ss (socket statistics) |
| Command | `ss -tlnp` |
| Purpose | Identify listening TCP ports and associated processes |
| Alternative Tools | netstat, lsof |

---

*Santa's on his way, and now we'll know exactly when!* 🎅❄️🎄
