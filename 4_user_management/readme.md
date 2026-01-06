# User & Group Management

Learn how to list, create, and manage users and groups.

### `whoami`
Displays current logged-in user.

### `id`
Shows user/group identity.

### `useradd`, `userdel`
Add and remove users:
```bash
sudo useradd newuser
sudo userdel newuser
```
### `usermod`
Modify user info:

Example:
```
sudo usermod -aG sudo newuser

```
