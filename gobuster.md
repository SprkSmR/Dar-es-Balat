Certainly! Below is a basic cheat sheet for using `gobuster`, a tool for directory and file enumeration:

### Basic Syntax:
```bash
gobuster <mode> -u <target_url> -w <wordlist> [options]
```

### Modes:
- **dir:** Directory/file brute force
- **dns:** DNS subdomain brute force
- **vhost:** Virtual host brute force

### Example:
```bash
gobuster dir -u http://example.com/ -w /path/to/wordlist.txt
```

### Options and Examples:

1. **Wordlist Selection:**
   - `-w`: Specify a custom wordlist.
     ```bash
     gobuster dir -u http://example.com/ -w /path/to/wordlist.txt
     ```

2. **Concurrency (`-t`):**
   - `-t`: Set the number of concurrent threads.
     ```bash
     gobuster dir -u http://example.com/ -w /path/to/wordlist.txt -t 50
     ```

3. **Extensions (`-x`):**
   - `-x`: Specify file extensions to search for.
     ```bash
     gobuster dir -u http://example.com/ -w /path/to/wordlist.txt -x php,html
     ```

4. **Status Codes to Ignore (`-s`):**
   - `-s`: Comma-separated list of status codes to ignore.
     ```bash
     gobuster dir -u http://example.com/ -w /path/to/wordlist.txt -s 404,403
     ```

5. **Recursive Mode (`-r`):**
   - `-r`: Use recursion to discover subdirectories.
     ```bash
     gobuster dir -u http://example.com/ -w /path/to/wordlist.txt -r
     ```

6. **User-Agent String (`-a`):**
   - `-a`: Specify a custom User-Agent string.
     ```bash
     gobuster dir -u http://example.com/ -w /path/to/wordlist.txt -a "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3"
     ```

7. **Output File (`-o`):**
   - `-o`: Save output to a file.
     ```bash
     gobuster dir -u http://example.com/ -w /path/to/wordlist.txt -o output.txt
     ```

8. **DNS Subdomain Brute Force (DNS Mode):**
   ```bash
   gobuster dns -d example.com -w /path/to/wordlist.txt
   ```

9. **Virtual Host Brute Force (VHOST Mode):**
   ```bash
   gobuster vhost -u http://example.com/ -w /path/to/wordlist.txt
   ```

Remember to use `gobuster` responsibly and within the legal and ethical boundaries. Unauthorized access and activities are illegal and unethical. Always ensure you have permission to perform testing on the target.