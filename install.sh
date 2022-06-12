apt-get install neovim zsh git fd-find bat nodejs npm rustc golang build-tools build-essential
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p $HOME/.config/nvim
ln -s $HOME/programming/.functions/init.vim $HOME/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim +'PlugInstall' +qa --headless

rm $HOME/.zshrc

# Should really use gnu stow
ln -s $HOME/programming/.functions/.zshrc  $HOME/.zshrc

# Desktop only
apt-get install alacritty
rm $HOME/.alacritty.yml
ln -s $HOME/programming/.functions/alacritty_light.yml $HOME/.alacritty.yml

git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z


# NEEds golang
go install github.com/barthr/redo@latest

bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) # install lvim as well
