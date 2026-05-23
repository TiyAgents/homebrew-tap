cask "tiycode" do
  version "0.3.16"

  on_arm do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "0db5ed0a0478ae8474c1e68e04f87558e30f289747eb490ab92297ad4440ba4b"
  end

  on_intel do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "7ce436c710743d6a46fc1380971b2475b3b54841513278cc0359c97c00e70e0f"
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
