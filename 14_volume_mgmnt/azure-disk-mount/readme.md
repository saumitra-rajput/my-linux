
---

# 📦 Azure Folder Overview

This folder contains Azure related scripts and configurations used in this project for provisioning and managing Azure **Virtual Machines (VMs)** and **Data Disks**.
It is organized into subfolders based on tasks like creating VMs and attaching/managing disks.

---

## 📁 Folder Structure

```
azure/
├── azure_disk/      # Scripts and files for Azure Data Disk creation
├── azure_vm/        # VM creation & setup + disk attach, PV/LV setup
└── README.md        # ← This file
```

---

## 📌 azure_disk — Azure Data Disk Creation

### 🧠 What This Does

This folder contains resources info to **create an Azure managed data disk** that can later be attached to a VM.
Managed disks are block storage volumes that you can attach to Azure Virtual Machines as **data disks**.

An Azure managed data disk is separate from the OS disk and is commonly used for:

* Storing application data
* Databases
* Persistent storage outside the operating system

Data disks allow you to store data that persists independently of the Azure VM lifecycle, and can be mounted and formatted on the VM after attachment. 

### 🛠 Typical Process

1. Create a managed data disk in the Azure subscription (size, type, region).
2. Attach this data disk to an existing Azure VM.
3. Inside the VM, format and mount the disk to make it usable. 



---

## 🚀 azure_vm — VM Setup and Disk Operations

### 🧠 What This Does

This folder contains all resources (scripts, commands, Terraform, documentation) related to:

✔️ Creating and provisioning an Azure Virtual Machine

✔️ SSH access into the VM

✔️ Checking and managing attached disks

✔️ Attaching the data disk created in *azure_disk*

✔️ Setting up partitions and file systems

✔️ Creating LVM components like **PV, VG, LV**

✔️ Extending disk size if needed

It essentially automates and documents the entire lifecycle of working with Azure VMs and additional disks.

---

### 🛠 Typical Workflow

#### 🔸 1. Create a linux VM via portal

---

#### 🔸 2. SSH Into the VM

Once the VM is created, use the assigned public IP to SSH:

```bash
ssh azureuser@<VM_PUBLIC_IP>
```

---

#### 🔸 3. Attach a Data Disk

After creating a data disk in *azure_disk*, attach it to the VM either via portal / CLI / Terraform.

Azure Portal manual steps:

* Go to the VM → Disks
* Add a data disk and save
* Connect and identify the new disk inside the VM 

---

#### 🔸 4. Inside the VM: Prepare Disk

Once attached, inside your Linux VM:

```bash

sudo mkfs.ext4 /dev/sdc1   # format it
sudo mkdir /mnt/data
sudo mount /dev/sdc1 /mnt/data
```

---

#### 🔸 5. LVM Setup (PV, VG, LV)

To manage and resize the storage easily:

```bash
sudo pvcreate /dev/sdc1
sudo vgcreate datavg /dev/sdc1
sudo lvcreate -n datalv -L 50G datavg
sudo mkfs.ext4 /dev/datavg/datalv
sudo mount /dev/datavg/datalv /mnt/datavg
```

These commands help setup **Logical Volume Management** inside your VM.

---

#### 🔸 6. Extend Disk/Filesystem

To resize, simply expand the data disk size in Azure vm.
---

## 📌 Best Practices

✔ Store **no secrets** (SSH keys, passwords) in repos.


✔ Always **unmount disks before detaching**.

✔ Use **managed disks** for reliability and performance options.

---

## 🎯 Summary

| Folder        | Purpose                                              |
| ------------- | ---------------------------------------------------- |
| `azure_disk/` | Create and prepare Azure data disk(s)                |
| `azure_vm/`   | VM creation + Disk attach + Post-attach disk actions |

---
