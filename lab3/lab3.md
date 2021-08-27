# Sprints - Assignment 1
## Lab 3

1. Create a user with attrs
        
        sudo useradd -md /home/islam -c "Islam Askar" -p islam islam

2. Second user 
        
        sudo useradd -c "Bad User" -p baduser baduser

3. pgroup with group ID of 30000
        
        sudo groupadd -g 30000 pgroup

4. bad group
        
        sudo groupadd badgroup

5. Add islam to pgroup as supp group
        
        sudo usermod -a -G pgroup islam


6. Modify the password of islam's account to password
        
        sudo passwd islam
        password
        password

7. Modify islam's account so the password expires after 30 days
        
        sudo chage -M 30 islam

8. Lock bad user account so he can't log in
        
        sudo usermod -L baduser

9. Delete bad user account
        
        sudo userdel baduser

10. Delete the supplementary group called badgroup.
        
        sudo groupdel badgroup

13. Create a folder called myteam in your home directory and change its permissions to read onlyfor the owner.

        mkdir myteam
        chmod 400 myteam

14. Log out and log in by another user

        su islam
        passwd


15. Try to access (by cd command) the folder (myteam)

        cd myteam 
        # > bash: cd: myteam/: Permission denied


16. Using the command Line Change the permissions  of oldpasswd file to give owner read and write permissions and for group write and execute and execute only for the others (using chmod in 2 different ways)

        sudo chmod u=rw,g=wx,o=x passwd-
        sudo chmod 631 passwd-

Change your default permissions to be as above.
* Answer: You can't, as files can't have x permission by default
        
        umask u=rw,g=wx,o=x


What is the maximum permission a file can have, 
by default when it is just created? And what is 
that for directory.
* file: rw-rw-rw-
* dir: rwxrwxrwx

Change your default permissions to be no permission to everyone then create a directory and a file to verify.
        
        umask 0777
        touch f1
        mkdir d1
        cd d1 
        # > bash: cd: d1: Permission denied
        cp f1 f2 
        # > cp: cannot open 'f1' for reading: Permission denied


17. What are the minimum permission needed for:

* Copy a directory (permission for source directory and permissions for target parent directory) 

    * source directory: execute and read permission

    * target directory: execute and write permission.

* Copy a file (permission for source file and and permission for target parent directory)

    * source file: read permission.

    * target directory: execute and write permission

* Delete a file
     * none

* Change to a directory
     * Execute permissions on dir


* List a directory content (ls command)
     * Read


* View a file content (more/cat command)
     * read permission


* Modify a file content
     * write permission

18. Create a file with permission 444. Try to edit in it

        touch f1
        chmod 444 f1
        echo hello > f1 
        # > bash: f1: Permission denied
        rm f1 
        # > rm: remove write-protected regular empty file 'f1'? y 
        # deleted


19. What is the difference between the “x” permission for a file and for a directory?

* File: Can't be assigned by default, allows execution
* Directory: can be assigned by default, allows cd into file

20. Issue the command "sleep 100" in background.
        
        sleep 100 &

21. Kill the sleep command.
        
        kill -9 15130

22. Display your processes only
        
        ps

23. Display all processes except yours
        
        ps -a

24. Use the pgrep command to list your processes only
        
        ps -u karim