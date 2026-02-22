cask "workforce" do
  version "0.3"
  sha256 "e154b41ace3ea712b257d326764a994e85daec6f774bbe9a64e2a7f5184e53da"

  url "https://github.com/TimBroddin/workforce/releases/download/v#{version}/Workforce-v#{version}.zip"
  name "Workforce"
  desc "Native macOS app for managing AI coding agents"
  homepage "https://github.com/TimBroddin/workforce"

  depends_on macos: ">= :sonoma"
  depends_on formula: "tmux"

  app "Workforce.app"

  zap trash: [
    "~/Library/Preferences/be.titansofindustry.Workforce.plist",
  ]
end
