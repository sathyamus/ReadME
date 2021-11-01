

net use [drive letter] \\wiredstorage62333.file.core.windows.net\wired-brain-files /u:wiredstorage62333 5DIVZwONyHdrmIirI7nwclDqh+sW1nS98nSD2kngMmMLOgmRC9VPYTggFsIJcD/KAl9+ns5/f5bxEtwCHVSdUQ==

https://wiredstorage62333.blob.core.windows.net/images?sv=2020-08-04&st=2021-10-31T13%3A43%3A21Z&se=2021-11-01T13%3A43%3A21Z&sr=c&sp=rl&sig=qZkDlIgh6NiPgCiKrPm9kbul08uFd%2B0%2BzUkgdpRgyzk%3D

azcopy list "https://wiredstorage62333.blob.core.windows.net/images?sv=2020-08-04&st=2021-10-31T13%3A43%3A21Z&se=2021-11-01T13%3A43%3A21Z&sr=c&sp=rl&sig=qZkDlIgh6NiPgCiKrPm9kbul08uFd%2B0%2BzUkgdpRgyzk%3D"


https://wiredstorage62333.blob.core.windows.net/internal-files?sv=2020-08-04&st=2021-10-31T13%3A56%3A42Z&se=2021-11-01T13%3A56%3A42Z&sr=c&sp=racwdl&sig=tdPIFDU97Ik0yHJp1o3ubtQp1X6%2BTCD6wpg58WNQ%2FCI%3D

C:\Users\storagelab>net use w: \\wiredstorage62333.file.core.windows.net\wired-brain-files /u:wiredstorage62333 5DIVZwONyHdrmIirI7nwclDqh+sW1nS98nSD2kngMmMLOgmRC9VPYTggFsIJcD/KAl9+ns5/f5bxEtwCHVSdUQ==
The command completed successfully.

cd c:\Users\storagelab\azcopy_windows


azcopy copy "<filepath>" "<URL>"
azcopy copy "c:\storagelab\5-azcopy\*" "<URL>" --include-pattern "in*.txt;"
azcopy copy "<URL>" c:\users\storagelab\downloads --recursive

azcopy sync "<URL>" "c:\Users\storagelab\Downloads"
azcopy sync "<URL>" "c:\Users\storagelab\Downloads" --delete-destination true



Job 24656762-7ca9-8640-460d-76eee4978e82 has started
Log file is located at: C:\Users\storagelab\.azcopy\24656762-7ca9-8640-460d-76eee4978e82.log

INFO: Deleting extra file: desktop.ini
INFO: Deleting extra file: internal-files/coffee-1.png
INFO: Deleting extra file: StorageExplorer.exe
INFO: Deleting extra file: internal-files/business-plan2.pdf
INFO: Deleting extra file: internal-files/readme.txt
INFO: Deleting extra file: internal-files/business-plan.pdf
INFO: Deleting extra file: internal-files/coffee-sathya2.png
INFO: Deleting extra file: business-plan2.pdf
INFO: Deleting extra file: azcopy_windows_amd64_10.13.0.zip
0 Files Scanned at Source, 13 Files Scanned at Destination

Job 24656762-7ca9-8640-460d-76eee4978e82 Summary
Files Scanned at Source: 4
Files Scanned at Destination: 13
Elapsed Time (Minutes): 0.0335
Number of Copy Transfers for Files: 0
Number of Copy Transfers for Folder Properties: 0
Total Number Of Copy Transfers: 0
Number of Copy Transfers Completed: 0
Number of Copy Transfers Failed: 0
Number of Deletions at Destination: 9
Total Number of Bytes Transferred: 0
Total Number of Bytes Enumerated: 0
Final Job Status: Completed

