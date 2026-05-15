cask "quotax" do
  version "0.1.4"

  on_arm do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_aarch64.dmg"
    sha256 "7f21c5d88461ca9fac9959c8343a1ecc04123932f13700c90614ba13f6884388"
  end

  on_intel do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_x86_64.dmg"
    sha256 "a54f8689c2ed55128649eccd93633287de2c587edbcbc09d22abd3cf30f10276"
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
