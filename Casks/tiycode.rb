cask "tiycode" do
  version "0.3.9"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "5d07f923a8801519910ad163643235d70acd01054b9bc81f0d6b3f6a623f7438"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "c82dfba52058669505e961f01eb0b7117417db89e532338bfdda5a536bd423bb"
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
