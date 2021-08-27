# Sprints - Assignment 1
## Lab4



1. What is the option used to view the content of a compressed file.

        tar -t etc.tar

2. Backup /etc directory using tar utility.

        sudo tar -cf etc.tar /etc

3. List the inode numbers of /, /etc, /etc/hosts.

        df -i /
        # 1559040
        df -i /etc
        # 1559040
        df -i /etc/ hosts
        # 1559040

4. Copy /etc/passwd to your home directory, use the commands diff and cmp, and Edit in the file you copied, and then use these commands again, and check the output.

        sudo cp /etc/passwd ~
        
        # I don't understand the rest of the requirements

5. Create a symbolic link of /etc/passwd in /boot.

        sudo ln -s /etc/passwd /boot        

6. Create a hard link of /etc/passwd in /boot. Could you? Why?

        sudo ln /etc/passwd /boot/passwd

* Yes, I could, because both /etc and /boot are in the same filesystem (/dev/sda1)

        