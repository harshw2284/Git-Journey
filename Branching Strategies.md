# Git Branching Strategies

> Personal notes on the three main Git branching models — how they work, when to use them, and which one fits which team.

---

## Table of Contents

- [1. GitFlow](#1-gitflow)
- [2. GitHub Flow](#2-github-flow)
- [3. Trunk-Based Development](#3-trunk-based-development)
- [4. Answers](#4-answers)

---

## 1. GitFlow

### How it works

GitFlow uses **two long-lived branches** — `main` (production-ready) and `develop` (integration) — plus three types of short-lived supporting branches:

| Branch type | Branches off | Merges back into |
|---|---|---|
| `feature/*` | `develop` | `develop` |
| `release/*` | `develop` | `main` + `develop` |
| `hotfix/*` | `main` | `main` + `develop` |

When a feature is complete it merges into `develop`. When enough features are ready, a `release` branch is cut for final QA and bug fixes only. Once approved, it merges into `main` (tagged) and back into `develop`. Critical production bugs get a `hotfix` branch off `main`.

### Flow diagram

```
main     ──────●──────────────────────────────●────────●
               │                              ↑        ↑
hotfix         └─── hotfix/login-fix ─────────┘        │
                                                       │
develop  ──────────────────●────●──────────────●───────●
                           │    ↑    │          ↑
feature                    └────┘    └── release/1.2 ──↑
```

### When / where it's used

- Enterprise software with scheduled release cycles
- Mobile apps (App Store review cycles force versioned releases)
- Open-source libraries that maintain multiple major versions
- Teams with dedicated QA phases before shipping

### Pros and Cons

**Pros**
- Clear structure — every dev knows exactly where each type of work goes
- Supports multiple active versions in parallel
- Hotfixes never carry unfinished feature work into production
- Audit-friendly, tagged release history

**Cons**
- Heavy overhead for small or fast-moving teams
- Long-lived feature branches create painful merge conflicts
- Slow release cycles by design
- Overkill if you deploy continuously

---

## 2. GitHub Flow

### How it works

Everything lives on `main`. One golden rule: **`main` is always deployable.**

1. Branch off `main` with a descriptive name (`feature/user-auth`, `fix/null-check`)
2. Commit your changes and push
3. Open a Pull Request for review
4. Merge the PR → CI/CD auto-deploys to production
5. Delete the branch

No `develop`. No release branches. No version bumps. Merging IS releasing.

### Flow diagram

```
main    ─────●──────────────────●──────────────●──────→
             │                  ↑              ↑
feature      └── feature/auth ──┘              │
                                               │
feature                          └── fix/bug ──┘
```

### When / where it's used

- SaaS products with continuous deployment pipelines
- Startups where speed of iteration matters most
- Small to mid-sized web teams
- Any team that deploys multiple times per day

### Pros and Cons

**Pros**
- Extremely simple — one rule covers everything
- Fast feedback loop from code to production
- Encourages a healthy PR review culture
- Easy to onboard new contributors

**Cons**
- No built-in support for versioned releases
- Risky if CI/CD is unreliable or test coverage is weak
- Large incomplete features need feature flags to stay hidden
- Hard to manage simultaneous release versions

---

## 3. Trunk-Based Development

### How it works

All developers integrate **directly into `main` (the trunk)** multiple times per day. Branches, if used, are extremely short-lived (< 1 day). Incomplete features are hidden behind **feature flags**, not isolated on branches.

Key requirements:
- Fast, reliable CI (must pass in minutes)
- Feature flags for hiding work-in-progress
- Small, atomic, always-green commits
- High test coverage and code review discipline

### Flow diagram

```
trunk  ──●──●──●──●──●──●──●──●──●──●──●──●──→
         ↑     ↑  ↑           ↑        ↑
        dev1  dev2 short      dev3    release
                   branch              cut
                   (max 1d)            here
```

### When / where it's used

- Elite engineering orgs (Google, Meta, Uber use this at scale)
- Microservices architectures where each service deploys independently
- Teams with mature DevOps practices and fast pipelines
- Environments where CI/CD is the core delivery mechanism

### Pros and Cons

**Pros**
- Zero long-lived branches = zero merge conflicts
- Fastest possible CI feedback (always integrating)
- Forces small, reviewable, atomic commits
- True continuous integration as it was originally defined

**Cons**
- Requires mature CI/CD infrastructure and feature flag tooling
- Broken trunk blocks everyone — high discipline needed
- Hard cultural shift for teams used to long-lived branches
- Not practical without strong test coverage

---

## 4. Answers

### Which strategy for a startup shipping fast?

**→ GitHub Flow**

One rule, zero overhead. `main` is always production-ready. Developers branch, PR, merge, and ship — often multiple times a day. No release managers, no hotfix branches, no `develop` drift. Plug in a CD pipeline and every merged PR deploys automatically.

---

### Which strategy for a large team with scheduled releases?

**→ GitFlow**

Scheduled releases need a controlled `release` branch for a QA freeze — only bug fixes go in, no new features. Multiple features can be in-flight on `develop` while the release is hardened. Hotfixes off `main` stay clean and don't accidentally carry half-finished work into production. The overhead is justified when you ship on a calendar.

---

### Which strategy does a popular open-source project use?

**→ React (`facebook/react`) uses GitHub Flow**

Day-to-day development targets `main`. All contributors open PRs against `main`. Short-lived release branches (e.g. `0.x-stable`) are cut only for stabilization near a release, then abandoned. There is no permanent `develop` branch.

Verify it yourself: [github.com/facebook/react/branches](https://github.com/facebook/react/branches)

---

## Quick Reference

| Strategy | Complexity | Release speed | Best for |
|---|---|---|---|
| GitFlow | High | Slow (by design) | Scheduled, versioned releases |
| GitHub Flow | Low | Fast | SaaS, startups, web apps |
| Trunk-Based | Medium* | Fastest | Elite teams, CI/CD-native orgs |

> \* Trunk-Based is simple in *process* but demands high engineering maturity.

---

## Key Takeaway

> If you deploy **multiple times a day** → GitFlow is fighting you.  
> If you ship **once a month with a QA phase** → Trunk-Based is asking too much too soon.  
> **GitHub Flow** is the safe default for most teams until you have a reason to deviate.

---

*Notes by Harsh | Git & DevOps study series*
