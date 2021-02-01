#! /bin/bash

ZSH=~/.zshrc

zshrc () {
echo "Copying .zshrc to '$ZSH'."
if [[ -f "$ZSH" ]]; then
    read -p "$(echo -e ".zshrc already exists at '$ZSH'. Do you want to overwrite it (y/n)? ")" choice
    if [[ "$choice" = "y" ]]; then
        ln -sf ~/.dotfiles/.zshrc $ZSH
        echo -e ".zshrc has been symlinked to '$ZSH'."
    else
        echo "Skipping .zshrc."
    fi
else
    ln -sf ~/.dotfiles/.zshrc $ZSH
    echo ".zshrc has been symlinked to '$ZSH'."
fi
}

read -p "This script will overwrite your pre-existing files. Do you want to continue (y/n)? " choice
if [[ "$choice" = "y" ]]; then
    echo "Rolling out dotfiles..."
    zshrc
    echo "Rollout complete."
else
    echo "Exiting...";
fi