# Automatic installation of Oh My Zsh

**[Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)** is a cool piece of software managing zsh configuration that makes your terminal shell colorful and powerful. 

This script installs Oh My Zsh and required fonts in one click. It sets up a nice color theme but preserves your current zsh configuration. In addition, Oh My Zsh offers a plugin for *git* that displays current branch and its status if it finds any *git* repository in the current path. 

## Getting started

### Prerequisites
- macOS
- zsh terminal shell (>v4.3.9)
- curl

### Installation

🔥 **Proceed at your own risk!** 🔥

To install `omz_install.sh`, run the following command in your terminal:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/olga-clarifai/oh_my_zsh/main/omz_install.sh)"
```

### Uninstalling Oh My Zsh

Run `uninstall_oh_my_zsh` from the command-line.

## Advanced topics

### Themes

The default theme is *dpoggi*. You can find a list of all available themes [here](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes). To change the theme edit environment variable `ZSH_THEME` in the `~/.zshrc` file. 

```sh
ZSH_THEME="dpoggi"
```

### Plugings

By default, only a plugin for git is activated. However, Oh My Zsh comes with a variety of different [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins).

### Additional settings

Current installation offers only basic Oh My Zsh functionalities. For additional features, please check `.zshrc.oh-my-zsh` file in your home directory. Desired variables have to be added to your `.zshrc` file right after other Oh My Zsh variables.

## References

The script installs the following software:
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- [Powerline fonts](https://github.com/powerline/fonts)
