# setup

cd
# Clone but do not checkout files
git clone --no-checkout https://github.com/albert-mirzoyan/configs.git
cd configs

# set worktree to home directory
git config core.worktree "../../"

# checkout files
git reset --hard origin/master

# append custom rc congif to .bashrc
echo -e "\nif [ -f ~/.bash/rc ]; then\n    . ~/.bash/rc\nfi" >> ~/.bashrc
