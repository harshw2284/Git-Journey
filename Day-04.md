# 📘 Git Learning – Day 04 - Git Reset vs Revert & Branching Strategies

## 🎯 Objective

> Writing what I learned today in 1–2 lines

> Understanding Git Reset vs Revert & Branching Strategies

---

## 📝 Tasks Completed

### ✅ Task 1: Git Reset — Hands-On

**git reset is used to move HEAD to a previous commit and optionally modify staging and working directory.**

```bash
git reset --<mode> <HEAD~?>
git reset --<mode> <commit-id>
```

**1. Git reset --soft**

**Moves HEAD but keeps all changes staged**

```bash
git reset --soft HEAD~1
git reset --soft f2c2254
```

**2. git reset --mixed (DEFAULT)**

**Moves HEAD and unstages changes, but keeps files**

```bash
git reset --mixed HEAD~1
git reset --mixed f2c2254
```

**3. git reset --hard ⚠️**

**Moves HEAD and deletes everything**

```bash
git reset --hard HEAD~1
git reset --hard f2c2254
```

---

**Comparision Table**

| `Mode` | `Staging Area` | `Working Directory` | `Use Case` |
|-------|-----------|---------|
| soft | Keeps | Keeps | Re-edit commits |
| mixed | Clears staging | Keeps | Unstage changes |
| hard | Clears | Deletes | Remove everything |

---









---

### ✅ Task 2: Git Revert — Hands-On

**git revert is used to undo a commit by creating a new commit.**

```bash
git revert <commit-hash>
```

**Example :** 

```bash
git revert a1b2c3d
```

👉 This means :

Keeps the old commit

Creates a new commit that reverses its changes

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

---

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
