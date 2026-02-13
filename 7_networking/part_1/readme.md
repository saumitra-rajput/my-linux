# 🌐 Linux Networking Commands – Quick Guide

Short explanations of commonly used Linux networking and troubleshooting commands.

---

## my public IP


```
curl ifconfig.me
```

## 1️⃣ ping
Checks if a host is reachable and measures latency.

```bash
ping google.com
```
![alt text](image.png)

## 2️⃣ netstat

Displays network connections, routing tables, and listening ports.
![alt text](image-1.png)
```
netstat
```

⚠️ Mostly replaced by ss.

## 3️⃣ ifconfig

Shows or configures network interfaces.

![alt text](image-2.png)
```
ifconfig
```

⚠️ Deprecated, replaced by ip.

## 4️⃣ traceroute vs tracepath
```
traceroute
```
Install traceroute
```
sudo apt install traceroute
sudo apt install inetutils-traceroute
```
![alt text](image-3.png)
Shows the path packets take to reach a destination.
![alt text](image-4.png)
```
traceroute google.com
```
```
tracepath
```
Similar to traceroute but does not require root access.
```
tracepath google.com
```
## 5️⃣ mtr (My Traceroute)

Combines ping and traceroute for real-time diagnostics.
```
mtr google.com
```

Great for network latency and packet loss analysis.

## 6️⃣ nslookup

Queries DNS servers to resolve domain names.
```
nslookup google.com
```

Used for DNS troubleshooting.

## 7️⃣ telnet

Tests connectivity to a specific port.
```
telnet google.com 80
```

⚠️ Not secure, used only for testing.

## 8️⃣ hostname

Displays or sets the system hostname.
```
hostname
hostname -I
```

Used to identify the machine on a network.

## 9️⃣ ip

Modern replacement for ifconfig, route, and arp.
```
ip a
ip route
ip address show
```

Primary networking command in modern Linux.

## 🔟 iwconfig

Displays or configures wireless network interfaces.

```
jarvis@jarvis:~$ iwconfig

Command 'iwconfig' not found, but can be installed with:
sudo apt install wireless-tools

jarvis@jarvis:~$ sudo apt install wireless-tools
```
```
iwconfig
```

Used for Wi-Fi interfaces.

## 1️⃣1️⃣ ss

Shows socket statistics (modern netstat replacement).
```
ss -tulnp
```

Fast and efficient.

## 1️⃣2️⃣ arp

Displays or modifies the ARP table.
```
arp -a
```

Maps IP addresses to MAC addresses.

## 1️⃣3️⃣ dig

Advanced DNS lookup tool.
![alt text](image-5.png)

```
dig google.com
```

Preferred over nslookup by professionals.

## 1️⃣4️⃣ nc (netcat)

Reads and writes data across network connections.
```
nc -zv google.com 80
```

Used for port scanning and debugging.

## 1️⃣5️⃣ whois

Retrieves domain ownership and registration details.
```
sudo apt install whois
```
```
whois google.com
```
## 1️⃣6 ifplugstatus

Shows the status of network plug-in -NIC
```
sudo apt install ifplugd

```
```
ifplugstatus
```
![alt text](image-6.png)

Used for domain investigation.

## 🔄 Upgrade for More Features

Install modern networking tools:
```
sudo apt install net-tools dnsutils traceroute mtr
```
## 🧠 Key Takeaway

These commands are essential for network troubleshooting, cloud VMs, DevOps, and system administration.