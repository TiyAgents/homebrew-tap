cask "tiycode" do
  version "0.3.15"

  on_arm do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "56215b34f3d14d0af374bdf509ae20c577c61641a3aab8486d73eea3fc6287ed"
  end

  on_intel do
    url "https://github.com/tiylabs/tiycode/releases/download/#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "0812018893b7eb989711bbbb47a849fb016c08255c432df84edd3ae30c902c3d"
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
