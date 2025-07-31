#!/bin/bash

# Full TCP port scan script for testphp.vulnweb.com
TARGET="testphp.vulnweb.com"
OUTPUT_FILE="full_port_scan.txt"

echo "[*] Starting full TCP port scan on $TARGET..."
nmap -p- "$TARGET" -oN "$OUTPUT_FILE"
echo "[*] Scan complete. Results saved to $OUTPUT_FILE"
