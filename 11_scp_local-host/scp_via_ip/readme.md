🧠 Before you start (must check)
✅ 1. Ubuntu Server has SSH

On the VM (server):
```

sudo apt update
sudo apt install openssh-server -y
sudo systemctl status ssh
```

Status must be:

active (running)

✅ 2. Find VM IP address

On the Ubuntu VM:
```
hostname -I
```

Example:

132.118.1.105

✅ 3. VirtualBox network must allow access
✔️ Recommended: Bridged Adapter

VirtualBox → Settings → Network

Adapter 1: Bridged Adapter

Name: your Wi-Fi / Ethernet

Restart VM after this.

🧪 Step-by-step SCP transfer
📍 On your LOCAL LAPTOP (not inside VM)
Create a test file
```
echo "Hello from my laptop" > test.txt
```

📤 Copy file FROM laptop → Ubuntu Server

```
scp test.txt username@SERVER_IP:/home/username/
```

Example:
```

scp test.txt jarvis@292.118.1.105:/home/jarvis/
```

👉 Enter VM user password when prompted.

![alt text](image.png)

✅ Verify on Ubuntu VM

Login to VM:
```
ssh jarvis@112.134.1.105

```
Then:

ls

cat test.txt

![alt text](image-1.png)


✔️ File transferred successfully

📥 Copy file FROM Ubuntu Server → laptop
```
scp username@SERVER_IP:/home/username/test.txt .
```

📂 Copy a directory (very common)
**For copy a folder we have to use flag -r**
```
scp -r myfolder jarvis@131.144.1.105:/home/jarvis/
```
🧠 If you are using NAT (alternative)

If VirtualBox uses NAT, set port forwarding:

Setting	Value
Host Port	2222
Guest Port	22

Then:
```
scp -P 2222 test.txt jarvis@localhost:/home/jarvis/
```