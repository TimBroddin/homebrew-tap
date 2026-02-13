cask "portie" do
  version "1.1"
  sha256 "0754f261c3fc978e890c309174c916615cc48b239a3e05230dc8032d3cf126f2"

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
