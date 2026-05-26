cask "altatltab" do
  version "10.14.0"
  sha256 "b0358a27aa18e7f084185c6154f5da911c5417c19f38108440be04ae2b0bfece"

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
