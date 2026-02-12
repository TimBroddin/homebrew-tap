cask "portie" do
  version "1.0.1"
  sha256 "0adf9e2a7d3e829ba5c1c9ad3dce20b5839f5378a9b2e186f77360eee44b1aa7"

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
