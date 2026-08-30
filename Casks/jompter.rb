cask "jompter" do
  version "0.2.2"
  sha256 "13887636da42d326f719a95d698b3298b20dbd83de684a1cf45cbaae3e1e3d00"

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
