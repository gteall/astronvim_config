# AstroNvim User Configuration

My user configuration for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Install as default nvim configuration

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
git clone git@github.com:gteall/astronvim_config.git ~/.config/nvim/lua/user
nvim
```

#### Install base on NVIM_APPNAME

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/AstroNvim
git clone git@github.com:gteall/astronvim_config.git ~/.config/AstroNvim/lua/user
alias nvim-astro='NVIM_APPNAME=AstroNvim nvim'
nvim-astro
```

