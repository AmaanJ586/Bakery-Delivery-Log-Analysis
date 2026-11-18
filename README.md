# Bakery Delivery Log Analysis and Intrusion Triage

**Intern:** Amaan Jahangir  
**Technology:** Cyber Security  
**Client:** Golden Crust Bakery  
**Level:** Beginner  
**Platform:** Ezitech Internship

## Project Overview

Golden Crust Bakery operates a home delivery web service that needs protection against unauthorized access and brute-force login attempts.

The purpose of this project is to understand how authentication and access logs can be analyzed to identify suspicious login activities and potential security threats.

This project covers Linux command-line fundamentals, authentication log analysis, and basic incident response procedures.

## Project Objectives

- Understand Linux command-line operations.
- Learn to connect to remote systems using SSH.
- Navigate directories and files using Linux commands.
- Identify hidden files and access file contents.
- Understand how command-line tools can help in security log analysis.
- Identify suspicious login patterns and brute-force attempts.
- Prepare an incident triage and mitigation report.

## Tasks

| Task | Description | Status |
|---|---|---|
| Task 1 | Linux Command Line Foundations via OverTheWire Bandit | Completed |
| Task 2 | Parse Bakery Authentication Logs for Brute-Force Activity | Pending |
| Task 3 | Incident Triage Summary and Defensive Remediation Plan | Pending |

## Task 1: Linux Command Line Foundations via OverTheWire Bandit

