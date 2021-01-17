#! /bin/bash

# Constants
RED='\033[0:31m'
GREEN='\033[0:32m'
NC='\033[0m'

# Variables
ZSH=~/.zshrc

echo ""
read -p "This script will overwrite your pre-existing files. Do you want to continue (y/n)? " choice
if [[ "$choice" = "y" ]]; then
    echo "Rolling out dotfiles..."
    echo -e "\n"
    echo "Copying .zshrc to '$ZSH'."
    if [[ -f "$ZSH" ]]; then
        read -p "$(echo -e "${RED}.zshrc already exists at '$ZSH'.${NC} Do you want to overwrite it (y/n)? ")" choice
        if [[ "$choice" = "y" ]]; then
            echo -e "${GREEN}.zshrc has been copied to '$ZSH'.${NC}"
        else
            echo "Skipping .zshrc."
        fi
    else
        echo "${GREEN}.zshrc has been copied to '$ZSH'.${NC}"
    fi
    echo -e "\n"
    echo "Rollout complete."
else
    echo "Exiting...";
fi