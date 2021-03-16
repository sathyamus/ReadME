### Unzip in Linux
	unzip file1.zip 
	unzip file1.zip file2.zip 
	unzip '*.zip' 
	
### Zip in Linux
	zip file1.zip file1 file2 file3
	zip file1.zip file1 file2 file3 -9 (Best Compression)

Bash script and /bin/bash^M: bad interpreter: No such file or directory 

:set fileformat=unix
Finally save it

:x! or :wq!

### cURL GET
`
curl https://jsonplaceholder.typicode.com/users
curl https://www.boredapi.com/api/activity
curl -X GET https://api.exchangeratesapi.io/latest
curl -H "Accept: application/json" -H "Content-Type: application/json" https://api.frankfurter.app/currencies
`
### cURL POST
`
curl --data "param1=value1&param2=value2" http://hostname/resource
curl -X POST -d @filename http://hostname/resource
`

### ssh
`
ssh username@hostname
`


### sftp
`
sftp username@hostname
get *
quit
`

