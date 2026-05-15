cask "tiycode" do
  version "0.3.14"

  on_arm do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "1a3271b495b4fdfab97440d03822087e950d2c923fda5b57ffb40524979d6ee0"
  end

  on_intel do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "b44fdb79849fa8dfd007e57d434ccb293df22443ee6d1a975d043e3e0ec1cbb7"
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
