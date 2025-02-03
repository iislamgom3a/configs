# Neovim Plugin Installation Guide


- **vim/**
  - `download_plugins.sh`: A shell script to download and install the necessary plugins.
  - `init.vim`: The main Neovim configuration file.

## Installation Steps

### Step 1: Clone the Repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/iislamgom3a/configs
```

### Step 2: Move `init.vim` to the Neovim Configuration Directory

Next, move the `init.vim` file to the Neovim configuration directory. If the directory does not exist, create it:

```bash
mkdir -p ~/.config/nvim
mv vim/init.vim ~/.config/nvim/init.vim
```

### Step 3: Make the Script Executable

Make the `download_plugins.sh` script executable:

```bash
chmod +x vim/download_plugins.sh
```

### Step 4: Run the Script to Install Plugins

Execute the `download_plugins.sh` script to download and install the plugins:

```bash
./vim/download_plugins.sh
```

### Step 5: Install `site/autoload`

Ensure that the `site/autoload` directory is set up correctly. This is typically handled by the plugin manager, but you can verify it by running:

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

This command installs `vim-plug`, a popular plugin manager for Neovim.

### Step 6: Verify Installation

Open Neovim and verify that the plugins are installed correctly:

```bash
nvim
```

Inside Neovim, run the following command to install the plugins:

```vim
:PlugInstall
```

This will install all the plugins specified in your `init.vim` file.
