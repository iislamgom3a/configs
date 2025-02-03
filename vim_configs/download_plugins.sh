#!/bin/bash

# Directory where plugins will be installed
PLUG_DIR="$HOME/.local/share/nvim/plugged"

# Create the plugin directory if it doesn't exist
mkdir -p "$PLUG_DIR"

# List of plugins to install
declare -A plugins=(
  ["nerdtree"]="https://github.com/preservim/nerdtree.git"
  ["delimitmate"]="https://github.com/raimondi/delimitmate.git"
  ["gruvbox"]="https://github.com/morhetz/gruvbox.git"
  ["vim-airline"]="https://github.com/vim-airline/vim-airline.git"
  ["solarized"]="https://github.com/altercation/solarized.git"
)

# Clone each plugin
for plugin in "${!plugins[@]}"; do
  plugin_path="$PLUG_DIR/$plugin"
  if [ -d "$plugin_path" ]; then
    echo "Updating $plugin..."
    git -C "$plugin_path" pull
  else
    echo "Cloning $plugin..."
    git clone "${plugins[$plugin]}" "$plugin_path"
  fi
done

echo "All plugins installed/updated successfully!"
