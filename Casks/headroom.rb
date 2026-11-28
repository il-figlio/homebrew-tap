cask "headroom" do
  version "0.9.0"
  sha256 "4848973d11b52614a9dfca804d3cf46df6b8db9a9469a93aa522e31672275cfd"

  url "https://github.com/il-figlio/headroom/releases/download/v#{version}/Headroom-#{version}.dmg"
  name "Headroom"
  desc "Memory pressure and disk space monitor for the notch and menu bar"
  homepage "https://github.com/il-figlio/headroom"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Headroom.app"

  uninstall quit: "org.headroom.app"

  zap trash: [
    "~/Library/Application Support/org.headroom.app",
    "~/Library/Caches/org.headroom.app",
    "~/Library/HTTPStorages/org.headroom.app",
    "~/Library/Preferences/org.headroom.app.plist",
    "~/Library/Saved Application State/org.headroom.app.savedState",
  ]
end
