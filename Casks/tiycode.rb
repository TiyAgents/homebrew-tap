cask "tiycode" do
  version "0.1.16"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "4f4293f657c5a03330bd13ac27eb2b31c14ea03c49731ea7d48112bd8b18624d"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "52be012dc1da824b05b6376d32b5dac19e09f6f7bda7c741247360fd6ae54abf"
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
