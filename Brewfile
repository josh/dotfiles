hardware = `system_profiler SPHardwareDataType`
model_name = case
when hardware.match(/iMac/) then :imac
when hardware.match(/Mac mini/) then :mac_mini
when hardware.match(/MacBook Pro/) then :macbook_pro
else fail "missing model_name: #{hardware}"
end

# Taps
tap "caskroom/cask"
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
tap "homebrew/services"
tap "josh/tap"

# Homebrew
brew "direnv"
brew "git"
brew "gpg"
brew "jq"
brew "launchdns", restart_service: true
brew "mas"
brew "node"
brew "prettier"
brew "ripgrep"
brew "shellcheck"
brew "wget"
brew "yarn"

# Mac App Store
mas "1Password 7", id: 1333542190
mas "Aware", id: 1082170746
mas "BBEdit", id: 404009241
mas "Cardhop", id: 1290358394
mas "Deliveries", id: 924726344
mas "Fantastical", id: 975937182
mas "Ka-Block!", id: 1335413823
mas "Numbers", id: 409203825
mas "OmniFocus", id: 1346203938
mas "Xcode", id: 497799835

# Cask
cask "bartender"
cask "firefox"
cask "netnewswire"
