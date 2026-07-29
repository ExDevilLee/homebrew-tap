cask "threadbeacon" do
  version "0.1.12"
  sha256 "88d5e29656d115a81d17b081f795aa114fb19e84406a2c5b1d4e982c2014ed9b"

  url "https://github.com/ExDevilLee/codex-threadbeacon-macos/releases/download/v#{version}/ThreadBeacon-v#{version}-macos-universal.zip"
  name "Codex ThreadBeacon"
  desc "Monitor Codex task status in a compact desktop window"
  homepage "https://github.com/ExDevilLee/codex-threadbeacon-macos"

  depends_on macos: :sonoma

  app "ThreadBeacon.app"

  zap trash: [
    "~/Library/Application Support/ThreadBeacon",
    "~/Library/Preferences/io.github.exdevillee.threadbeacon.macos.plist",
  ]

  caveats <<~EOS
    ThreadBeacon is currently an ad-hoc signed, unnotarized technical preview.
    If macOS shows "ThreadBeacon Not Opened" after the first launch:

      1. Choose Done, not Move to Trash.
      2. In Finder, Control-click /Applications/ThreadBeacon.app and choose Open.
      3. If it is still blocked, use System Settings > Privacy & Security > Open Anyway.

    Do not disable Gatekeeper or remove quarantine attributes with untrusted commands.
  EOS
end
