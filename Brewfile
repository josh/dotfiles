hardware = `system_profiler SPHardwareDataType`
model_name = case
when hardware.match(/Mac mini/) then :mac_mini
when hardware.match(/MacBook Pro/) then :macbook_pro
else fail "missing model_name: #{hardware}"
end

# Taps
tap "github/gh"
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
tap "homebrew/services"
tap "josh/tap"
tap "mxcl/made"

# Homebrew
brew "direnv"
brew "fzf"
brew "git"
brew "gnupg"
brew "jq"
brew "launchdns"
brew "mas"
brew "node"
brew "prettier"
brew "ripgrep"
brew "shellcheck"
brew "shfmt"
brew "swift-format"
brew "swiftformat"
brew "swiftlint"
brew "terminal-notifier"
brew "wget"
brew "yarn"
brew "github/gh/gh"
brew "josh/tap/brew-unattended-upgrade"
brew "josh/tap/swift-completions"
brew "josh/tap/tot"
brew "mxcl/made/swift-sh"

# Cask
cask "aerial"
cask "bartender"
cask "docker"
cask "firefox"
cask "netnewswire"
cask "scroll-reverser"
cask "sf-symbols"
cask "sketch"
cask "vmware-fusion"

# Mac App Store
mas "1Password 7", id: 1333542190
mas "Aware", id: 1082170746
mas "BBEdit", id: 404009241
mas "Deliveries", id: 924726344
mas "Drafts", id: 1435957248
mas "Fantastical", id: 975937182
mas "iA Writer", id: 775737590
mas "Ka-Block!", id: 1335413823
mas "Numbers", id: 409203825
mas "OmniFocus", id: 1346203938
mas "Scroll", id: 1477273814
mas "Slack", id: 803453959
mas "TaskPaper", id: 1090940630
mas "Tot", id: 1491071483
mas "Xcode", id: 497799835
