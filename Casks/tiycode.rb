cask "tiycode" do
  version "0.2.0"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "8675516d415559322754740e2bb21e0cca60f6843130ed5efde20e176b831f3d"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "feb5c1fbc9752652057ae4d9a7bf378625acf8a616b89d6777fa1c66969b346a"
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
