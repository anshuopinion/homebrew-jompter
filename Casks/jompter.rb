cask "jompter" do
  version "0.1.9"
  sha256 "8d10aa1ec4dadf7c0b744475a48fa58ce28e8e4e97537a30b892f2889a7ccdae"

  url "https://github.com/anshuopinion/jompter-releases/releases/download/v#{version}/Jompter_#{version}_aarch64.dmg"
  name "Jompter"
  desc "Voice dictation, screenshots and screen recordings turned into AI-ready prompts"
  homepage "https://jompter.com"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Jompter.app"

  zap trash: [
    "~/Library/Application Support/com.jompter.desktop",
    "~/Library/Caches/com.jompter.desktop",
    "~/Library/Preferences/com.jompter.desktop.plist",
    "~/Library/WebKit/com.jompter.desktop",
  ]
end
