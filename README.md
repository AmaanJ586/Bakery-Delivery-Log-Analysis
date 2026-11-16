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

## Project Status

**Task 1: Completed**

Tasks 2 and 3 will focus on authentication log analysis, intrusion triage, and defensive security recommendations.

---

**Project:** Bakery Delivery Log Analysis and Intrusion Triage  
**Organization:** Ezitech Software House