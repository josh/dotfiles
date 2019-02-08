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
brew "direnv"
brew "git"
brew "gpg"
brew "jq"
brew "launchdns", restart_service: true
brew "mas"
brew "node"
brew "ripgrep"
brew "wget"
brew "yarn"

# Mac App Store
mas "1Password 7", id: 1333542190
mas "Aware", id: 1082170746 unless server
mas "Deliveries", id: 924726344 if server
mas "Ka-Block!", id: 1335413823 unless server
mas "Numbers", id: 409203825 unless server
mas "OmniFocus", id: 1346203938
mas "Server", id: 883878097 if server
mas "Xcode", id: 497799835

# Cask
cask "bbedit"
cask "bartender" unless server
cask "firefox" unless server
cask "hazel" if server
cask "rescuetime" unless server
