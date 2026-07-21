# ExDevilLee Homebrew Tap

[English](README-EN.md)

这个 Tap 提供 ExDevilLee 项目的 Homebrew 分发入口。

## 安装 Codex ThreadBeacon

```bash
brew install --cask ExDevilLee/tap/threadbeacon
```

ThreadBeacon 当前要求 macOS 14 或更高版本，支持 Apple Silicon 与 Intel Mac。

当前产物仍是 ad-hoc 签名、尚未经过 Apple 公证的技术预览版。Homebrew 只负责下载、校验并
安装 App，不会绕过 Gatekeeper。首次启动如果出现“ThreadBeacon 未打开”且只有“移到废纸篓”
和“完成”：

1. 点击“完成”，不要点击“移到废纸篓”。
2. 在 Finder 的“应用程序”中按住 Control 点击 `ThreadBeacon.app`，选择“打开”。
3. 如果仍被拦截，前往“系统设置 > 隐私与安全性”，找到 ThreadBeacon 对应提示并选择
   “仍要打开”。

详细说明见
[ThreadBeacon 安装说明](https://github.com/ExDevilLee/codex-threadbeacon-macos#%E4%B8%8B%E8%BD%BD%E4%B8%8E%E5%AE%89%E8%A3%85)。
不要关闭 Gatekeeper，也不要使用来源不明的 quarantine 清除命令。

## 升级

```bash
brew update
brew upgrade --cask threadbeacon
```

## 卸载

仅移除 App，保留用户设置：

```bash
brew uninstall --cask threadbeacon
```

同时清理 ThreadBeacon 偏好和自动恢复日志：

```bash
brew uninstall --zap --cask threadbeacon
```

## 维护说明

Cask 固定引用 ThreadBeacon GitHub Release 的版本、下载地址和 SHA-256。每次更新都应先验证
Release 产物，再更新 `Casks/threadbeacon.rb` 并通过 CI；不要让同一版本号指向不同二进制。

- [ThreadBeacon 项目](https://github.com/ExDevilLee/codex-threadbeacon-macos)
- [ThreadBeacon Releases](https://github.com/ExDevilLee/codex-threadbeacon-macos/releases)
- [问题反馈](https://github.com/ExDevilLee/codex-threadbeacon-macos/issues)

## License

[MIT](LICENSE)
