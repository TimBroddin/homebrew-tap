cask "workforce" do
  version "0.2"
  sha256 "8bfa270baf523432646f5fadfb375282f4325a4cddd8020209dda7af61dbff5b"

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
