# Sprints - Assignment 1
## Lab-bash

Using sed utility:


1. Display the lines that contain the word “lp” in /etc/passwd file.

        sed -n "/lp/p" /etc/passwd


2. Display /etc/passwd file except the third line.

        sed "3d" /etc/passwd


3. Display /etc/passwd file except the last line.

        sed "$ d" /etc/passwd

4. Display /etc/passwd file except the lines that contain the word “lp”.

        sed  "/lp/d" /etc/passwd


5. Substitute all the words that contain “lp” with “mylp” in /etc/passwd file.

        sed "s/lp/mylp/g" /etc/passwd


Using awk utility

1. Print full name (comment) of all users in the system.  ***

        awk -F: '{print $5}' /etc/passwd

2. Print login, full name (comment) and home directory of all users.( Print each line preceded by a line number)

        awk -F: '{print NR": " $1", " $5", " $6}' /etc/passwd

3. Print login, uid and full name (comment) of those uid is greater than 500

        awk -F: '{if ($3>500) print $1, $3, $5}' /etc/passwd

4. Print login, uid and full name (comment) of those uid is exactly 500

        awk -F: '{if ($3==500) print $1, $3, $5}' /etc/passwd


5. Print line from 5 to 15 from /etc/passwd

        awk '{if ( NR>4 && NR<16) print $0}' /etc/passwd

6. Get the sum of all accounts id’s.

        awk 'BEGIN{FS=":"; sum=0} {sum=sum + $3} END {print sum}' /etc/passwd

---------------------------------------

1. Write a script called mycase, using the case utility to checks the type of character entered by a user:

	a. Upper Case.

	b. Lower Case.

	c. Number.

	d. Nothing.

        #! /bin/bash
        var=$1
        case "$var" in
                [A-Z] )
                        echo "upper"
                        ;;
                [a-z] )
                        echo "lower"
                        ;;
                [0-9] )
                        echo "number"
                        ;;
                * )
                        echo "something else"
                        ;;
        esac


2. (Optional, Can be skipped)Enhanced the previous script, by checking the type of string entered by a user:
	
    a. Upper Cases.
	
    b. Lower Cases.
	
    c. Numbers.
	
    d. Mix.
	
    e. Nothing.

        #! /bin/bash
        var=$1
        case "$var" in
                [A-Z] )
                        echo "upper"
                        ;;
                [a-z] )
                        echo "lower"
                        ;;
                [0-9] )
                        echo "number"
                        ;;
                * )
                        echo "something else"
                        ;;
        esac


3. Write a script called mychmod using for utility to give execute permission to all files and directories in your home directory.

        #! /bin/bash

        for entry in $(ls ~/)
        do
                chmod u+x ~/$entry
        done


4. Write a script called mybackup using for utility to create a backup of only files in your home directory.

        #! /bin/bash

        for entry in $(ls -la ~/ | grep '^-' | awk -F" " '{print $9}')
        do
                cp -v -f ~/$entry ~/backup
        done


5. Write a script called mymail using for utility to send a mail to all users in the system. Note: write the mail body in a file called mtemplate.

    http://etutorials.org/Linux+systems/red+hat+linux+bible+fedora+enterprise+edition/Part+III+Administering+Red+Hat+Linux/Chapter+11+Setting+Up+and+Supporting+Users/Sending+Mail+to+All+Users/

        # First, check for the existence of mtemplate and email subject

        # Loop through every login name, but skip the first 17 accounts
        for user in $(awk -F: '{ print $1 }' /etc/passwd | tail +17)
        do
            # Mail the file
            echo Mailing to $user
            mail -s "$subject" $user < "$(cat mtemplate)"
        done

6. Write a script called chkmail to check for new mails every 10 seconds. Note: mails are saved in /var/mail/username.

        !# /bin/bash

        while true
        do
            sleep 10
            # check for the existance of more than one entry (the folder itself)
            # in mail folder
            num=$(find /var/mail/karim 2> /dev/null | wc -l)
            if [ $num -gt 1 ]; then
                echo "You've got mail"
            fi


7. Create the following menu:
	a. Press 1 to ls
	b. Press 2 to ls –a
	c. Press 3 to exit
Using select utility then while utility.

8. Write a script called myarr that ask a user how many elements he wants to enter in an array, fill the array and then print it.

9. Write a script called myavg that calculate average of all numbers entered by a user. Note: use arrays

