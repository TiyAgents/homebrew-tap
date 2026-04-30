cask "tiycode" do
  version "0.3.11"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "5c7e375a0e3486a288ed39eff8d7dbe1b23edc39d9e0771db2bd1c27518ff76b"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "17db8b807bc050c799cb3a1e084439456281cfd11791825c5040c77c8c6e19f2"
  end

  name "TiyCode"
  desc "Open-source, flexible, convenient cross-platform vibe-coding agent"
  homepage "https://tiy.ai"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TiyCode.app"

  zap trash: [
    "~/Library/Application Support/ai.tiy.tiycode",
    "~/Library/Caches/ai.tiy.tiycode",
    "~/Library/HTTPStorages/ai.tiy.tiycode",
    "~/Library/Logs/TiyAgents",
    "~/Library/Preferences/ai.tiy.tiycode.plist",
    "~/Library/Saved Application State/ai.tiy.tiycode.savedState",
    "~/Library/WebKit/ai.tiy.tiycode",
  ]
end
