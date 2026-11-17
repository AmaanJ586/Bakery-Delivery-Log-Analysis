# Bakery Delivery Log Analysis Report

## 1. Project Overview

**Client:** Golden Crust Bakery  
**Task:** Authentication Log Analysis and Brute-Force Detection  
**Date of Analysis:** November 17, 2026

The purpose of this task was to analyze authentication logs and identify suspicious login attempts using Linux command-line tools.

## 2. Log File Information

- File name: `auth.log`
- Total log entries: 50
- Log type: Simulated SSH authentication events
- Tools used: grep, awk, sort, uniq, wc

## 3. Analysis Findings

A total of 35 failed password attempts were identified.

| IP Address | Failed Attempts |
|---|---:|
| 192.0.2.45 | 24 |
| 203.0.113.77 | 7 |
| 203.0.113.88 | 4 |

## 4. Primary Suspicious IP

**IP Address:** 192.0.2.45

- First failed attempt: 08:04:02
- Last failed attempt: 08:50:16
- Total failed attempts: 24
- Duration: 46 minutes and 14 seconds

This IP repeatedly attempted to access the admin and root accounts, indicating suspicious brute-force activity.

## 5. Detection Threshold

For this simulated investigation, 5 or more failed login attempts from the same IP address are classified as suspicious and require further investigation.

The IP addresses 192.0.2.45 and 203.0.113.77 exceeded this threshold.

## 6. Commands Used

