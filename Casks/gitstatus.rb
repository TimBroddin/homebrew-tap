cask "gitstatus" do
  version "1.0.0"
  sha256 "bc732c8f5852ec030de64d7e4e673ce390372711ba034b13f608916d05922851"

  url "https://github.com/TimBroddin/gitstatus/releases/download/v#{version}/GitStatus.zip"
  name "GitStatus"
  desc "macOS menubar app that monitors git status of local repositories"
  homepage "https://github.com/TimBroddin/gitstatus"

  depends_on macos: ">= :sonoma"

  app "GitStatus.app"

  zap trash: [
    "~/Library/Application Support/GitStatus",
    "~/Library/Preferences/be.titansofindustry.GitStatus.plist",
  ]
end
