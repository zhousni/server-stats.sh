# Server Stats Script

This project provides a script, `server-stats.sh`, to analyze basic server performance stats on any Linux server.

## Features

- Total CPU usage
- Total memory usage (free vs used, including percentage)
- Total disk usage (free vs used, including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage

### Stretch Features
- OS version
- System uptime
- Load average
- Logged-in users
- Failed login attempts

## Prerequisites

- A Linux server
- Bash shell

## Instructions to Run the Project

1. Clone this repository:
   ```bash
   git clone https://github.com/zhousni/server-stats.sh.git
   cd server-stats.sh
   Make the script executable:

2. run the script
   ```bash
   chmod +x server-stats.sh
   Run the script:
   
   ```bash
   ./server-stats.sh