```bash
Amaan@Amaan UCRT64 /c/BCS/internship/Ezitech/Bakery-delivery-log-analysis
$ wc -l auth.log
50 auth.log

Amaan@Amaan UCRT64 /c/BCS/internship/Ezitech/Bakery-delivery-log-analysis
$ grep "Failed" auth.log
Nov 17 08:03:45 bakery-server sshd[2102]: Failed passwordfor invalid user test from 203.0.113.77 port 52110 ssh2
Nov 17 08:04:02 bakery-server sshd[2103]: Failed passwordfor admin from 192.0.2.45 port 53001 ssh2
Nov 17 08:04:18 bakery-server sshd[2104]: Failed passwordfor admin from 192.0.2.45 port 53002 ssh2
Nov 17 08:06:03 bakery-server sshd[2106]: Failed passwordfor root from 192.0.2.45 port 53003 ssh2
Nov 17 08:06:29 bakery-server sshd[2107]: Failed passwordfor admin from 192.0.2.45 port 53004 ssh2
Nov 17 08:08:02 bakery-server sshd[2109]: Failed passwordfor admin from 192.0.2.45 port 53005 ssh2
Nov 17 08:10:05 bakery-server sshd[2111]: Failed passwordfor invalid user oracle from 203.0.113.77 port 52111 ssh2
Nov 17 08:11:16 bakery-server sshd[2112]: Failed passwordfor admin from 192.0.2.45 port 53006 ssh2
Nov 17 08:12:40 bakery-server sshd[2113]: Failed passwordfor admin from 192.0.2.45 port 53007 ssh2
Nov 17 08:14:09 bakery-server sshd[2115]: Failed passwordfor root from 203.0.113.88 port 54012 ssh2
Nov 17 08:15:31 bakery-server sshd[2116]: Failed passwordfor admin from 192.0.2.45 port 53008 ssh2
Nov 17 08:17:18 bakery-server sshd[2118]: Failed passwordfor invalid user postgres from 203.0.113.77 port 52112 ssh2
Nov 17 08:19:07 bakery-server sshd[2120]: Failed passwordfor admin from 192.0.2.45 port 53010 ssh2
Nov 17 08:20:13 bakery-server sshd[2121]: Failed passwordfor admin from 192.0.2.45 port 53011 ssh2
Nov 17 08:21:55 bakery-server sshd[2122]: Failed passwordfor root from 203.0.113.88 port 54013 ssh2
Nov 17 08:23:06 bakery-server sshd[2124]: Failed passwordfor admin from 192.0.2.45 port 53012 ssh2
Nov 17 08:24:41 bakery-server sshd[2125]: Failed passwordfor invalid user test from 203.0.113.77 port 52113 ssh2
Nov 17 08:25:17 bakery-server sshd[2126]: Failed passwordfor admin from 192.0.2.45 port 53013 ssh2
Nov 17 08:27:29 bakery-server sshd[2128]: Failed passwordfor admin from 192.0.2.45 port 53014 ssh2
Nov 17 08:28:10 bakery-server sshd[2129]: Failed passwordfor root from 192.0.2.45 port 53015 ssh2
Nov 17 08:30:21 bakery-server sshd[2131]: Failed passwordfor admin from 192.0.2.45 port 53016 ssh2
Nov 17 08:32:14 bakery-server sshd[2133]: Failed passwordfor invalid user backup from 203.0.113.77 port 52114 ssh2
Nov 17 08:33:38 bakery-server sshd[2134]: Failed passwordfor admin from 192.0.2.45 port 53017 ssh2
Nov 17 08:34:02 bakery-server sshd[2135]: Failed passwordfor admin from 192.0.2.45 port 53018 ssh2
Nov 17 08:36:11 bakery-server sshd[2137]: Failed passwordfor root from 203.0.113.88 port 54015 ssh2
Nov 17 08:37:49 bakery-server sshd[2138]: Failed passwordfor admin from 192.0.2.45 port 53019 ssh2
Nov 17 08:38:20 bakery-server sshd[2139]: Failed passwordfor invalid user mysql from 203.0.113.77 port 52115 ssh2
Nov 17 08:40:33 bakery-server sshd[2141]: Failed passwordfor admin from 192.0.2.45 port 53020 ssh2
Nov 17 08:41:12 bakery-server sshd[2142]: Failed passwordfor admin from 192.0.2.45 port 53021 ssh2
Nov 17 08:43:26 bakery-server sshd[2144]: Failed passwordfor root from 203.0.113.88 port 54016 ssh2
Nov 17 08:44:09 bakery-server sshd[2145]: Failed passwordfor admin from 192.0.2.45 port 53023 ssh2
Nov 17 08:46:17 bakery-server sshd[2147]: Failed passwordfor admin from 192.0.2.45 port 53024 ssh2
Nov 17 08:47:03 bakery-server sshd[2148]: Failed passwordfor invalid user guest from 203.0.113.77 port 52116 ssh2
Nov 17 08:49:52 bakery-server sshd[2150]: Failed passwordfor admin from 192.0.2.45 port 53025 ssh2
Nov 17 08:50:16 bakery-server sshd[2151]: Failed passwordfor admin from 192.0.2.45 port 53026 ssh2

Amaan@Amaan UCRT64 /c/BCS/internship/Ezitech/Bakery-delivery-log-analysis
$ grep "Failed" auth.log | awk '{print $(NF-3)}'
203.0.113.77
192.0.2.45
192.0.2.45
192.0.2.45
192.0.2.45
192.0.2.45
203.0.113.77
192.0.2.45
192.0.2.45
203.0.113.88
192.0.2.45
203.0.113.77
192.0.2.45
192.0.2.45
203.0.113.88
192.0.2.45
203.0.113.77
192.0.2.45
192.0.2.45
192.0.2.45
192.0.2.45
203.0.113.77
192.0.2.45
192.0.2.45
203.0.113.88
192.0.2.45
203.0.113.77
192.0.2.45
192.0.2.45
203.0.113.88
192.0.2.45
192.0.2.45
203.0.113.77
192.0.2.45
192.0.2.45

Amaan@Amaan UCRT64 /c/BCS/internship/Ezitech/Bakery-delivery-log-analysis
$ grep "Failed" auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr
     24 192.0.2.45
      7 203.0.113.77
      4 203.0.113.88

Amaan@Amaan UCRT64 /c/BCS/internship/Ezitech/Bakery-delivery-log-analysis
$ grep "192.0.2.45" auth.log | grep "Failed"
Nov 17 08:04:02 bakery-server sshd[2103]: Failed passwordfor admin from 192.0.2.45 port 53001 ssh2
Nov 17 08:04:18 bakery-server sshd[2104]: Failed passwordfor admin from 192.0.2.45 port 53002 ssh2
Nov 17 08:06:03 bakery-server sshd[2106]: Failed passwordfor root from 192.0.2.45 port 53003 ssh2
Nov 17 08:06:29 bakery-server sshd[2107]: Failed passwordfor admin from 192.0.2.45 port 53004 ssh2
Nov 17 08:08:02 bakery-server sshd[2109]: Failed passwordfor admin from 192.0.2.45 port 53005 ssh2
Nov 17 08:11:16 bakery-server sshd[2112]: Failed passwordfor admin from 192.0.2.45 port 53006 ssh2
Nov 17 08:12:40 bakery-server sshd[2113]: Failed passwordfor admin from 192.0.2.45 port 53007 ssh2
Nov 17 08:15:31 bakery-server sshd[2116]: Failed passwordfor admin from 192.0.2.45 port 53008 ssh2
Nov 17 08:19:07 bakery-server sshd[2120]: Failed passwordfor admin from 192.0.2.45 port 53010 ssh2
Nov 17 08:20:13 bakery-server sshd[2121]: Failed passwordfor admin from 192.0.2.45 port 53011 ssh2
Nov 17 08:23:06 bakery-server sshd[2124]: Failed passwordfor admin from 192.0.2.45 port 53012 ssh2
Nov 17 08:25:17 bakery-server sshd[2126]: Failed passwordfor admin from 192.0.2.45 port 53013 ssh2
Nov 17 08:27:29 bakery-server sshd[2128]: Failed passwordfor admin from 192.0.2.45 port 53014 ssh2
Nov 17 08:28:10 bakery-server sshd[2129]: Failed passwordfor root from 192.0.2.45 port 53015 ssh2
Nov 17 08:30:21 bakery-server sshd[2131]: Failed passwordfor admin from 192.0.2.45 port 53016 ssh2
Nov 17 08:33:38 bakery-server sshd[2134]: Failed passwordfor admin from 192.0.2.45 port 53017 ssh2
Nov 17 08:34:02 bakery-server sshd[2135]: Failed passwordfor admin from 192.0.2.45 port 53018 ssh2
Nov 17 08:37:49 bakery-server sshd[2138]: Failed passwordfor admin from 192.0.2.45 port 53019 ssh2
Nov 17 08:40:33 bakery-server sshd[2141]: Failed passwordfor admin from 192.0.2.45 port 53020 ssh2
Nov 17 08:41:12 bakery-server sshd[2142]: Failed passwordfor admin from 192.0.2.45 port 53021 ssh2
Nov 17 08:44:09 bakery-server sshd[2145]: Failed passwordfor admin from 192.0.2.45 port 53023 ssh2
Nov 17 08:46:17 bakery-server sshd[2147]: Failed passwordfor admin from 192.0.2.45 port 53024 ssh2
Nov 17 08:49:52 bakery-server sshd[2150]: Failed passwordfor admin from 192.0.2.45 port 53025 ssh2
Nov 17 08:50:16 bakery-server sshd[2151]: Failed passwordfor admin from 192.0.2.45 port 53026 ssh2

Amaan@Amaan UCRT64 /c/BCS/internship/Ezitech/Bakery-delivery-log-analysis
$ grep "192.0.2.45" auth.log | grep "Failed" | wc -l
24

```

## 7. Conclusion

The analysis identified repeated failed login attempts from multiple IP addresses. The most suspicious IP was 192.0.2.45, with 24 failed attempts within approximately 46 minutes.

These findings indicate possible brute-force activity against the bakery's authentication system. Further investigation and appropriate security measures are recommended.
