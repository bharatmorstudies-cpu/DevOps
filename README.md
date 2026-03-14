`
# DevOps Assignment: System Monitoring & Automated Backups

This repository contains the technical implementation for managing development environments at TechCorp. The project covers system monitoring, user workspace management, and automated backup procedures for Apache and Nginx servers.

## 📂 Project Structure
- **monitor.sh**: Collects CPU, memory, and disk usage metrics into a log file.
- **SARAH_BACKUP.sh**: Automates backups for Sarah's Apache configuration and root directory.
- **MIKE_BACKUP.sh**: Automates backups for Mike's Nginx configuration and root directory.

## 🛠️ Setup & Tasks

### Task 1: System Monitoring
The `monitor.sh` script uses `df`, `du`, and `ps` to track system health.
- **Run manually**: `./monitor.sh`
- **Output**: Logs are saved to `/var/log/system_report.log`.

### Task 2: User Management
Configured isolated workspaces for developers:
- **Sarah**: `/home/Sarah/workspace`
- **Mike**: `/home/mike/workspace`
- **Security**: Implemented 30-day password expiration policy using `chage`.

### Task 3: Backup Configuration
Automated backups are scheduled via `cron` to run every Tuesday at 12:00 AM.
- **Sarah (Apache)**: Backs up `/etc/httpd/` and `/var/www/html/`.
- **Mike (Nginx)**: Backs up `/etc/nginx/` and `/usr/share/nginx/html/`.
- **Verification**: Integrity checks are logged in `/backups/verify.log`.

## 🚀 How to Run
1. Clone the repository:
   ```bash
   git clone <your-repo-link>
