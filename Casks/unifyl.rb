cask "unifyl" do
  version "1.8.0"
  sha256 "327835a96f06e36a8086d3c0932ccd1ea63b033d1229673e9c525184cb33d693"

  url "https://github.com/goodbug89/Unifyl.app/releases/download/v#{version}/Unifyl-#{version}.dmg"
  name "Unifyl"
  desc "AI-powered dual-pane file manager"
  homepage "https://unifyl.app/"

  livecheck do
    url "https://unifyl.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Unifyl.app"

  zap trash: [
    "~/Library/Application Support/com.unifyl.app",
    "~/Library/Application Support/Unifyl",
    "~/Library/Caches/com.unifyl.app",
    "~/Library/HTTPStorages/com.unifyl.app",
    "~/Library/HTTPStorages/com.unifyl.app.binarycookies",
    "~/Library/Preferences/com.unifyl.app.plist",
    "~/Library/Saved Application State/com.unifyl.app.savedState",
    "~/Library/WebKit/com.unifyl.app",
  ]
end

