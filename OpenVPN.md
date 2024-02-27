Setting up and using OpenVPN involves several steps, from installation to configuration. Below is a basic cheat sheet for OpenVPN. Please note that OpenVPN configurations can vary based on your specific use case, so adjust accordingly.

### Server Configuration:

1. **Installation:**
   - Install OpenVPN on your server:
     ```bash
     sudo apt-get update
     sudo apt-get install openvpn
     ```

2. **Generate Server Certificates and Keys:**
   - Use Easy-RSA or another tool to generate server certificates and keys.

3. **Configuration File:**
   - Create a server configuration file, e.g., `server.conf`.
     ```bash
     sudo nano /etc/openvpn/server.conf
     ```
     Sample `server.conf`:
     ```conf
     port 1194
     proto udp
     dev tun
     server 10.8.0.0 255.255.255.0
     ca /etc/openvpn/easy-rsa/keys/ca.crt
     cert /etc/openvpn/easy-rsa/keys/server.crt
     key /etc/openvpn/easy-rsa/keys/server.key
     dh /etc/openvpn/easy-rsa/keys/dh2048.pem
     ```

4. **Firewall Configuration:**
   - Allow traffic on OpenVPN port (default is 1194).
     ```bash
     sudo ufw allow 1194/udp
     sudo ufw enable
     ```

5. **Enable IP Forwarding:**
   - Edit `/etc/sysctl.conf` and uncomment or add:
     ```bash
     net.ipv4.ip_forward=1
     ```
     Then apply the changes:
     ```bash
     sudo sysctl -p
     ```

6. **Start and Enable OpenVPN Service:**
   ```bash
   sudo systemctl start openvpn@server
   sudo systemctl enable openvpn@server
   ```

### Client Configuration:

1. **Generate Client Certificates:**
   - Use Easy-RSA or another tool to generate client certificates and keys.

2. **Configuration File:**
   - Create a client configuration file, e.g., `client.ovpn`.
     ```bash
     client
     dev tun
     proto udp
     remote your_server_ip 1194
     resolv-retry infinite
     nobind
     persist-key
     persist-tun
     ca ca.crt
     cert client.crt
     key client.key
     ```

3. **Transfer Certificates to Clients:**
   - Transfer the client configuration file (`client.ovpn`) and the necessary certificates (`ca.crt`, `client.crt`, `client.key`) to client devices.

4. **Install OpenVPN Client:**
   - Install an OpenVPN client on the client device.

5. **Connect:**
   - Use the client software to connect to the server using the configuration file.

### Troubleshooting:

- **Check Logs:**
  - View OpenVPN logs for troubleshooting.
    ```bash
    sudo journalctl -xe | grep openvpn
    ```

- **Firewall Issues:**
  - Ensure that the firewall on the server allows traffic on the OpenVPN port.

- **Routing Issues:**
  - Check IP forwarding on the server and make sure the routes are set up correctly.

Remember to replace placeholder values such as `your_server_ip`, and adjust configurations based on your specific setup. This is a simplified cheat sheet, and the actual configuration may vary depending on your needs and security considerations. Always follow security best practices and ensure proper permissions and access controls.