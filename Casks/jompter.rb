cask "jompter" do
  version "0.2.4"
  sha256 "10598a2d0fa02f0b67ee7cf2355b3e3fff182e26be9a962068a8cfba58d86f5c"

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
