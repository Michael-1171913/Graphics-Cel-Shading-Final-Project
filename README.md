# Graphics-Cel-Shading-Final-Project

## How to use git/github

### To clone the project

Navigate to a folder in git bash and type
```console
git clone https://github.com/Michael-1171913/Graphics-Cel-Shading-Final-Project.git
```

### To create a new branch and go to it

Always base your branch off the main branch,
run this in git bash before creating a new branch
```console
git checkout main
git pull
```

For example, to create a new branch 'my-branch-name' and go to it
```console
git checkout -b my-branch-name
```

In git bash to the left of your cursor it'll show you what branch you're on, ex.
```console
michael.leonard@JOYCE101-06 MINGW64 /c/Users/michael.leonard/Desktop/Graphics Cel Shading Final Project (main)
                                                                                                          ^
                                                                                                          |
```

### To go to a different branch

For example, to go to branch 'main'
```console
git checkout main
```

### To upload your code to github

```console
git add .
git commit -m "commit message"
git push
```

It might say "To push the current branch and set the remote as upstream, use"
```console
git push --set-upstream origin name-of-your-branch-here
```

In which case, just copy and run that command.

### To create a pull request

Go to github after pushing to your branch, it'll say
```
name-of-your-branch-here had recent pushes less than a minute ago
```
Just click **Compare & pull request**, then **Create pull request**