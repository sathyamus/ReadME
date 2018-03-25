# Change structure of project folder with Git history

### Current folder structure:

     AngularApp/
         .git
         e2e/
         src/api
         src/app
         src/assets
         src/environments
         .angular-cli.json
         tsconfig.json
         package.json
         ...

### Target folder structure:

     AngularApp/
         .git
         front
              e2e/
              src/api
              src/app
              src/assets
              src/environments
              .angular-cli.json
              tsconfig.json
              package.json
              ...

## Move files with git and keep file history

1. Be sure you don't have files un-committed, if not commit them before next step.

    `git status`

2. Navigate to AngularApp directory and create `front` subfolder

    `mkdir front`

3. Move files with `git mv` except `front` subfolder to avoid errors

     `for file in $(ls | grep -v 'front'); do git mv $file front; done;`

4. Move specific files like package.json etc...

     `git mv package.json front/`

5. Commit changes

     `git commit -m 'Moved files to front/'`

6. That's all !

     `git log -M summary`


## To see file history of moved files
### In Bash:
`git log --follow`
