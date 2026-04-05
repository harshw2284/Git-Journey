# 📘 Git Learning – Day 03 - Advanced Git: Merge, Rebase, Stash & Cherry Pick

## 🎯 Objective

> Writing what I learned today in 1–2 lines

> Understanding Merge, Rebase, Stash & Cherry Pick

---

## 📝 Tasks Completed

### ✅ Task 1: Git Merge — Hands-On

**1. Combine changes from one branch into another branch.**

```bash
git merge <branch-name>
```

**Example :** 

```bash
git checkout main
git merge feature-branch
```
This means:

Switch to main

Bring all changes from feature-branch into main

**2. Create a new branch**

```bash
git branch <branch name>
```

**Switch Branch**

```bash
git switch <branch-name>  
```

**Create a new branch and switch to it in a single command**

```bash
git checkout -b <branch-name>  
```

**Delete a branch**

```bash
git branch -d <branch-name>  
```

---

### ✅ Task 2: Push to GitHub

**Pushes your main branch to GitHub**

```bash
git push origin main
```

**Push all branches**

```bash
git push --all
```

---

### ✅ Task 3:Pull to GitHub

**Fetches + merges latest changes from GitHub into your current branch**

```bash
git pull origin main
```

**Pull all branches**

```bash
git pull --all
```

**git pull vs git fetch**

    git fetch → only downloads changes
    git pull → downloads and applies changes
      
---

### ✅ Task 4: <Clone vs Fork>

**Basic clone using https**

```bash
git clone https://github.com/username/repo.git
```
**Use: Downloads the repository to your local system**

**Clone using SSH (recommended 🔥)**

```bash
git clone git@github.com:username/repo.git
```

**Clone vs Fork**
   
    Clone → copy repo to your local system
   
    Fork → copy repo to your GitHub account


## 💡 Key Learnings
**1. To show changes you made but haven’t added (git add) yet**
```bash
git diff
```

**2. To show all remote repositories linked to your project along with their URLs.(like origin, upstream)**
```bash
git remote -v
```

**3. Updates the URL of an existing remote.**
```bash
git remote set-url <name> <url>
git remote set-url origin https://github.com/newuser/repo.git
```

**4. Adds a new remote repository [origin is just a name (can be anything)]**

*Use: Links your local repo to a remote repo (like GitHub)*
```bash
git remote add <name> <url>
git remote add origin https://github.com/user/repo.git
```

---

# QnA
## 1. What is a branch in Git? Why do we use branches instead of committing everything to main?

   A branch in Git is a separate line of development.
   It allows you to work on new features, fixes, or experiments without affecting the main codebase.
   By default, Git has a main branch (usually main or master)
   You can create new branches to work independently
   
## 2. What is HEAD in Git? What happens to your files when you switch branches?
   
   In Git, HEAD is a pointer to the current commit you are working on.

   It usually points to the latest commit of the current branch.

   When you switch branches using git checkout or git switch, Git updates your working directory to match that branch.

## 3. What is the difference between origin and upstream?

   * origin is the default remote name for the repository you cloned from.

   It usually points to your own copy of the repo (especially on GitHub)
   
   You push and pull changes from here.

   * upstream refers to the original/main repository you forked from.

   Used to keep your repo updated with the original project.
## 4. What is the difference between git fetch and git pull?
   * git fetch downloads changes from the remote repo but does NOT apply them to your working files.

   Updates your local copy of remote branches
   
   Safe: no automatic changes to your code

   * git pull downloads + applies changes to your current branch.
## 5. When would you clone vs fork? After forking, how do you keep your fork in sync with the original repo?
   * Use clone when:

   You just want a local copy of a repository
   
   You have direct access (your own repo or team repo)
   
   You plan to work and push directly

   * Use fork when:

   You don’t have write access to the original repo
   
   You want to contribute to open-source projects
   
   You need your own independent copy on GitHub
