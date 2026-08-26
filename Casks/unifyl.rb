cask "unifyl" do
  version "1.7.2"
  sha256 "b2b4ea3f5feeaea30870b3d2fcfe1018886e0163a505782f087f7fd817f5701f"

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
