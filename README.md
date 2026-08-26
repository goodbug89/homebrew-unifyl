# Unifyl Homebrew Tap

[Unifyl](https://unifyl.app) — a keyboard-first, dual-pane file manager for
macOS with local-only AI.

## Install

```bash
brew install goodbug89/unifyl/unifyl
```

Recent Homebrew versions ask you to trust third-party taps once before
installing from them:

```bash
brew trust goodbug89/unifyl
```

Or in two steps:

```bash
brew tap goodbug89/unifyl
brew install --cask unifyl
```

Requires macOS 14 (Sonoma) or later. The app updates itself via Sparkle
(`auto_updates true`), so `brew upgrade` is rarely needed.

## What this installs

The notarized direct-distribution build from
[GitHub Releases](https://github.com/goodbug89/Unifyl.app/releases) — the same
DMG offered at [unifyl.app](https://unifyl.app), including the pieces the Mac
App Store build cannot bundle (ALZ extraction, terminal tools).

## Uninstall

```bash
brew uninstall --cask unifyl        # remove the app
brew uninstall --zap --cask unifyl  # also remove preferences and caches
```
