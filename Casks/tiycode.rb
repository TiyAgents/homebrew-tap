cask "tiycode" do
  version "0.1.19"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "128ab8f38c2ab57f3e8628aa702370a4e1c0e728fefc48f7144029113c5236b7"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "4fa5628ff40dbe5900ec5d1acb155d43ba98eb201303422d394314c239a8eb88"
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
