hardware = `system_profiler SPHardwareDataType`
model_name = case
when hardware.match(/iMac/) then :imac
when hardware.match(/Mac mini/) then :mac_mini
when hardware.match(/MacBook Pro/) then :macbook_pro
else fail "missing model_name: #{hardware}"
end
server = model_name == :mac_mini

# Taps
tap "caskroom/cask"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "homebrew/services"

# Homebrew
brew "ack"
brew "direnv"
brew "git"
brew "gpg"
brew "jq"
brew "launchdns", restart_service: true
brew "mas"
brew "node"
brew "wget"
brew "yarn"

# Mac App Store
mas "1Password 7", id: 1333542190
mas "Aware", id: 1082170746
mas "Ka-Block!", id: 1335413823
mas "Numbers", id: 409203825
mas "OmniFocus", id: 1346203938
mas "Xcode", id: 497799835

# Cask
cask "atom"
cask "bartender"
cask "firefox"
