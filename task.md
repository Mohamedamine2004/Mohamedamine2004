# 📋 Task: Fix Broken Images & Header Banner (Local Preparation)

## 🔍 Root Cause Analysis
1. **Header Banner Timeout**: `capsule-render.vercel.app` takes ~10.5 seconds to respond. GitHub's proxy (Camo) times out after 4 seconds and displays a broken image icon.
2. **Companion Image Failure**: External Giphy links (`media.giphy.com`) are frequently blocked or throttled by GitHub Camo proxy.
3. **Badge URL Encoding**: Emojis in Shields.io URLs (`🎓`, `🚀`, `🎧`) trigger encoding errors unless properly encoded.
4. **Safety Rule**: **NO changes pushed to GitHub without explicit user permission.** All fixes prepared and verified locally first.

---

## 📌 Milestones

- [x] **Milestone 1**: Design a custom, self-hosted SVG header banner (`assets/header.svg`) — zero server dependency, instant load (<50ms).
- [x] **Milestone 2**: Design a clean, matching self-hosted SVG footer banner (`assets/footer.svg`).
- [x] **Milestone 3**: Fix companion image paths to use the fast, local repository assets (`assets/anime-coder.gif` & `assets/cat-coding.gif`).
- [x] **Milestone 4**: Fix and URL-encode all badge links so no symbols crash.
- [x] **Milestone 5**: Test and verify locally in `preview.html` using a local browser check.
- [ ] **Milestone 6**: Present the solution to the user and request permission before touching GitHub.
