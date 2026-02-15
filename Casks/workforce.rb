cask "workforce" do
  version "0.1"
  sha256 "0e109e708ba44e238eae90805aa05d2efaa384100e995b0a5a051f9aeac07a85"

  url "https://github.com/TimBroddin/workforce/releases/download/v#{version}/Workforce-v#{version}.zip"
  name "Workforce"
  desc "Native macOS app for managing AI coding agents"
  homepage "https://github.com/TimBroddin/workforce"

  depends_on macos: ">= :sequoia"

  app "Workforce.app"

  zap trash: [
    "~/Library/Preferences/be.titansofindustry.Workforce.plist",
  ]
end
