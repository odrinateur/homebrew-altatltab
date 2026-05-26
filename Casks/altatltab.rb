cask "altatltab" do
  version "10.13.3"
  sha256 "8ae7d1e2e5043080fa0d157a13320c91532b76def4dacfd9cd3a8beb2f027124"

  url "https://github.com/odrinateur/alt-alt-tab-macos/releases/download/v#{version}/AltAtlTab-#{version}.zip",
      verified: "github.com/odrinateur/alt-alt-tab-macos/"
  name "AltAtlTab"
  desc "Windows-like alt-tab for macOS (AltTab fork)"
  homepage "https://github.com/odrinateur/alt-alt-tab-macos"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on :macos

  app "AltAtlTab.app"

  uninstall quit: "com.local.altatltab"

  zap trash: [
    "~/Library/Application Support/com.local.altatltab",
    "~/Library/Caches/com.local.altatltab",
    "~/Library/HTTPStorages/com.local.altatltab",
    "~/Library/Preferences/com.local.altatltab.plist",
    "~/Library/LaunchAgents/com.local.altatltab.plist",
  ]
end
