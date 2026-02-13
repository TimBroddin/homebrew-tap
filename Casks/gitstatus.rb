cask "gitstatus" do
  version "1.1.0"
  sha256 "741fb4f28b62a9eb2e3f0e05167cb867f26ff23c01cc16d44972f36073e9de65"

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
