
#### Linux

`
mkdir dir1
cd test
mkdir -p dir1/dir2/dir3
cd ~ => Navigates to User Home directory

touch file1

rm file1
rm -r dir1
rm -rf dir2 => Force delete, no confirmation

nano myfirstfile.txt

echo "He walked into his exile" > ~/myfirstfile.txt

cp file1 file2

cp -r dir1 dir2

mv file2 file3

cat file1

more file1

tail -20 file1

head -20 file2

find . -name '*.txt' => find all the text files in the current directory
find / -name '*.txt' 

grep word file1 file2
grep -r word dir1
grep -i word file1 file2

wc -l

Permissions => 
    file / directory Owner Group Others
    -/d rwx rwx rwx
    chmod u+x file1
    chmod u-x file2
    4 is for Read, 2 is for Write and 1 is for Execute permission.

sudoedit => list of sudoers can be edited with this command.

chown => change the owner of a file 

chgrp => change the group of a file 

pstree, top, ps => find the information about all the processes

./startup.sh & => To run a program in the background

kill -9 processid => To kill any running process

jobs => list of jobs
fg jobid => To bring a process to foreground

nohup => To keep a process running in the background even if the shell has been disconnected
or
screen 

kill -9 1  => Shutdown the system, if you are root user

nano file2.sh

#!/bin/bash
name=linux
echo "Hello $name World"

chmod +x file2.sh

./file2.sh

echo $? => return value of the previous command, 0 if successful. Otherwise a non-zero error number

ln file3 link_to_file3
ln -s file3 link_to_file3

readlink -f /usr/bin/java

Chaining 
    ls -l file_ready && echo "File is ready" => print "File is ready" if file_ready file exists

    (ls -l file_ready && echo "File is ready") || echo "File is not ready"

Redirecting the output
    echo "Welcome" > hello.txt
    echo "Unix programming" >> hello.txt


which java


`
