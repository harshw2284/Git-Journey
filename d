# Git Reset & Revert — Q&A Notes

---

**Q: What does `git reset` do?**  
A: Moves HEAD to a previous commit, undoing commits locally.

---

**Q: What is the difference between `--soft`, `--mixed`, and `--hard`?**  
A:
- `--soft` → Undo commit, keep changes **staged**
- `--mixed` → Undo commit, keep changes but **unstaged** (default)
- `--hard` → Undo commit, **delete changes permanently**

---

**Q: Which reset mode is dangerous and why?**  
A: `--hard` — it wipes your working directory and staging area. Changes are unrecoverable.

---

**Q: What does `git revert` do?**  
A: Creates a **new commit** that undoes a previous commit, without deleting history.

---

**Q: When should I use `revert` over `reset`?**  
A: When the commit is already **pushed to a shared/remote branch**. Revert is safe for teams; reset rewrites history and can break others' work.

---

**Q: What is the key difference between `reset` and `revert`?**  
A:
- `reset` = removes commits (rewrites history)
- `revert` = cancels a commit by adding a new one (preserves history)

---

**Q: Give a simple analogy for both.**  
A:
- `reset` → rip out the wrong page from a notebook
- `revert` → write a new page that cancels the mistake

---

**Q: What is the command to revert a specific commit?**  
A:
```bash
git revert <commit-hash>
```

---

**Q: How do I undo the last commit but keep my changes staged?**  
A:
```bash
git reset --soft HEAD~1
```

---

**Q: How do I undo the last commit and completely discard changes?**  
A:
```bash
git reset --hard HEAD~1
```
