# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# disable .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# enable .DS_Store
defaults write com.apple.desktopservices DSDontWriteNetworkStores false

# disable crash reporter
defaults write com.apple.CrashReporter DialogType none

# expand save dialog
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# expand print dialog
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# disable animations when opening and closing windows
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# disable animations when opening a Quick Look window
defaults write -g QLPanelAnimationDuration -float 0

# Finder
# show hidden files
defaults write com.apple.Finder AppleShowAllFiles YES

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# show file extension
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# turn of empty trash sound
defaults write com.apple.Finder FinderSounds -bool false

# folders on top when sorting by name
defaults write com.apple.Finder _FXSortFoldersFirst -bool true

# show POSIX path
defaults write com.apple.Finder _FXShowPosixPathInTitle -bool true

# show status bar
defaults write com.apple.Finder ShowStatusBar -bool true

# show path bar
defaults write com.apple.Finder ShowPathbar -bool true

# disable animation when opening the Info window in Finder
defaults write com.apple.Finder DisableAllAnimations -bool true

# show internal hard drives on desktop, FALSE
defaults write com.apple.Finder ShowHardDrivesOnDesktop -bool false

# show external hard drives on desktop, FALSE
defaults write com.apple.Finder ShowExternalHardDrivesOnDesktop -bool false

# show removable media on desktop, FALSE
defaults write com.apple.Finder ShowRemovableMediaOnDesktop -bool false

# show mounted servers on desktop, FALSE
defaults write com.apple.Finder ShowMountedServersOnDesktop -bool false

# disable the warning before emptying the Trash
defaults write com.apple.Finder WarnOnEmptyTrash -bool false

# change the default search scope to the current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# disable rubber-band scrolling
defaults write -g NSScrollViewRubberbanding -int 0

# disable animations when opening and closing windows
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# disable animations when opening a Quick Look window
defaults write -g QLPanelAnimationDuration -float 0

# dont save on icloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# disable Photos.app from starting everytime a device is plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# turn off keyboard illumination when computer is not used for 2 minutes
defaults write com.apple.BezelServices kDimTime -int 120

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

###############################################################################
# Energy saving                                                               #
###############################################################################

# Enable lid wakeup
sudo pmset -a lidwake 1

# Restart automatically on power loss
sudo pmset -a autorestart 1

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Sleep the display after 15 minutes
sudo pmset -a displaysleep 15

# Disable machine sleep while charging
sudo pmset -c sleep 0

# Set machine sleep to 5 minutes on battery
sudo pmset -b sleep 5

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 1

##############################
# Dock
############################

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Only show the running applications in the dock
defaults write com.apple.dock static-only -bool true


# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# restart dock
killall Dock

# restart finder
killall Finder
