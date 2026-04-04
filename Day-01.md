# 📘 Git Learning Log – Day 01 - Introduction To Git

## 🎯 Objective

> Writing what I learned today in 1–2 lines
> Understanding Git Basics.

---

## 📝 Tasks Completed

### ✅ Task 1: <Install and Configure Git>

**Verify Git is installed on your machine:**

```bash
git --version
```

**Use: To check git version on your local**

**Set up your Git identity — name and email**

```bash
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```

**Verify your configuration**

```bash
git config --global user.name 
git config --global user.email 
```

---

### ✅ Task 2: <Creating our Git Project>

**Initialize Folder as a Git repository**

```bash
git init
```

**Check the status**

```bash
git status
```
**Use: Shows the current state of the repository — which files are modified, staged, or untracked, and what is ready to commit.**

---

### ✅ Task 3: <Stage and Commit>

**Staging the file**

```bash
git add <file-name>
```

**Commit the file**

```bash
git commit -m "<message>"
```

**Show commit history**

```bash
git log
git log --oneline
```

---

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

