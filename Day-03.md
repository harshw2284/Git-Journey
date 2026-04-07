# 📘 Git Learning – Day 03 - Advanced Git: Merge, Rebase, Stash & Cherry Pick

## 🎯 Objective

> Writing what I learned today in 1–2 lines

> Understanding Merge, Rebase, Stash & Cherry Pick

---

## 📝 Tasks Completed

### ✅ Task 1: Git Merge — Hands-On

**Combine changes from one branch into another branch.**

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

---

### ✅ Task 2: Git Rebase — Hands-On

**Move your branch's commits to start from a different (usually newer) point in history.**

```bash
git rebase <branch-name>
```

**Example :** 

```bash
git checkout feature
git rebase main
```

👉 This means:

Take commits from feature

Reapply them on top of latest main

---

### ✅ Task 3: Squash Commit vs Merge Commit

**1. A squash commit means combining multiple commits into a single commit.**

**👉 In simple words:**

**Instead of many small commits, you turn them into one clean commit**

```bash
git rebase -i HEAD~4
```

**2. git merge --squash is used to combine all commits from a branch into ONE commit while merging.**

**👉 In simple words:**

**It takes all changes from another branch and adds them as a single commit (no merge history)**

```bash
git merge --squash <branch-name>
```
  
---

### ✅ Task 4: Git Stash — Hands-On

**1. git stash temporarily saves your uncommitted changes and cleans your working directory.**

```bash
git stash
```

**2. git stash pop restores your stashed changes and removes them from stash list**
```bash
git stash pop
```

---


### ✅ Task 5: Cherry Picking

**git cherry-pick is used to pick a specific commit from one branch and apply it to another branch.**
```bash
git cherry-pick <commit-hash>
```

**Example :** 

```bash
git checkout main
git cherry-pick a1b2c3d
```

**👉 This means:**

**Takes commit a1b2c3d from another branch**

**Applies it to main**


<!-- ## 💡 Key Learnings
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
-->
---

# QnA
## 1.What is a fast-forward merge? When does Git create a merge commit instead?

   A fast-forward merge happens when there is no divergence between branches.
The target branch has not moved forward since you created your feature branch.

Git creates a merge commit when branches have diverged.
Both branches have new commits after branching.
   
## 2.What is a merge conflict?
   
   A merge conflict happens when Git cannot automatically decide how to combine changes from two branches. Two branches changed the same part(line) of a file, and Git is confused about which version to keep

## 3. What does rebase actually do to your commits? Why should you never rebase commits that have been pushed and shared with others?

   * Rebase rewrites your commit history by taking your commits and replaying them on top of another branch.
   
   * you should never rebase commits that have been pushed and shared with others,
Because it breaks history for others
  
## 4. When would you use rebase vs merge?
   * Use rebase when: You want a clean, linear history

   * Use merge when: You want to preserve history exactly as it happened
     
## 5. What does squash merging do? When would you use squash merge vs regular merge?
  A squash merge takes all commits from a branch and combines them into one single commit before merging.

   * Use squash merge when:
Your feature branch has many small/dirty commits
“fix typo”
“update again”
“final final fix”
You want clean project history
Working on small features or bug fixes

   * Use regular merge when:
You want to preserve detailed history
Working on large features
Important to track each commit (debugging, auditing)

## 6. What is the trade-off of squashing?
You gain a clean history, but you lose detailed history.

   * What you gain (why people use it)
Clean, readable commit history
One meaningful commit per feature

  * What you loose : You can’t see individual steps anymore

## 7. What is the difference between git stash pop and git stash apply? When would you use stash in a real-world workflow?

Both commands bring back your stashed changes, but there’s one crucial difference:

* Core Difference
git stash apply → restores changes but keeps the stash
git stash pop → restores changes and deletes the stash

* you use stash in a real-world workflow when you need to temporarily save unfinished work without committing it. like when you are workung and a bug comes.

## 8. What does cherry-pick do? When would you use cherry-pick in a real project? What can go wrong with cherry-picking?

Cherry-pick copies a specific commit from one branch and applies it onto another branch.
Instead of merging the whole branch, you pick just one (or a few) commits.

Use Cherry picking when : 
* Hotfix from another branch : You fixed a bug in develop, but need it in main immediately
* Selecting only useful commits
* Bringing back a lost or old commit
* Applying same fix across multiple branches

What can go wrong with cherry-picking :
* Merge conflicts
* Broken context : A commit might depend on previous commits
* Messy history in teams
* Duplicate commits : Same change but Different commit IDs

