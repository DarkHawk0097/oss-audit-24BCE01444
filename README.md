# oss-audit-24BCE01444
open source audit capstone project for VITyarthi NGMC course

## How to Run Each Script

### Pprerequisites
- Ubuntu 20.04 or later
- LibreOffice installed: `sudo apt install libreoffice`

### script1.sh (system identity report)
```bash
chmod +x script1.sh
bash script1.sh
```
it displays system info including kernel version, uptime, logged-in user, and license details.

### script2. (foss Package Inspector)
```bash
chmod +x script2.sh
bash script2.sh
```
it checks if LibreOffice is installed, prints package metadata, and displays a philosophy note using a case statement.

### script3 (disk and permission auditor)
```bash
chmod +x script3.sh
bash script3.sh
```
Loops through system directories and reports size, permissions, owner, and group for each.

### script4 (log file checker)
```bash
chmod +x script4.sh
bash script4.sh /var/log/dpkg.log libreoffice
```
it reads the dpkg log line by line and counts how many times 'libreoffice' appears, then prints the last 5 matching lines.

### script5 (oss manifesto generator)
```bash
chmod +x script5.sh
bash script5.sh
```
this asks three interactive questions and generates a personalised open source philosophy statement saved to a .txt file.
