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
**1. git reflog is your safety net — it shows everything Git has done, even after a hard reset**
```bash
git reflog
```

**2. Reset vs Revert — Summary**

| Feature                          | `git reset`                                      | `git revert`                                      |
|----------------------------------|--------------------------------------------------|---------------------------------------------------|
| **What it does**                | Moves HEAD and rewrites commit history           | Creates a new commit that undoes changes         |
| **Removes commit from history?**| ✅ Yes (rewrites history)                        | ❌ No (keeps history intact)                     |
| **Safe for shared/pushed branches?** | ❌ No (can break collaboration)              | ✅ Yes (safe for public/shared branches)         |
| **When to use**                 | Local changes, fixing commits before pushing     | Undo changes in already pushed/shared commits    |

---

# QnA
## 1.How is git revert different from git reset?
  *git reset moves your branch pointer (HEAD) to a previous commit
  
  Effect: Deletes commits from history (rewrites history)

   use case:

   Fix mistakes before pushing
   
   Clean up local commit history

  *git revert creates a new commit that undoes a previous commit
  
   Effect: Keeps history intact (no deletion)

   use case:

   Undo changes in shared/public branches
   
   When collaboration is involved
 
   
## 2. Should you ever use git reset on commits that are already pushed?
   
  You generally should not use git reset on commits that have already been pushed to a shared
  
  repository because it rewrites the commit history, which can cause serious issues for other 
  
  collaborators. When you reset and then force push, the remote branch history changes, and anyone 
  
  who has already pulled the previous commits may face conflicts, duplicate commits, or even lose 
  
  their work. This makes collaboration confusing and error-prone.

