cask "tiycode" do
  version "0.2.5"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "173d9509673c71bf3bd9074badc73593aceb8e3eaa760d45a3101c6b59d15cb6"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "516da9cf65c5c953e1d61c353ac6adb5836900c9fc922f2b29853ccacd23988a"
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
    "~/Library/Preferences/ai.tiy.tiycode.plist",
    "~/Library/Saved Application State/ai.tiy.tiycode.savedState",
  ]
end
