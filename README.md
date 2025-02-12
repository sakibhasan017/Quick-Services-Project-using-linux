Quick-Service-Project-Using_Linux
Overview

The Quick-Service-Project-Using_Linux is a Bash-based utility tool that provides several functionalities:

    A Scientific Calculator with advanced mathematical operations.
    A Rock, Paper, Scissors Game to play against the computer.
    Time and Date Checker to display the current time and date.
    Server Testing to check server status by resolving IP addresses and pinging the server.

This project is designed to be lightweight, fast, and easy to use within a Linux terminal environment.
Features
1. Scientific Calculator

The calculator supports:

    Basic arithmetic: Addition, Subtraction, Multiplication, Division, and Modulo.
    Advanced functions:
        Square Root, Power, Logarithm (any base), Factorial.
        Trigonometric functions: Sine, Cosine, Tangent, and their inverses.
        Absolute value, Binary, Octal, and Hexadecimal conversions.
        Recall the previous result.

2. Rock, Paper, Scissors Game

    Play against the computer for 5 rounds.
    The computer randomly selects Rock, Paper, or Scissors.
    Scores are tracked, and the overall winner is declared at the end.

3. Time and Date Checker

    Displays the current system time and date.

4. Server Testing

    Resolves the IP address of a given website.
    Pings the server to check its reachability.
    Displays the ping result (successful or failed).

Prerequisites

Make sure the following tools are installed on your Linux system:

    bash (Bourne Again Shell)
    bc (Basic Calculator) for mathematical calculations.
    dig (Domain Information Groper) for DNS lookup.
    ping for server testing.

You can install them using:

sudo apt update
sudo apt install bc dnsutils iputils-ping

Installation

Clone this repository to your local machine:

git clone https://github.com/your-username/Quick-Service-Project-Using_Linux.git
cd Quick-Service-Project-Using_Linux

Ensure all shell scripts are executable:

chmod +x main.sh calculator.sh RPS_game.sh server_testing.sh time_date.sh

Usage

Run the main script to start the program:

./main.sh

You will be presented with the following menu:

We offer the following services for you to choose from:
1. Calculator
2. RPS Game
3. Time and Date
4. Server Testing
0. Exit

Select the Desired Option:

    1 - Launches the Scientific Calculator.
    2 - Starts the Rock, Paper, Scissors Game.
    3 - Displays the current time and date.
    4 - Tests the server status by resolving IP and pinging.
    0 - Exits the application.

File Descriptions

    main.sh: The main control script that displays the menu and navigates between different services.
    calculator.sh: Implements the Scientific Calculator with a variety of operations.
    RPS_game.sh: A Rock, Paper, Scissors game against the computer.
    server_testing.sh: Tests server availability by resolving IP and pinging the server.
    time_date.sh: Displays the current system time and date.

Example

Example of server testing:

Enter server name (e.g., www.google.com): www.google.com
IP address of www.google.com is: 142.250.190.132
PING www.google.com (142.250.190.132): 56 data bytes
64 bytes from 142.250.190.132: icmp_seq=1 ttl=117 time=12.3 ms
...
Ping successful. The server is reachable.

Contributing

Contributions are welcome! Feel free to:

    Fork the repository.
    Make your changes.
    Submit a pull request.

License

This project is licensed under the MIT License. See the LICENSE file for more details.
Author

Aryan Rahman
Full-Stack Software Engineer from Dhaka, Bangladesh
Currently building Relearnify.com
Acknowledgments

Special thanks to the open-source community and Linux enthusiasts for their continuous support and inspiration.
Contact

For any inquiries or issues, feel free to reach out:

    Email: aryan.rahman@example.com
    LinkedIn: Aryan Rahman

Disclaimer

This project is intended for educational and personal use only. Use it responsibly and at your own risk.
Notes

    Ensure you have the necessary permissions to execute shell scripts.
    The project is tested on Ubuntu, but it should work on any Linux distribution with the required dependencies installed.
