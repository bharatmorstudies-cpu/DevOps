# DevOps Environment Setup & Management Report

## Task 1: System Monitoring Setup
- **Implementation:** Configured `htop` for real-time tracking and created `monitor.sh` to log system health.
- **Verification:** System metrics are consistently tracked in `/var/log/system_report.log`.
- **Key Tools:** `htop`, `df`, `ps`.

## Task 2: User Management & Access Control
- **Implementation:** Created accounts for **Sarah** and **Mike** with isolated workspaces (`/home/sarah/workspace`, `/home/mike/workspace`).
- **Security:** Enforced a **30-day password expiration** policy and restricted directory access to owners only (`chmod 700`).
- **Verification:** Confirmed using `sudo chage -l` and `ls -ld`.

## Task 3: Backup Configuration
- **Implementation:** Automated compressed backups (`.tar.gz`) for Sarah’s Apache and Mike’s Nginx configurations.
- **Automation:** Scheduled a **cron job** to run every Tuesday at 12:00 AM (`0 0 * * 2`).
- **Integrity:** Created a verification log at `/var/log/backup_verify.log` to list internal contents of backup files.

## Challenges Encountered
- **Port Conflict:** Resolved the `Address already in use` error by managing service status between Apache and Nginx on Port 80.
- **Permissions:** Ensured all monitoring and backup scripts have `sudo` privileges to write to protected system directories like `/var/log/`.

---
*Prepared by Bharat-Mor - Junior DevOps Engineer*