**Platform:** [OverTheWire Bandit](https://overthewire.org/wargames/bandit/)

**Tools Used:**
- OpenSSH Client
- Windows PowerShell
- Linux command-line utilities
- Visual Studio Code

### Work Completed

Completed the first five Bandit levels (Level 0 to Level 4), progressing through the challenges using SSH and standard Linux commands.

The following commands were practiced:

| Command | Purpose |
|---|---|
| `ssh` | Connect to the remote Bandit server |
| `ls` | List files and directories |
| `cat` | Display file contents |
| `cd` | Change directories |
| `ls -la` | Display all files, including hidden files |
| `file` | Identify file types |

Each level was completed by locating the required password and using it to access the next level.

### Detailed Documentation

All commands, terminal outputs, and retrieved level passwords are documented separately in:

**[Task-1-Bandit-Progress.md](Task-1-Bandit-Progress.md)**

Screenshots of the practical work are available in the `screenshots` folder.

## Learning Outcomes

Through Task 1, I gained practical experience with:

- Connecting to remote Linux systems through SSH.
- Navigating Linux directories and files.
- Reading files and identifying hidden files.
- Working with filenames containing spaces or special characters.
- Identifying file types using Linux utilities.
- Understanding basic Linux command-line operations.

## Application in Cyber Security

The Linux commands practiced in this task are useful in real-world security investigations.

For example, security analysts can use commands such as `cat`, `grep`, `find`, and `ls` to inspect authentication logs, search for suspicious login attempts, locate relevant files, and investigate unusual system activity.

These skills provide a foundation for analyzing the bakery's authentication logs and identifying possible brute-force attacks in the upcoming tasks.


## Task 2: Bakery Authentication Log Analysis and Intrusion Triage

### Project Description

In this task, a simulated authentication log containing 50 entries was created for Golden Crust Bakery. The log was analyzed using Bash commands and Linux utilities to identify repeated failed SSH login attempts and suspicious source IP addresses.

The objective was to understand basic log analysis, recognize possible brute-force activity, and prepare an incident response and mitigation plan.

### Tools and Commands Used

- Git Bash
- Visual Studio Code
- `grep` – Search for failed login attempts.
- `awk` – Extract IP addresses from log entries.
- `sort` – Sort extracted data.
- `uniq -c` – Count repeated IP addresses.
- `wc -l` – Count total log entries.
- Bash scripting – Automate the analysis process.

### Work Completed

1. Created a simulated `auth.log` file containing 50 authentication log entries.
2. Used `grep` to identify failed SSH login attempts.
3. Used `awk` to extract source IP addresses.
4. Used `sort` and `uniq -c` to count failed attempts from each IP.
5. Identified suspicious IP addresses based on repeated login failures.
6. Created a Bash script (`analyze.sh`) to automate the log analysis.
7. Documented findings and command outputs in `report.md`.
8. Prepared an incident response checklist and mitigation recommendations in `incident-response.md`.

### Analysis Summary

The analysis identified repeated failed login attempts from multiple source IP addresses. The primary suspicious IP was identified based on the highest number of failed attempts.

A threshold of five or more failed login attempts from the same IP was used to classify activity as suspicious.

The detailed findings, IP addresses, timestamps, and command outputs are documented in `report.md`.

### Incident Response and Mitigation

An incident response checklist was prepared for the Golden Crust Bakery system administrator.

Recommended security measures include:

- Review authentication logs regularly.
- Investigate repeated failed login attempts.
- Block confirmed malicious IP addresses using the server firewall.
- Enforce strong and unique passwords.
- Enable multi-factor authentication where supported.
- Disable direct root login over SSH.
- Use SSH key-based authentication where possible.
- Configure Fail2ban or an equivalent intrusion-prevention tool.
- Keep the server and security software updated.

### Project Files

All Task 2 files are available in the `bakery-log-analysis` folder:

| File | Description |
|---|---|
| `auth.log` | Simulated authentication log containing 50 entries |
| `analyze.sh` | Bash script for automated log analysis |
| `report.md` | Detailed analysis findings and command outputs |
| `incident-response.md` | Incident response checklist and mitigation summary |

### Learning Outcomes

Through this task, I gained practical experience with:

- Analyzing authentication logs using Linux commands.
- Extracting and counting IP addresses.
- Identifying repeated failed login attempts.
- Recognizing possible brute-force attack patterns.
- Automating log analysis using Bash scripting.
- Preparing incident response and defensive security recommendations.

**Note:** This project uses simulated log data. No real attack or compromised system was confirmed.

---

---

## Task 3: Incident Triage Summary and Defensive Remediation Plan

### Project Description

In this task, an incident response and defensive remediation plan was prepared for Golden Crust Bakery based on the authentication log findings from Task 2.

The objective was to outline immediate containment actions, improve server security, and recommend preventive measures against unauthorized access and SSH brute-force attempts.

### Tools Used

- Visual Studio Code
- Markdown
- Git and GitHub
- UFW Firewall commands
- Linux security utilities

### Work Completed

1. Reviewed suspicious IP addresses and failed login counts identified in Task 2.
2. Prepared an incident response checklist for the bakery's system administrator.
3. Documented UFW firewall commands for blocking confirmed malicious IP addresses.
4. Recommended account lockout thresholds to reduce repeated login attempts.
5. Suggested SSH key-only authentication and disabling direct root login.
6. Included SSH rate limiting recommendations.
7. Documented log monitoring, backup, and retention practices.
8. Prepared final security recommendations for the bakery's server.

### Security Recommendations

The incident response plan includes:

- Blocking verified malicious IP addresses using UFW.
- Implementing account lockout policies.
- Using SSH key-based authentication.
- Disabling direct root login over SSH.
- Applying SSH connection rate limiting.
- Monitoring and preserving authentication logs.
- Enforcing strong passwords and regular security updates.

### Project Documentation

The complete incident response and remediation plan is available in:

**[incident-response.md](bakery-log-analysis/incident-response.md)**

The document includes the incident overview, response checklist, containment procedures, firewall rules, account lockout policy, SSH security recommendations, log retention practices, and conclusion.

### Learning Outcomes

Through this task, I gained practical knowledge of:

- Basic incident response planning.
- Firewall-based IP blocking.
- Account lockout policies.
- SSH security configuration.
- Rate limiting and intrusion prevention.
- Security log monitoring and retention.
- Preparing professional cybersecurity handover documentation.

---


## Overall Learning Outcomes

By completing these tasks, I gained practical knowledge of Linux command-line operations, SSH connections, log analysis, Bash scripting, basic intrusion detection, and incident response procedures.

These skills provide a foundation for understanding and performing basic cybersecurity investigations.

## Project Status

**Task 1: Completed**

**Task 2: Completed**

**Task 3: Completed**

---

**Project:** Bakery Delivery Log Analysis and Intrusion Triage  
**Organization:** Ezitech Software House
