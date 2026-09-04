# homebrew-agentbarista

A Homebrew tap for [AgentBarista](https://agentbarista.com) — the macOS menu-bar app that keeps your
Mac awake while AI coding agents work, then lets it sleep when they finish.

## Install

```sh
brew tap zada5/agentbarista
brew trust zada5/agentbarista        # Homebrew requires this for any third-party tap
brew install --cask agentbarista
```

Without the `brew trust` line, Homebrew refuses with *"Refusing to load cask … from untrusted
tap"*. That is Homebrew's policy for every tap outside homebrew-core, not something specific to
this one — it wants you to have looked at the cask before running it. It is one file:
[`Casks/agentbarista.rb`](Casks/agentbarista.rb).

Already have AgentBarista in `/Applications` from a direct download? Add `--force` to the install
so Homebrew takes over managing it.

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
