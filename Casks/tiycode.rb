cask "tiycode" do
  version "0.3.12"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "02a4b9949e3c8c46b1a94f0ab8d13d02ce0aa98ca61d1c3782effc1374aad9d4"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "89ef6f1d4416b0138dec390f92401b00dcf0830f3a17481d3af4fe19b42f48ec"
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
