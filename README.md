# nodejs-simple-calculator
A minimal, educational Node.js web application that demonstrates serving a static frontend (HTML, CSS, JS) using Node's built-in http module — no frameworks, no databases.  Fully Dockerized for easy deployment and ideal for beginners learning Node.js, web basics, or Docker containerization.

## Project Execution

### On Windows
```bash
node server.js
```
Open http://localhost:80 in your browser.

### On Ubuntu (After Migration)
```bash
node server.js
```
Open http://localhost:80 in your browser.

## Migration Guide: Windows to Ubuntu Virtual Machine

This guide provides step-by-step instructions for migrating the nodejs-simple-calculator project from a Windows environment to an Ubuntu virtual machine hosted on VirtualBox. The migration involves transferring project files using FileZilla and setting up the necessary dependencies on Ubuntu.

### 1. Dependency Installation on Ubuntu

Before running the project on Ubuntu, ensure Node.js and npm are installed. This project uses only core Node.js modules, so no additional npm packages are required.

#### Install Node.js and npm
```bash
# Update package list
sudo apt update

# Install Node.js and npm
sudo apt install nodejs npm

# Verify installation
node --version
npm --version
```

#### System-Level Packages
No additional system-level packages are required beyond Node.js/npm.

#### Virtual Environment
Node.js does not use virtual environments like Python's venv. If you need to manage multiple Node.js versions, consider using nvm (Node Version Manager):
```bash
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Restart terminal or source ~/.bashrc
source ~/.bashrc

# Install and use a specific Node.js version
nvm install 18
nvm use 18
```

### 2. Project Execution on Ubuntu

After installing dependencies and transferring files (see below), run the project as follows:

```bash
# Navigate to the project directory
cd /path/to/your/project

# Run the server
node server.js
```

The server will start on port 80. Open http://localhost:80 in your browser to access the calculator.

### 3. File Transfer Using FileZilla

To transfer project files from Windows to the Ubuntu VM:

1. **Install FileZilla on Windows**: Download and install FileZilla from https://filezilla-project.org/

2. **Set up SSH on Ubuntu VM**:
   ```bash
   # Install OpenSSH server if not already installed
   sudo apt install openssh-server

   # Start SSH service
   sudo systemctl start ssh

   # Enable SSH to start on boot
   sudo systemctl enable ssh
   ```

3. **Configure VirtualBox Network**:
   - In VirtualBox Manager, select your Ubuntu VM
   - Go to Settings > Network
   - Ensure Adapter 1 is set to "NAT" or "Bridged Adapter" for network access
   - If using NAT, set up port forwarding for SSH (host port 2222 to guest port 22)

4. **Transfer Files**:
   - Open FileZilla on Windows
   - In the Host field, enter the Ubuntu VM's IP address or localhost:2222 (if port forwarded)
   - Username: your Ubuntu username
   - Password: your Ubuntu password
   - Port: 22 (or 2222 if forwarded)
   - Click "Quickconnect"
   - Navigate to the project directory on Windows (left pane) and Ubuntu (right pane)
   - Transfer all project files to the desired directory on Ubuntu

5. **Post-Transfer Setup**:
   - On Ubuntu, navigate to the transferred project directory
   - Ensure file permissions are correct: `chmod +x server.js`
   - Proceed with dependency installation and execution as described above


# nodejs-simple-calculator
A minimal, educational Node.js web application that demonstrates serving a static frontend (HTML, CSS, JS) using Node's built-in http module — no frameworks, no databases.  Fully Dockerized for easy deployment and ideal for beginners learning Node.js, web basics, or Docker containerization.
```bash
# On Ubuntu / Linux
docker-compose up -d

# On Windows
docker compose up -d
