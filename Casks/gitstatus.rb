cask "gitstatus" do
  version "1.0.0"
  sha256 "e3ab0001e0da3776e6a39b3a8ffe9fbab092b13c41c9f84beeb71bc5ecdfb961"

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
