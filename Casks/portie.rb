cask "portie" do
  version "1.3"
  sha256 "fb343a08cdd00ef1acd98df7a24e4b1f48390b854795b0cc0abd0d3ec77f94b4"

  url "https://github.com/TimBroddin/portie/releases/download/v#{version}/Portie.zip"
  name "Portie"
  desc "macOS menubar app for monitoring localhost ports"
  homepage "https://github.com/TimBroddin/portie"

  depends_on macos: ">= :sonoma"

  app "Portie.app"

  zap trash: [
    "~/Library/Preferences/be.titansofindustry.Portie.plist",
  ]
end
