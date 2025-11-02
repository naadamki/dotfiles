git config --global user.name 'Nathaniel Adam King'
git config --global user.email 'naadamki@gmail.com'

alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
echo ".dot" >> .gitignore
git clone --bare https://github.com/naadamki/dotfiles.git $HOME/.dot
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'

mkdir -p .config-backup && \
dot checkout 2>&1 | grep -e "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
dot checkout
dot config --local status.showUntrackedFiles no
