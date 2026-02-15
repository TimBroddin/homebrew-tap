cask "workforce" do
  version "0.1"
  sha256 "155d2e4ed9148296441c188fd723b439ad9b1d6756cba1442f818099d21c0bd9"

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
