cask "agentbarista" do
  version "1.4.2"
  sha256 "29918f4014af13759229f0ca5bcc57524cc5bc48479791247ae21651eae35ff4"

  url "https://agentbarista.com/dl/AgentBarista-#{version}.dmg"
  name "AgentBarista"
  desc "Menu bar utility that prevents sleep while AI coding agents work"
  homepage "https://agentbarista.com/"

  livecheck do
    url "https://agentbarista.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "AgentBarista.app"

  zap trash: [
    "~/Library/Application Support/AgentBarista",
    "~/Library/Logs/AgentSleepGuard.log",
  ]
end
