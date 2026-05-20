cask "quotax" do
  version "0.1.9"

  on_arm do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_aarch64.dmg"
    sha256 "eb78fa4b442f727695655512045aa5a1ec400f3ffc4f162f49c36014abae1642"
  end

  on_intel do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_x86_64.dmg"
    sha256 "e5d9280fb7e404bf863685788ef4093107fbe5edc6d3da80ad5be4ba750408eb"
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
