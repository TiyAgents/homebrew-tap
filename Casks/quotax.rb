cask "quotax" do
  version "0.1.10"

  on_arm do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_aarch64.dmg"
    sha256 "49f883594aa3e6311e769fbaf321b7b2e9d2b21f1d226fe02e9710ed0f11aa0c"
  end

  on_intel do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_x86_64.dmg"
    sha256 "7b00233c9f616355523d38dec245955c12009758c665aed2c346b588d99e00b4"
  end

  name "Quotax"
  desc "Lightweight macOS menu bar monitor for ZenMux subscription quotas"
  homepage "https://github.com/tiylabs/zenmux-quotax"

  livecheck do
    url "https://github.com/tiylabs/zenmux-quotax/releases/latest"
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :sequoia"

  app "Quotax.app"

  zap trash: [
    "~/Library/Application Support/com.zenmux.quotax",
    "~/Library/Caches/com.zenmux.quotax",
    "~/Library/HTTPStorages/com.zenmux.quotax",
    "~/Library/Preferences/com.zenmux.quotax.plist",
    "~/Library/Saved Application State/com.zenmux.quotax.savedState",
  ]
end
