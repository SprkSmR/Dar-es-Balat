Nmap (Network Mapper) is a powerful open-source tool for network exploration and security auditing. Here's a basic cheat sheet to help you use Nmap effectively:

### Basic Scanning Techniques:

1. **Ping Scan (Discovery):**
    ```bash
    nmap -sn <target>
    ```
    This performs a ping scan to discover live hosts.

2. **TCP SYN Scan (Stealth Scan):**
    ```bash
    nmap -sS <target>
    ```
    Sends SYN packets to check for open ports without completing the TCP handshake.

3. **UDP Scan:**
    ```bash
    nmap -sU <target>
    ```
    Scans for open UDP ports.

### Port Specification:

- **Scan specific ports:**
    ```bash
    nmap -p <port(s)> <target>
    ```

- **Scan a range of ports:**
    ```bash
    nmap -p 1-100 <target>
    ```

- **Scan top ports (1000 most common):**
    ```bash
    nmap --top-ports 1000 <target>
    ```

### Service Version Detection:

- **Service version detection:**
    ```bash
    nmap -sV <target>
    ```

- **Aggressive service version detection:**
    ```bash
    nmap -A <target>
    ```

### Operating System Detection:

- **OS detection:**
    ```bash
    nmap -O <target>
    ```

### Output Options:

- **Output to a file (text):**
    ```bash
    nmap -oN output.txt <target>
    ```

- **Output in all formats (XML, grepable, normal):**
    ```bash
    nmap -oA output <target>
    ```

### Scripting Engine:

- **Run NSE scripts:**
    ```bash
    nmap -sC -sV <target>
    ```

### Timing and Performance:

- **Timing template (0-5):**
    ```bash
    nmap -T<0-5> <target>
    ```

- **Set max retries and timeout:**
    ```bash
    nmap --max-retries 3 --host-timeout 5m <target>
    ```

### Firewall Evasion Techniques:

- **Fragmentation:**
    ```bash
    nmap -f <target>
    ```

- **Randomize hosts and ports:**
    ```bash
    nmap -r <target>
    ```

### Miscellaneous:

- **Verbose output:**
    ```bash
    nmap -v <target>
    ```

- **Aggressive scan (enable OS detection, version detection, and scripts):**
    ```bash
    nmap -A <target>
    ```

- **Exclude hosts from a scan:**
    ```bash
    nmap --exclude <excluded_host> <target>
    ```

These are just some basic commands to get you started. Nmap offers a wide range of options, so refer to the official documentation for more advanced usage and customization: [Nmap Documentation](https://nmap.org/book/man.html).