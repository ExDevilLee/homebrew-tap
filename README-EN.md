# ExDevilLee Homebrew Tap

[简体中文](README.md)

This tap provides Homebrew distribution for ExDevilLee projects.

## Install Codex ThreadBeacon

```bash
brew install --cask ExDevilLee/tap/threadbeacon
```

ThreadBeacon requires macOS 14 or later and supports Apple Silicon and Intel Macs.

The current build is an ad-hoc signed, unnotarized technical preview. Homebrew downloads,
verifies, and installs the app; it does not bypass Gatekeeper. If the first launch shows
**“ThreadBeacon” Not Opened** with only **Move to Trash** and **Done**:

1. Select **Done**, not **Move to Trash**.
2. In Finder's **Applications** folder, Control-click `ThreadBeacon.app` and select **Open**.
3. If it is still blocked, open **System Settings > Privacy & Security**, find the ThreadBeacon
   notice, and select **Open Anyway**.

See the
[ThreadBeacon installation guide](https://github.com/ExDevilLee/codex-threadbeacon-macos#download-and-install)
for details. Do not disable Gatekeeper or use untrusted commands to remove quarantine attributes.

## Upgrade

```bash
brew update
brew upgrade --cask threadbeacon
```

## Uninstall

Remove only the app and keep user settings:

```bash
brew uninstall --cask threadbeacon
```

Also remove ThreadBeacon preferences and auto-recovery logs:

```bash
brew uninstall --zap --cask threadbeacon
```

## Maintenance

The cask pins the ThreadBeacon GitHub Release version, download URL, and SHA-256. Verify the
Release artifact before updating `Casks/threadbeacon.rb`, and require CI to pass. Never point
an existing version at different binary content.

- [ThreadBeacon project](https://github.com/ExDevilLee/codex-threadbeacon-macos)
- [ThreadBeacon Releases](https://github.com/ExDevilLee/codex-threadbeacon-macos/releases)
- [Issue tracker](https://github.com/ExDevilLee/codex-threadbeacon-macos/issues)

## License

[MIT](LICENSE)
