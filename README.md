# Dotfiles

![Current laptop config](/home/deltax/Vorlagen/dotfiles/screenshots/main_window_preview.png) 

## Programs

|  Program | Description | Configured   | Todo | 
|---|---| --- | --- |
| Alacritty  | GPU-accelerated terminal emulator | no | Add transparent support and switch to `hack` font.
| Zim ZSH | ZSH framwork | yes |  |
| I3 | Window manager | yes | Cleanup config  |
| rofi | application manager | yes | C |

### Terminal
I switched from `urxvt` to `alacritty` because it is a  GPU-accelerated terminal emulator. Additionally, it is as simple as `urxvt`.


### Shell
#### Zim
The `shell` is the most important configuration, because it is used so frequently. I use the the [zim zsh framework](https://github.com/zimfw/zimfw)  with minor tweaks. The `zim` framwork support some need features such as

* autocomplete
* alias(es)
* git indicator

I don't use the default theme, instead I use the `eriner` theme. You can use this, using following line in `$HOME/.zimrc`.
```
zmodule eriner
```

After run `zimfw install` to compile the new module. The zim framework is (yet) the fastest. The shell feel s very snapy and the multi-level autocomplete is required for a smooth work flow.

#### Shell command line tools
There are many cli tools I use. I provide a small overview

| Tool  | Description |
| --- | --- |
| [fzf](https://github.com/junegunn/fzf) | command-line fuzzy finder |
| [ripgrep](https://github.com/BurntSushi/ripgrep)  | ipgrep recursively searches directories for a regex pattern  | 
 | [ripgrep-all](https://github.com/phiresky/ripgrep-all)  | ripgrep, but also search in PDFs, E-Books, Office documents, zip, tar.gz, ... |
 |  [git](https://github.com/git/git)  | revision control system |
 
 and many more.


You can install `fzf` using the following commands (git is required).
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Window manager 
Long time ago I used gnome. Sure gnome has many advantages over i3 but I still go with i3, because it is less power hungry, fast and not overloaded.

#### I3
 As might indicated, I use different i3 configurations. I use a light edition on my thinkpad to save battery, because my main pc uses `i3` with `kde`. Most of the configuration is the same. It support various of mouse gestures. You can `resize` a window with right click and windows key. Or move a window using left click with window.
 
#### I3 Thinkpad
I use the [bumblebee-status](https://github.com/tobi-wan-kenobi/bumblebee-status) bar. This is a very modular i3 statusbar and it features a various of modules. For me, it is enought to use the following configuration
```
bumblebee-status -m nic cpu
memory battery date 
-p nic.states=^down time.format="%H:%M CW %V" date.format="%a, %b %d %Y" -t night-powerline
```

#### Keybindings
| Keybinding | Command | Description 
| --- | --- | -- | 
|  +Return | exec alacritty | Get a terminal (floating) |
|  +Shift+q | kill |  Kill current window |
 |  +space | exec rofi -show drun -columns 3  | Run application selector |
 |  +j | focus left | Get focus on the left window |
 |  +h | focus up | Get focus on the top window |
 |  +k | focus down | Get focus on the button window |
 |  +, | focus right | Get focus on the right window |
 |  +`left`| focus left | Get focus on the left window |
 |  +`up` | focus up | Get focus on the top window |
 |  +`down` | focus down | Get focus on the button window |
 |  +`right` | focus right | Get focus on the right window |
 
and more.

I like a mimimalistic theme such as the `night-powerline`. Make sure you have the font-awesome fonts installed. Otherwise, the used symbols could not be displayed. 

##### Change symbols
If you want to change the symbols, you can do this at line `85` and the following.

1. Go to [font awesome](https://fontawesome.com/)  and search for you icons
2. Click on the icon and copy the unicode at the top
3. Now, convert the unicode into the symbol using 

```
echo -e "\u[your unicode]"
```

The `\u` is not a misstype. It indicate the unicode sequence. 

### Application manager
#### Rofi
I switch and run applications using `rofi`.  I previously used `albert` but since `albert` has annoying bugs.  I decided to switch to rofi. Rofi search `$HOME/.config/rofi` for `config.rasi`.
