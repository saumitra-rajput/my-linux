# File Permissions

Linux uses permissions to control access to files and directories.

---

## 🔹 Permissions Explained

| Permission | Meaning |
|-----------|---------|
| r | Read |
| w | Write |
| x | Execute |
| d | Directory |

![alt text](image.png)

![alt text](image-1.png)


Example:
-rwxr-xr--
 = 754


### `chmod`
Change permission:

Example:

![alt text](image-2.png)

```
chmod 755 filename
```

### `chown`
Change owner:
```
sudo chown user:group file.txt

```
![alt text](image-5.png)

### `umask`
User File Creation Mode Mask
Default value = 0002

Example:
```
umask
```



### `chgrp`
To change the group of file.

Example:

![alt text](image-3.png)

```
sudo chgrp devops test.txt
```

![alt text](image-4.png)