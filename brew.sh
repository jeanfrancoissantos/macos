# check is brew is intalled, if not install it
if test ! $(which brew); then
    /bin/bash -c \
"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

PACKAGES=(
battle-net
epic-games
coreutils
findutils
gnu-indent
gnu-sed
gnutls
grep
gnu-tar
gawk
pv
nmap
htop
btop
cool-retro-term
stats
iina
imagemagick
exa
glow
prettyping
smartmontools
speedtest-cli
vim
zsh
iterm2
jdownloader
keepassxc
lulu
microsoft-edge
minecraft
monitorcontrol
obsidian
steam
visual-studio-code
rclone
rsync
stress-ng
kindle
cmatrix
drawio
)

brew install --force ${PACKAGES[@]}

