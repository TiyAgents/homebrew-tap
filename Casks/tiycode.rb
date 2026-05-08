cask "tiycode" do
  version "0.3.13"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "9a3b04c334678eba4fdb5a7c572854d17f3c98f93542fb0732c414468d383e06"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "d47553e67e2bb5ce894adafb3cce081625124a22cb42fec5f3252326512a7096"
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
