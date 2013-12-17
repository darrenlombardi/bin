
# Remove current bashrc file
if [ -f ~/.bashrc ]; then
    rm ~/.bashrc
fi

# Remove current bash_profile file
if [ -f ~/.bash_profile ]; then
    rm ~/.bash_profile
fi

# Copy files
cp ~/bin/.bashrc ~/
cp ~/bin/.bash_profile ~/

# Remove symbolic link if exists
if [ -f ~/.ssh/config ]; then
    rm -rf ~/.ssh/config
fi

# Create symbolic link to ssh config
ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config

# Finally, source the bashrc file
source ~/.bashrc

