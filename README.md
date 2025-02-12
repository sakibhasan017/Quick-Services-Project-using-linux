# Quick-Service-Project-Using_Linux

## Overview

The **Quick-Service-Project-Using_Linux** is a Bash-based utility tool that provides several functionalities:

- 🧮 **Scientific Calculator** with advanced mathematical operations.
- 🎮 **Rock, Paper, Scissors Game** to play against the computer.
- ⏳ **Time and Date Checker** to display the current system time and date.
- 🌐 **Server Testing** to check server status by resolving IP addresses and pinging the server.

This project is designed to be **lightweight**, **fast**, and **easy to use** within a Linux terminal environment.

---

## 🚀 Features

### 1️⃣ Scientific Calculator
The calculator supports:

- **Basic arithmetic:** Addition, Subtraction, Multiplication, Division, and Modulo.
- **Advanced functions:**
  - Square Root, Power, Logarithm (any base), Factorial.
  - Trigonometric functions: Sine, Cosine, Tangent, and their inverses.
  - Absolute value, Binary, Octal, and Hexadecimal conversions.
  - Recall the previous result.

### 2️⃣ Rock, Paper, Scissors Game

- Play against the computer for **5 rounds**.
- The computer randomly selects **Rock, Paper, or Scissors**.
- Scores are tracked, and the **overall winner is declared** at the end.

### 3️⃣ Time and Date Checker

- Displays the **current system time and date**.

### 4️⃣ Server Testing

- Resolves the **IP address** of a given website.
- Pings the server to check its **reachability**.
- Displays the **ping result** (successful or failed).

---

## 📌 Prerequisites

Ensure the following tools are installed on your Linux system:

```bash
sudo apt update
sudo apt install bc dnsutils iputils-ping
```

- `bash` (Bourne Again Shell)
- `bc` (Basic Calculator) for mathematical calculations.
- `dig` (Domain Information Groper) for DNS lookup.
- `ping` for server testing.

---

## 📥 Installation

Clone this repository to your local machine:

```bash
git clone https://github.com/sakibhasan017/Quick-Service-Project-Using_Linux.git
cd Quick-Service-Project-Using_Linux
```

Ensure all shell scripts are executable:

```bash
chmod +x main.sh calculator.sh RPS_game.sh server_testing.sh time_date.sh
```

---

## ▶️ Usage

Run the main script to start the program:

```bash
./main.sh
```

### 📜 Menu Options:
```
We offer the following services for you to choose from:
1. Calculator
2. RPS Game
3. Time and Date
4. Server Testing
0. Exit
```
#### How to Use:
- **1** - Launches the **Scientific Calculator**.
- **2** - Starts the **Rock, Paper, Scissors Game**.
- **3** - Displays the **current time and date**.
- **4** - Tests the **server status** by resolving IP and pinging.
- **0** - Exits the application.

---

## 📂 File Descriptions

| File               | Description |
|--------------------|-------------|
| `main.sh`         | The main control script that displays the menu and navigates between different services. |
| `calculator.sh`   | Implements the **Scientific Calculator** with various operations. |
| `RPS_game.sh`     | A **Rock, Paper, Scissors game** against the computer. |
| `server_testing.sh` | Tests **server availability** by resolving IP and pinging the server. |
| `time_date.sh`    | Displays the **current system time and date**. |

---

## 🔍 Example Usage

### Example of Server Testing:
```bash
Enter server name (e.g., www.google.com): www.google.com
IP address of www.google.com is: 142.250.190.132
PING www.google.com (142.250.190.132): 56 data bytes
64 bytes from 142.250.190.132: icmp_seq=1 ttl=117 time=12.3 ms
...
Ping successful. The server is reachable.
```

---

### 🔹 Notes:
- Ensure you have the **necessary permissions** to execute shell scripts.
- The project is tested on **Ubuntu**, but it should work on **any Linux distribution** with the required dependencies installed.

---


