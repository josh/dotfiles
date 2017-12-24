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
mas "Xcode", id: 497799835

# Cask
cask "atom"
cask "bartender"
cask "firefox"
cask "google-chrome"
cask "graphiql"
cask "vmware-fusion"

# iMac only
if !`system_profiler SPHardwareDataType | grep iMac`.empty?
  cask "adobe-illustrator-cc"
  cask "adobe-photoshop-cc"
else
  cask "encryptme"
end
