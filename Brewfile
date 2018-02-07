# Taps
tap "caskroom/cask"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "homebrew/services"
tap "homebrew/versions"
tap "josh/321"

# Homebrew
brew "ack"
brew "aws-sam-local"
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
brew "yarn"

# Mac App Store
mas "1Password", id: 443987910
mas "Aware", id: 1082170746
# mas "iA Writer", id: 775737590
mas "Ka-Block!", id: 1335413823
mas "MindNode", id: 1289197285
mas "Numbers", id: 409203825
mas "OmniFocus", id: 867299399
mas "Ulysses", id: 1225570693
mas "Xcode", id: 497799835

# Cask
cask "atom"
cask "bartender"
cask "evergreen"
cask "firefox"
cask "google-chrome"
cask "microblog"
cask "vmware-fusion"

# iMac only
if !`system_profiler SPHardwareDataType | grep iMac`.empty?
else
  cask "encryptme"
end
