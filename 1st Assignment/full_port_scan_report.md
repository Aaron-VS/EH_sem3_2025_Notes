# Assignment 2: Full Port Scan Report

**Student:** Aaron-VS  
**Target:** `testphp.vulnweb.com`  
**Scan Date:** July 30, 2025  
**Scan Command:**
```bash
nmap -p- testphp.vulnweb.com -oN full_port_scan.txt
```
##  Methodology

To identify all potentially open ports on the target system, a comprehensive full port scan was conducted using the `nmap` tool. The process followed these steps:

### 1. Target Selection  
The website `testphp.vulnweb.com`, a known intentionally vulnerable site used for security testing and training, was selected as the target for this assessment.

### 2. Tool Used  
The open-source network scanner `nmap` (Network Mapper) was used due to its versatility and reliability for port scanning tasks.

### 3. Full TCP Port Scan  
A TCP SYN scan (`-sS`) was performed on all 65,535 TCP ports using the `-p-` flag:

```bash
nmap -p- testphp.vulnweb.com -oN full_port_scan.txt

```

##  Findings 
<br>
<img width="783" height="569" alt="image" src="https://github.com/user-attachments/assets/c6897a25-38c1-4f16-ab3b-5367c615c097" /><br>
##

| Port    | State | Service |
|---------|-------|---------|
| 80/tcp  | open  | http    |

- **Total ports scanned:** 65,535
- **Other ports:** All remaining ports were filtered (did not respond)

---

##  Analysis

- Only **port 80** was open — used for the website’s HTTP service.
- No unexpected or hidden services were found.
- A large number of filtered ports suggests a firewall is actively blocking access to unnecessary services.

---

##  Importance of Full Port Scans

While basic scans often check only the top 1000 common ports, **full port scans** are vital in penetration testing and security audits because:
- Some services might be intentionally or accidentally running on uncommon ports
- Attackers often scan **all ports**, so defenders must too
- Full scans reveal misconfigurations or forgotten open ports that can be exploited

---

##  Shell Script

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

##  Submission Checklist

-  `full_port_scan.sh` — shell script to automate the scan
-  `full_port_scan.txt` — saved Nmap output
-  `full_port_scan_report.md` — this report
