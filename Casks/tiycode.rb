cask "tiycode" do
  version "0.3.10"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "6dcaee07611fe0f4a59ba20660c8fde2e796870e0e0121eb08f001659eae78e5"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "3da8051e5ea33b7a313e65efdd9b54fa1d93140673abb3fbbf4824a3df1a89b3"
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
