# Sprints - Assignment 1

## Lab 3

# 1. Create a user with attrs
sudo useradd -md /home/islam -c "Islam Askar" -p islam islam

# 2. Second user 
sudo useradd -c "Bad User" -p baduser baduser

# 3. pgroup with group ID of 30000
sudo groupadd -g 30000 pgroup

# 4. bad group
sudo groupadd badgroup

# 5. Add islam to pgroup as supp group
sudo usermod -a -G pgroup islam


# 6. Modify the password of islam's account to password
sudo passwd islam
password
password

# 7. Modify islam's account so the password expires after 30 days
sudo chage -M 30 islam

# 8. Lock bad user account so he can't log in
sudo usermod -L baduser

# 9. Delete bad user account
sudo userdel baduser

# 10. Delete the supplementary group called badgroup.
sudo groupdel badgroup

# 13. Create a folder called myteam in your home directory 
# and change its permissions to read only for the owner.
mkdir myteam
chmod 400 myteam

# 14. Log out and log in by another user
su islam
passwd

# 15. Try to access (by cd command) the folder (myteam)
cd myteam
> bash: cd: myteam/: Permission denied

# 16. Using the command Line Change the permissions 
# of oldpasswd file to give owner read and write permissions 
# and for group write and execute and execute only for 
# the others (using chmod in 2 different ways)
sudo chmod u=rw,g=wx,o=x passwd-
sudo chmod 631 passwd-

