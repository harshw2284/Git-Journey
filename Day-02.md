# 📘 Git Learning – Day 02 - Git Branching & Working with GitHub

## 🎯 Objective

> Writing what I learned today in 1–2 lines

> Understanding Branching and Github

---

## 📝 Tasks Completed

### ✅ Task 1: <Branching Commands>

**List all branches in your repo:**

```bash
git branch
```

**Create a new branch**

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

### ✅ Task 2: <Push to GitHub>

**Pushes your main branch to GitHub**

```bash
git push origin main
```

**Push all branches**

```bash
git push --all
```

---

### ✅ Task 3: <Stage and Commit>

**Fetches + merges latest changes from GitHub into your current branch**

```bash
git pull origin main
```

**Pull all branches**

```bash
git pull --all
```

**Show commit history**

```bash
git log
git log --oneline
```

*git pull vs git fetch
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


## 💡 Key Learnings

*  ".git/" : it stores all the information Git needs to track your project.
It contains :

Commits history (all versions of your project)
Branches & HEAD (current branch info)
Staging area (index)
Configuration settings

* If you delete the .git folder, your project will no longer be a Git repository.

* git add vs git commit

    git add : Moves changes to the staging area (prepares files for commit)

    git commit : Saves the staged changes permanently in Git history

* Working Directory vs Staging Area vs Repository

    Working Directory : Where you write and modify your files

    Staging Area (Index) : Where you prepare files using git add before committing

    Repository : Where all committed changes are permanently stored

* Staging Area (Why it exists)
    The staging area lets you select and organize changes before committing.

    👉 What it does:
    Allows you to choose specific files or parts of changes
    Helps create clean and meaningful commits

    👉 Why not commit directly?
    Without staging, all changes would be committed at once
    No control over what goes into a commit

---

