cask "tiycode" do
  version "0.2.3"

  on_arm do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_aarch64.dmg"
    sha256 "d6483f598f4e05cf190f8762e476480806fb205649e634ee57a334a41269540d"
  end

  on_intel do
    url "https://github.com/TiyAgents/tiycode/releases/download/v#{version}/TiyCode_#{version}_x64.dmg"
    sha256 "92677cb34413c2ccff44791729421dd1044a4f028d0a63275aa106546c2abcfe"
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
