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

## 4. Conclusion

The simulated log analysis revealed suspicious authentication activity targeting the Golden Crust Bakery server.

The primary suspicious IP generated 24 failed login attempts within approximately 46 minutes.

The recommended security measures will help reduce unauthorized access attempts and improve the bakery's server security.

**Note:** This investigation used simulated log data. No real attack or compromised system was confirmed.