cask "quotax" do
  version "0.1.5"

  on_arm do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_aarch64.dmg"
    sha256 "fd1aead23383849d611e9733edc1f5924f95161aea36fde76b42bb6f11e20a23"
  end

  on_intel do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_x86_64.dmg"
    sha256 "e9b87d4e0d669fd67a064606282badb69b12725a1eabaef80e7542223b76f9d1"
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
