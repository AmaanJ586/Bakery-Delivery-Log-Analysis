# Incident Response Triage Checklist

## 1. Incident Overview

**Client:** Golden Crust Bakery  
**Incident Type:** Suspected SSH Brute-Force Attack  
**Primary Suspicious IP:** 192.0.2.45  
**Failed Login Attempts:** 24  
**Detection Date:** November 17, 2026

## 2. Incident Response Checklist

- [ ] Review authentication logs for repeated failed login attempts.
- [ ] Identify suspicious source IP addresses.
- [ ] Verify the number of failed login attempts.
- [ ] Check whether any suspicious login attempts were successful.
- [ ] Investigate targeted accounts, especially admin and root.
- [ ] Preserve authentication logs for further investigation.
- [ ] Block confirmed malicious IP addresses after verification.
- [ ] Reset potentially compromised account passwords.
- [ ] Enable multi-factor authentication where supported.
- [ ] Monitor authentication logs for further suspicious activity.

## 3. Mitigation Summary

The analysis identified repeated failed login attempts from 192.0.2.45, suggesting possible brute-force activity.

Recommended defensive measures:

1. Block confirmed malicious IP addresses using the server firewall.
2. Enforce strong and unique passwords.
3. Enable multi-factor authentication.
4. Disable direct root login over SSH.
5. Use SSH key-based authentication where possible.
6. Configure Fail2ban or an equivalent intrusion-prevention tool.
7. Regularly monitor authentication logs.
8. Keep the server and security software updated.


## 5. Immediate Containment and UFW Firewall Rules

The suspicious IP addresses identified during Task 2 should be investigated before blocking. The analysis identified:

| IP Address | Failed Attempts | Assessment |
|---|---:|---|
| `192.0.2.45` | 24 | Highly suspicious |
| `203.0.113.77` | 7 | Suspicious |
| `203.0.113.88` | 4 | Below the defined threshold |

For a real production server, the administrator can block a confirmed malicious IP using UFW:

```bash
sudo ufw deny from 192.0.2.45 to any port 22 proto tcp
```

The same rule can be applied to other confirmed malicious IP addresses after investigation.

To check firewall status:

```bash
sudo ufw status
```

**Important:** The IP addresses in this project belong to documentation/test address ranges and are simulated. These commands are examples for the report and should not be treated as evidence of real malicious sources or executed as actual incident containment.

## 6. Account Lockout Policy

To reduce repeated password-guessing attempts, the bakery should implement an account lockout policy.

Recommended settings:

- Maximum failed attempts: 5.
- Failure monitoring period: 10 minutes.
- Account lockout duration: 15 minutes.
- Review repeated lockouts for possible brute-force activity.
- Apply the policy to important accounts, especially administrator accounts.

On supported Linux systems, these settings can be configured using PAM's `faillock` mechanism. The exact configuration depends on the Linux distribution.

## 7. SSH Security and Rate Limiting

The following preventive measures are recommended:

1. Use SSH key-based authentication instead of password-based authentication.
2. Disable direct root login over SSH.
3. Disable password authentication after SSH keys have been tested and access is verified.
4. Use UFW SSH rate limiting to restrict repeated connection attempts:

```bash
sudo ufw limit 22/tcp
```

5. Keep SSH and server software updated.
6. Restrict SSH access to trusted users and networks wherever possible.

## 8. Log Monitoring and Retention

The bakery should maintain proper authentication log monitoring to detect suspicious activity.

Recommended practices:

- Regularly review `/var/log/auth.log` on systems that use this log file.
- Monitor repeated failed logins and unusual successful logins.
- Preserve authentication logs for at least 90 days as a recommended retention policy.
- Use log rotation to manage log file size and retention.
- Keep backup copies of important security logs.
- Review logs after repeated account lockouts or suspicious login activity.

## 9. Final Recommendations

The Golden Crust Bakery administrator should prioritize blocking verified malicious sources, implementing account lockout policies, strengthening SSH authentication, and regularly monitoring authentication logs.

These measures will help protect the bakery's customer ordering portal and reduce the risk of unauthorized access.

## 9. Conclusion

The simulated log analysis revealed suspicious authentication activity targeting the Golden Crust Bakery server. The primary suspicious IP generated 24 failed login attempts within approximately 46 minutes.

The investigation highlighted the importance of monitoring authentication logs, blocking verified malicious IP addresses, implementing account lockout policies, and strengthening SSH security.

The recommended containment and preventive measures will help reduce unauthorized access attempts, improve server security, and protect the bakery's customer ordering portal.

**Note:** This investigation used simulated log data. No real attack or compromised system was confirmed.
