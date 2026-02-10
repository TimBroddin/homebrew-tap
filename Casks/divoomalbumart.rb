cask "divoomalbumart" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256_OF_DMG"

  url "https://github.com/TimBroddin/DivoomAlbumArt/releases/download/v#{version}/DivoomAlbumArt.dmg"
  name "DivoomAlbumArt"
  desc "Display album art on Divoom LED panels"
  homepage "https://github.com/TimBroddin/DivoomAlbumArt"

  depends_on macos: ">= :sonoma"

  app "DivoomAlbumArt.app"

  zap trash: [
    "~/Library/Preferences/be.titansofindustry.DivoomAlbumArt.plist",
  ]
end
