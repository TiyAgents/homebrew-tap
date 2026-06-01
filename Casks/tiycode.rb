cask "tiycode" do
  version "0.3.18"

  on_arm do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "f57c1d2b54cc4d12190588948daecd8dda867f0fb32e786baf3d3bd7b781edaa"
  end

  on_intel do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "90daeecdef41514c9811b5ab7ffe6d1027e84b17f998882cc36588050997fd4d"
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
