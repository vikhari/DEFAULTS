#!/bin/sh
# Transfers Vee defaults to new boxes via a small tar file (then run this script)
# Run this using dot because it ensures sourcing the bashrc executs in this same shell (. vee_deploy.sh)

echo "=========="
echo "Installing vim-X11 and setting vi alias..."
sudo yum install vim-X11 -y
if grep -` "vi=vimx" /etc/profile.d/vim.sh ; then
  echo "alias set already" ;
else
  sudo sed -i 's/alias\ vi=vim/alias\ vi=vimx/g' /etc/profile.d/vim.sh ;
fi

echo "=========="
echo "Making dirs..."
mkdir ~/vee_admn                         	# use your own username
sudo mkdir /root/vee_root

echo "=========="
echo "Setting vim files..."
cp dot_vimrc ~/.vimrc
sudo cp dot_vimrc_root /root/.vimrc

echo "=========="
echo "Setting your bashrc..."
if grep -q "VEEFAULTS" ~/.bashrc ; then		# VEEFAULTS (or your string) should be in dot_bashrc
  echo "bashrc set already"
else
  sudo cat dot_bashrc >> ~/.bashrc
  source ~/.bashrc
fi

echo "=========="
echo "Done!"
