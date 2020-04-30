
### RPMFusion

# RPMFusion Free
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm 

# RPMFusion NonFree
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpim

# Free Tainted repos
sudo dnf install rpmfusion-free-release-tainted

# NonFree Tainted repos
sudo dnf install rpmfusion-nonfree-release-tainted


### VSCode
# Microsoft keys
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# create repo file
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

