
#### Angular

C:\Users\SN>node -v \
v8.9.4
\
C:\Users\SN>npm -v \
5.6.0 
\

```sh
npm install -g @angular/cli
```

```sh
npm config ls

; cli configs
metrics-registry = "https://registry.npmjs.org/"
scope = ""
user-agent = "npm/5.6.0 node/v8.9.4 win32 x64"

; node bin location = E:\InstalledApps\node-v8.9.4-win-x64\node.exe
; cwd = C:\Users\SN
; HOME = C:\Users\SN
; "npm config ls -l" to show all defaults.

```

Troubleshooting Angular packages(Cleaning cache)
```sh
rm -rf node_modules
rm package-lock.json
npm cache clean
npm install
```

Troubleshooting node-sass \
https://github.com/sass/node-sass/blob/master/TROUBLESHOOTING.md



