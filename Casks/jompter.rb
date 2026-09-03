cask "jompter" do
  version "0.2.3"
  sha256 "e7fd31be756dce2e094dbe526c8fb68eba9c8394d1901740cf7ce0992f36fee3"

  url "https://github.com/anshuopinion/jompter-releases/releases/download/v#{version}/Jompter_#{version}_aarch64.dmg"
  name "Jompter"
  desc "Voice dictation, screenshots and screen recordings turned into AI-ready prompts"
  homepage "https://jompter.com"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Jompter.app"

  zap trash: [
    "~/Library/Application Support/com.jompter.desktop",
    "~/Library/Caches/com.jompter.desktop",
    "~/Library/Preferences/com.jompter.desktop.plist",
    "~/Library/WebKit/com.jompter.desktop",
  ]
end
