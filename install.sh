#!/bin/bash

PACKAGE_MANAGER=""

_set_package_manager(){
    distro=$(lsb_release -is)

    if [[ "$distro" == "Ubuntu" ]] || [[ "$distro" == "LinuxMint" ]]; then
        PACKAGE_MANAGER="apt"
    elif [[ "$distro" == "Fedora" ]] || [[ "$distro" == "CentOS" ]]; then
        PACKAGE_MANAGER="dnf"
    else
        echo "WARNING : apt/dnf not available, what do you want to use instead ?"
        read -p "> " PACKAGE_MANAGER
        echo "'$PACKAGE_MANAGER' has been selected as the package manager."
    fi
}
_set_package_manager

_install_it(){
    sudo $PACKAGE_MANAGER install $@ -y
}

# is openssl available ? if not install it
$(command -v gpg > /dev/null) && [[ $? == 0 ]] \
    || _install_it "openssl"

echo "Congratulations setting up gitgaga."
echo "Next steps are :"
echo "cp {./pre-commit,./post-receive} /path/to/your/repo/.git/hooks/"
