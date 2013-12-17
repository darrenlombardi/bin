
# Remove current bashrc file
rm ~/.bashrc

# Remove current bash_profile file
rm ~/.bash_profile

# Copy files
cp ~/bin/.bashrc ~/
cp ~/bin/.bash_profile ~/

# Create symbolic link to ssh config
ln -s ~/bin/dotfiles/ssh/config ~/.ssh/config
