function setupVimRC {
echo 'Setting up .vimrc file in home directory...\n'
touch ~/.vimrc
echo "set encoding=utf-8" >> ~/.vimrc
echo "set number" >> ~/.vimrc
echo "set laststatus=2" >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc
echo "set shiftwidth=4" >> ~/.vimrc
echo "set smarttab" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
}
function disableUnnecessaryServices {
echo "Disabling unnecessary boot services... \n"
sudo systemctl mask plymouth-quit-wait.service
sudo systemctl mask libvirtd.service
sudo systemctl mask systemd-journal-flush.service
}
function setupGnome {
echo "Setting up Gnome..."
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface clock-format '12h'
}
function downloadIBUS {
echo "Downloading IBUS..."
sudo dnf install ibus-pinyin
sudo dnf install ibus-hangul
sudo dnf install ibus-anthy
}
function setupAliases {
echo "Setting up aliases"
echo "alias c=\'clear\'" >> ~/.bashrc
echo "alias p=\'poweroff\'" >> ~/.bashrc
echo "alias e=\'exit\'" >> ~/.bashrc
echo "alias python=\'python3\'" >> ~/.bashrc
echo "alias pip=\'pip3\'" >> ~/.bashrc
}
function installNPMandAngular {
echo "Installing npm... \n"
sudo dnf install npm
echo "Installing angular cli...\n"
sudo npm install -g @angular/cli
}
setupVimRC
disableUnnecessaryServices
setupGnome
downloadIBUS
setupAliases
