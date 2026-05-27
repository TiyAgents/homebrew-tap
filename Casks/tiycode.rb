cask "tiycode" do
  version "0.3.17"

  on_arm do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "ffc15334ecc32771034d15a2db82a8ae60b985aa2f48e4e8100e997b1f10271d"
  end

  on_intel do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "61f519699aeca3d4aefebf83b8029a00418884454d08548840eb4e9f8e87b59c"
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
