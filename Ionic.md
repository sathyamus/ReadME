
#### Angular & Ionic

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
https://github.com/sass/node-sass/blob/master/TROUBLESHOOTING.md \
https://github.com/sass/node-sass#binary-configuration-parameters


------------------------



Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\SN>node -v
v10.16.3

C:\Users\SN>npm -v
6.9.0

C:\Users\SN>ng --version

     _                      _                 ____ _     ___
    / \   _ __   __ _ _   _| | __ _ _ __     / ___| |   |_ _|
   / ? \ | '_ \ / _` | | | | |/ _` | '__|   | |   | |    | |
  / ___ \| | | | (_| | |_| | | (_| | |      | |___| |___ | |
 /_/   \_\_| |_|\__, |\__,_|_|\__,_|_|       \____|_____|___|
                |___/


Angular CLI: 8.3.12
Node: 10.16.3
OS: win32 x64
Angular:
...

Package                      Version
------------------------------------------------------
@angular-devkit/architect    0.803.12
@angular-devkit/core         8.3.12
@angular-devkit/schematics   8.3.12
@schematics/angular          8.3.12
@schematics/update           0.803.12
rxjs                         6.4.0


C:\Users\SN>

C:\Users\SN>ionic --version
5.4.15


C:\Users\SN>ionic --verbose
  ionic:lib Terminal info: { ci: false, shell: 'C:\\Windows\\system32\\cmd.exe', tty: true, windows: true } +0ms
  ionic:lib CLI global options: { _: [], help: null, h: null, verbose: true, quiet: null, interactive: true, color: true, confirm: null, json: null, project: null, '--':

  ionic Context: { binPath: 'E:\\InstalledApps\\node-v10.16.3-win-x64\\node_modules\\ionic\\bin\\ionic', libPath: 'E:\\InstalledApps\\node-v10.16.3-win-x64\\node_modules\
xecPath: 'C:\\Users\\SN', version: '5.4.15' } +0ms
  ionic:lib:telemetry Sending telemetry for command: 'ionic help' [] +0ms


   _             _
  (_) ___  _ __ (_) ___
  | |/ _ \| '_ \| |/ __|
  | | (_) | | | | | (__
  |_|\___/|_| |_|_|\___| CLI 5.4.15


  Usage:

    $ ionic <command> [<args>] [--help] [--verbose] [--quiet] [--no-interactive] [--no-color] [--confirm] [options]

  Global Commands:

    completion ...................... (experimental) Enables tab-completion for Ionic CLI commands.
    config <subcommand> ............. Manage CLI and project config values (subcommands: get, set, unset)
    docs ............................ Open the Ionic documentation website
    info ............................ Print project, system, and environment information
    init ............................ (beta) Initialize existing projects with Ionic
    login ........................... Log in to Ionic
    logout .......................... Log out of Ionic
    signup .......................... Create an Ionic account
    ssh <subcommand> ................ Commands for configuring SSH keys (subcommands: add, delete, generate, list,
                                      setup, use)
    start ........................... Create a new project

  Project Commands:

    You are not in a project directory.


C:\Users\SN>



npm install -g @angular/cli@latest
npm install -g cordova
npm install -g ionic
npm install node-sass

+ @angular-devkit/build-angular@0.900.3
added 998 packages from 531 contributors in 506.926s

npm install --save-dev @angular-devkit/build-angular

+ @angular-devkit/build-angular@0.13.9
added 817 packages from 507 contributors and audited 20714 packages in 561.887s
found 7 vulnerabilities (2 low, 3 moderate, 2 high)
  run `npm audit fix` to fix them, or `npm audit` for details
  
npm install

ng update

and finally

npm update

