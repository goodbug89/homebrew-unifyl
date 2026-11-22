cask "unifyl" do
  version "2.0.4"
  sha256 "01871c0d094dd95c1399305e8a134bc937ccfa86928ce38d66179df01e4b2905"

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






