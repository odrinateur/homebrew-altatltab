cask "altatltab" do
  version "10.13.2"
  sha256 "85bcc9f5b7129900f868ccbc92d28e3532db9da8ee749ec36cef0737776a9e28"

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
