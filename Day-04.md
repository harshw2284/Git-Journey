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
|--------|----------------|---------------------|------------|
| soft | Keeps | Keeps | Re-edit commits |
| mixed | Clears staging | Keeps | Unstage changes |
| hard | Clears | Deletes | Remove everything |

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



---

## 💡 Key Learnings
**git reflog is your safety net — it shows everything Git has done, even after a hard reset**
```bash
git reflog
```

**Reset vs Revert — Summary**

| Feature                          | `git reset`                                      | `git revert`                                      |
|----------------------------------|--------------------------------------------------|---------------------------------------------------|
| **What it does**                | Moves HEAD and rewrites commit history           | Creates a new commit that undoes changes         |
| **Removes commit from history?**| ✅ Yes (rewrites history)                        | ❌ No (keeps history intact)                     |
| **Safe for shared/pushed branches?** | ❌ No (can break collaboration)              | ✅ Yes (safe for public/shared branches)         |
| **When to use**                 | Local changes, fixing commits before pushing     | Undo changes in already pushed/shared commits    |

---

# QnA
## 1.How is git revert different from git reset?

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
