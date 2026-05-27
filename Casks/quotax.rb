cask "quotax" do
  version "0.1.11"

  on_arm do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_aarch64.dmg"
    sha256 "036b28c5fa408996ec0ace8aeee120085d1e700061fa60f903498be0d024293b"
  end

  on_intel do
    url "https://github.com/tiylabs/zenmux-quotax/releases/download/#{version}/Quotax_#{version}_x86_64.dmg"
    sha256 "acd97ef68b59d3d9ceba4707a5116a63f8aa147c41df695d3d9284ac79cd2714"
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
