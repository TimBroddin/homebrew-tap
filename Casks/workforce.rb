cask "workforce" do
  version "0.1"
  sha256 "3ac69efa2532f7e68b96587a91ba8e6495dc1b33e3c0e2c44c440d99e6f23468"

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
