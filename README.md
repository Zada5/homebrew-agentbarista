# homebrew-agentbarista

A Homebrew tap for [AgentBarista](https://agentbarista.com) — the macOS menu-bar app that keeps your
Mac awake while AI coding agents work, then lets it sleep when they finish.

## Install

```sh
brew tap zada5/agentbarista
brew install --cask agentbarista
```

## About

AgentBarista watches your AI coding agents (Claude Code, Cursor, Codex, Gemini CLI, Copilot CLI,
OpenCode, Zed, ChatGPT desktop, VS Code and more) and holds sleep off only while they are actually
working — not on a timer, and not forever.

- **Free 14-day trial.** The download is the full app, no credit card.
- **macOS 13 (Ventura) or newer.** Signed and notarized by Apple.
- Pricing and current terms: <https://agentbarista.com>

The app updates itself through Sparkle, so `auto_updates true` is set in the cask; `brew upgrade`
will not fight it.

## Notes

The cask installs the same signed, notarized DMG published at
`https://agentbarista.com/dl/`, and the checksum in the cask is the checksum of that file.
