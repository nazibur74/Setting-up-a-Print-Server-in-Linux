# Technical Documentation for Linux Print Server Setup

<br>
Author : Nazibur Rahman  
<br>
Daffodil International University  
<br>

## 1. Project Overview
This Linux Print Server project automates the setup and management of a CUPS-based print server using shell scripts. It simplifies installation, printer configuration, PDF printing, and user management. Ideal for small networks or university lab environments.

## 2. Project Scope
The purpose of this project is to:
1. Provide an automated setup for a print server using CUPS.
2. Allow user access and printer management through the terminal.
3. Enable printing to PDF and organize printed files.
4. Offer a minimal CLI-based interface for printer selection.

## 3. Features
### 3.1 Automated Setup:
- Installs required packages (`cups`, `cups-pdf`).
- Configures CUPS for remote access and printer sharing.
- Enables firewall rules and updates CUPS config.

### 3.2 User & Printer Management:
- Add a user to the `lpadmin` group for printer management.
- View all connected printers and select one interactively.

### 3.3 Print File Utility:
- Print a file directly or by selecting a printer.
- Supports file checking and error handling.

### 3.4 PDF Output Management:
- Moves printed PDFs to a user-defined directory.
- Logs the operations in a history file for audit.

## 4. Technologies Used
- **Bash Shell Scripting**
- **CUPS (Common UNIX Printing System)**
- **Linux Ubuntu/Debian Systems**
- **UFW (Uncomplicated Firewall)**

## 5. System Requirements
### 5.1 Hardware:
- Processor: Intel i3 or better
- RAM: 2 GB or higher
- Disk: Minimum 100 MB for installation

### 5.2 Software:
- OS: Ubuntu 20.04+ or any Debian-based distro
- Dependencies: `cups`, `cups-pdf`, `ufw`, `systemctl`

## 6. File Descriptions
```
print-server-setup/
├── setup_print_server.sh         # Installs and configures CUPS
├── add_user_to_lpadmin.sh        # Adds user to lpadmin group
├── print_sample.sh               # Prints a given text file
├── select_printer_and_print.sh   # Lets user pick a printer before printing
├── move_printed_pdfs.sh          # Moves printed PDFs and logs the action
```

## 7. Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/nazibur74/print-server-setup.git
   cd print-server-setup
   ```

2. **Run Setup Script**:
   ```bash
   chmod +x setup_print_server.sh
   ./setup_print_server.sh
   ```

3. **Add Yourself to `lpadmin` Group**:
   ```bash
   chmod +x add_user_to_lpadmin.sh
   ./add_user_to_lpadmin.sh [your_username]
   ```

4. **Print a File (Optional Scripts)**:
   - Direct Print:
     ```bash
     ./print_sample.sh sample.txt
     ```
   - Select Printer First:
     ```bash
     ./select_printer_and_print.sh sample.txt
     ```

5. **Move and Log Printed PDFs**:
   ```bash
   chmod +x move_printed_pdfs.sh
   ./move_printed_pdfs.sh
   ```

## 8. Testing
- Tested on Ubuntu 22.04 LTS
- Verified remote printer setup from another PC
- Confirmed PDF generation and log updates

## 9. Future Enhancements
- **Web UI** for printer status and control
- **Email notifications** for print job completions
- **Multi-user queue** management and quota enforcement
- **Support for non-PDF output formats**

## 10. Conclusion
This print server project simplifies the setup of a secure and remotely accessible printing environment using Linux and CUPS. It provides essential tools for managing users and printers through shell scripts, making it perfect for educational institutions or small office setups.
