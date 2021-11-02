# Setup a color for echo command if shell uses tty
if [ -t 1 ]; then
  BLUE=$(printf '\033[34m')
  GREEN=$(printf '\033[32m')
  RESET=$(printf '\033[m')
else
  BLUE=""
  GREEN=""
  RESET=""
fi

cd $HOME  

# Download and install Oh My Zsh (OMZ)
echo "${BLUE}Downloading and installing Oh My Zsh...${RESET}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Download and install Powerline fonts
echo "${BLUE}Downloading and installing Powerline fonts...${RESET}"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

echo "${BLUE}Correcting your zsh configuration...${RESET}"
cd $HOME  

# Save OMZ's full version of .zshrc file
mv .zshrc .zshrc.oh-my-zsh

# Create a new .zshrc file with only essential OMZ commands
echo "# Path to your Oh My Zsh installation.
export ZSH=\"$HOME/.oh-my-zsh\"

# Set name of the theme to load (See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes)
ZSH_THEME=\"dpoggi\"

# Activate git plugin
plugins=(git)

# Activate Oh My Zsh
source \$ZSH/oh-my-zsh.sh \n" > .zshrc

# Add content from initial .zshrc file to the current one
cat .zshrc.pre-oh-my-zsh >> .zshrc

echo "${GREEN}All done! Reopen terminal and enjoy your new colorful shell!${RESET}"
