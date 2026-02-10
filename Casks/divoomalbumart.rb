cask "divoomalbumart" do
  version "1.0.0"
  sha256 "0ca6430626ba815dd0ae8197d797ce3ed536537e6cf5ffb39640e786e9c1c5b7"

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
