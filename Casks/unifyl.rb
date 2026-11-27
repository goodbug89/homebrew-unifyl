cask "unifyl" do
  version "2.0.6"
  sha256 "fb616ff0e63f0a7db80999a45f7341d988f3597998891e7b12a666d27352b8c6"

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








