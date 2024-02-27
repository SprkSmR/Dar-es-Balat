`dirb` is a directory brute-forcing tool often used in penetration testing and ethical hacking to discover hidden directories and files on web servers. Below is a basic cheatsheet for using `dirb`:

### Basic Syntax:
```bash
dirb <target_url> [options]
```

### Example:
```bash
dirb http://example.com/
```

### Options and Examples:

1. **Wordlist Selection:**
   - `-w`: Specify a custom wordlist.
     ```bash
     dirb http://example.com/ -w /path/to/wordlist.txt
     ```

2. **Recursion Depth:**
   - `-r`: Set the maximum recursion depth.
     ```bash
     dirb http://example.com/ -r 5
     ```

3. **User-Agent String:**
   - `-a`: Specify a custom User-Agent string.
     ```bash
     dirb http://example.com/ -a "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3"
     ```

4. **HTTP Proxy:**
   - `-p`: Use an HTTP proxy.
     ```bash
     dirb http://example.com/ -p http://proxyserver:8080
     ```

5. **Output File:**
   - `-o`: Save output to a file.
     ```bash
     dirb http://example.com/ -o output.txt
     ```

6. **Status Codes to Ignore:**
   - `-N`: Comma-separated list of status codes to ignore.
     ```bash
     dirb http://example.com/ -N 404,403
     ```

7. **Extensions to Skip:**
   - `-X`: Comma-separated list of file extensions to skip.
     ```bash
     dirb http://example.com/ -X php,html
     ```

8. **Update Wordlist:**
   - `-x`: Update the internal list of known extensions.
     ```bash
     dirb -x
     ```

9. **Multiple Threads:**
   - `-r`: Specify the number of threads.
     ```bash
     dirb http://example.com/ -r 10
     ```

10. **Custom Headers:**
    - `-H`: Specify custom HTTP headers.
      ```bash
      dirb http://example.com/ -H "Authorization: Bearer token123"
      ```

11. **Quiet Mode:**
    - `-q`: Quiet mode, suppress output to stdout.
      ```bash
      dirb http://example.com/ -q
      ```

Always ensure that you have proper authorization to perform directory enumeration on a target. Unauthorized access and activities are illegal and unethical.