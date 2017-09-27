# Taps
tap "caskroom/cask"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "homebrew/services"
tap "homebrew/versions"

# Homebrew
brew "ack"
brew "awscli"
brew "direnv"
brew "git"
brew "gpg"
brew "jq"
brew "launchdns", restart_service: true
brew "mas"
brew "node"
brew "rbenv"
brew "ruby-build"
brew "wget"

# Mac App Store
mas "1Password", id: 443987910
mas "Aware", id: 1082170746
mas "iA Writer", id: 775737590
mas "Numbers", id: 409203825
mas "OmniFocus", id: 867299399
mas "Server", id: 883878097 if !`system_profiler SPHardwareDataType | grep iMac`.empty?
mas "Xcode", id: 497799835

# Cask
cask "atom"
cask "firefox"
cask "firefoxdeveloperedition"
cask "google-chrome-canary"
cask "google-chrome"
cask "graphiql"
cask "safari-technology-preview"
cask "vmware-fusion"
