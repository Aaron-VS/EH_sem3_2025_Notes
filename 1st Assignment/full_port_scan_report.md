# Assignment 2: Full Port Scan Report

**Student:** Aaron-VS  
**Target:** `testphp.vulnweb.com`  
**Scan Date:** July 30, 2025  
**Scan Command:**
```bash
nmap -p- testphp.vulnweb.com -oN full_port_scan.txt
```

---

## ✅ Findings

| Port    | State | Service |
|---------|-------|---------|
| 80/tcp  | open  | http    |

- **Total ports scanned:** 65,535
- **Other ports:** All remaining ports were filtered (did not respond)

---

## 🔍 Analysis

- Only **port 80** was open — used for the website’s HTTP service.
- No unexpected or hidden services were found.
- A large number of filtered ports suggests a firewall is actively blocking access to unnecessary services.

---

## 🔐 Importance of Full Port Scans

While basic scans often check only the top 1000 common ports, **full port scans** are vital in penetration testing and security audits because:
- Some services might be intentionally or accidentally running on uncommon ports
- Attackers often scan **all ports**, so defenders must too
- Full scans reveal misconfigurations or forgotten open ports that can be exploited

---

## 🧪 Shell Script

### `full_port_scan.sh`
```bash
#!/bin/bash

# Full TCP port scan script for testphp.vulnweb.com
TARGET="testphp.vulnweb.com"
OUTPUT_FILE="full_port_scan.txt"

echo "[*] Starting full TCP port scan on $TARGET..."
nmap -p- "$TARGET" -oN "$OUTPUT_FILE"
echo "[*] Scan complete. Results saved to $OUTPUT_FILE"
```

---

## 📁 Submission Checklist

- ✅ `full_port_scan.sh` — shell script to automate the scan
- ✅ `full_port_scan.txt` — saved Nmap output
- ✅ `full_port_scan_report.md` — this report
