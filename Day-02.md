# 📘 Git Learning – Day 02 - Git Branching & Working with GitHub

## 🎯 Objective

> Writing what I learned today in 1–2 lines

> Understanding Branching and Github

---

## 📝 Tasks Completed

### ✅ Task 1: Branching Commands

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

2.




---

## QnA
1. What is a branch in Git? Why do we use branches instead of committing everything to main?

   A branch in Git is a separate line of development.
   It allows you to work on new features, fixes, or experiments without affecting the main codebase.
   By default, Git has a main branch (usually main or master)
   You can create new branches to work independently

