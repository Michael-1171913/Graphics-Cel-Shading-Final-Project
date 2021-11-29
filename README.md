# Graphics-Cel-Shading-Final-Project

## How to use git/github

### To clone the project

Navigate to a folder in git bash and type
```c
git clone https://github.com/Michael-1171913/Graphics-Cel-Shading-Final-Project.git
```

### To create a new branch and go to it

Always base your branch off the main branch,
run this in git bash before creating a new branch
```
git checkout main
git pull
```

For example, to create a new branch 'name-of-your-branch-here' and go to it
```
git checkout -b name-of-your-branch-here
```

In git bash to the left of your cursor it'll show you what branch you're on, ex.
```
michael.leonard@JOYCE101-06 MINGW64 /c/Users/michael.leonard/Desktop/Graphics Cel Shading Final Project (name-of-your-branch-here)
                                                                                                          ^
                                                                                                          |
```

### To go to a different branch

For example, to go to branch 'main'
```
git checkout main
```

### To upload your code to github

```
git add .
git commit -m "commit message"
git push
```

It might say "To push the current branch and set the remote as upstream, use"
```
git push --set-upstream origin name-of-your-branch-here
```

In which case, just copy and run the command it gave you.

### To create a pull request

Go to github after pushing to your branch, it'll say
```
name-of-your-branch-here had recent pushes less than a minute ago
```
Just click **Compare & pull request**, then **Create pull request**