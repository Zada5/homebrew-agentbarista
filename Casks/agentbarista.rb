cask "agentbarista" do
  version "1.4.6"
  sha256 "a9c415c84653d7aea8341c19f9f36f388d7ccc2fd1f54b9ec8df24c3af66d1c0"

  url "https://agentbarista.com/dl/AgentBarista-#{version}.dmg"
  name "AgentBarista"
  desc "Menu bar utility that prevents sleep while AI coding agents work"
  homepage "https://agentbarista.com/"

  livecheck do
    url "https://agentbarista.com/appcast.xml"
    # The feed carries both sparkle:shortVersionString (1.4.2) and sparkle:version (the
    # auto-stamped build number), which the default strategy joins as "1.4.2,271". Take only
    # the short version, so livecheck matches the version users actually see.
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "AgentBarista.app"

  zap trash: [
    "~/Library/Application Support/AgentBarista",
    "~/Library/Logs/AgentSleepGuard.log",
  ]
end
