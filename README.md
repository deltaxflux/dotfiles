# Dotfiles

![](https://i.imgur.com/Jif3NEw.png) 

## Programs

|  Program | Description | Configured   | Todo | 
|---|---| --- | --- |
| Alacritty  | GPU-accelerated terminal emulator | no | Add transparent support and switch to `hack` font.
| Urxvt | Lightway, snappy terminal emulator | |
| Zim ZSH | ZSH framwork | yes |  |
| I3 | Window manager | yes | Cleanup config  |
| rofi | application manager | yes |  |

### Terminal
I switched from `urxvt` to `alacritty` because it is a  GPU-accelerated terminal emulator. Additionally, it is as simple as `urxvt` but
it looks like, that `alacritty` does not support a transparent background.

### Shell
![](https://i.imgur.com/kBo78Q4.png) 
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
 | [autojump](https://github.com/wting/autojump) |  a faster way to navigate your filesystem |
 | [ad](https://github.com/tanrax/terminal-AdvancedNewFile) | faster file and folder creator |
 | [parallel](https://www.gnu.org/software/parallel/) | Build and execute shell command lines from standard input in parallel |
 | [z](https://github.com/rupa/z) | easier file navigator |
 | [tmux](https://github.com/tmux/tmux/wiki) | terminal multiplexer | 
 | [add-gitignore](https://github.com/TejasQ/add-gitignore) | https://github.com/TejasQ/add-gitignore |
 | [bat](https://github.com/sharkdp/bat) | cat with wings  and syntax highlighting |
 | [youtube-dl](https://github.com/ytdl-org/youtube-dl) | youtube downloader |
 [ [jq] | sed for json |
 
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
bumblebee-status -m nic cpu \
memory battery date \
-p nic.states=^down time.format="%H:%M CW %V" date.format="%a, %b %d %Y" -t night-powerline
```

#### General keybindings
| Keybinding | Command | Description 
| --- | --- | -- | 
| `win` + `Return` | exec alacritty | Get a terminal (floating) |
| `win` + `Shift` | kill |  Kill current window |
| `win` + space | exec rofi -show drun -columns 3  | Run application selector |

####  Focus keybindings
| Keybinding | Command | Description 
| --- | --- | -- | 
 | `win` + `j` | focus left | Get focus on the left window |
 | `win` + `h` | focus up | Get focus on the top window |
 | `win` + `k` | focus down | Get focus on the button window |
 | `win` + `,` | focus right | Get focus on the right window |
 | `win` +`left`| focus left | Get focus on the left window |
 | `win` +`up` | focus up | Get focus on the top window |
 | `win` +`down` | focus down | Get focus on the button window |
 | `win` +`right` | focus right | Get focus on the right window |
 
and more.

I like a mimimalistic theme such as the `night-powerline`. Make sure you have the **font-awesome** fonts installed. Otherwise, the used symbols could not be displayed. 

##### Change symbols
If you want to change the symbols, you can do this at line `85` and the following.

1. Go to [font awesome](https://fontawesome.com/)  and search for you icons
2. Click on the icon and copy the unicode at the top
3. Now, convert the unicode into the symbol using 

```
echo -e "\u[your unicode]"
```

The `\u` is not a *misstype*. It indicate the unicode sequence. 

### Application manager
#### Rofi
I switch and run applications using `rofi`.  I previously used `albert` but since `albert` has annoying bugs.  I decided to switch to rofi. Rofi search `$HOME/.config/rofi` for `config.rasi`.
The new config of rofi is pretty light but snappy and fast.
```
* {
  black:      #000000;
  red:        #eb6e67;
  green:      #95ee8f;
  yellow:     #f8c456;
  blue:       #6eaafb;
  mangenta:   #d886f3;
  cyan:       #6cdcf7;
  emphasis:   #50536b;
  text:       #dfdfdf;
  text-alt:   #b2b2b2;
  fg:         #abb2bf;
  bg:         #282c34;

  spacing: 0;
  background-color: transparent;

  font: "Knack Nerd Font 14";
  text-color: @text;
}

window {
  transparency: "real";
  fullscreen: true;
  background-color: #282c34dd;
}

mainbox {
  padding: 30% 30%;
}

inputbar {
  margin: 0px 0px 20px 0px;
  children: [prompt, textbox-prompt-colon, entry, case-indicator];
}

prompt {
  text-color: @blue;
}

textbox-prompt-colon {
  expand: false;
  str: ":";
  text-color: @text-alt;
}

entry {
  margin: 0px 10px;
}

listview {
  spacing: 5px;
  dynamic: true;
  scrollbar: false;
}

element {
  padding: 5px;
  text-color: @text-alt;
  highlight: bold #95ee8f; /* green */
  border-radius: 3px;
}

element selected {
  background-color: @emphasis;
  text-color: @text;
}

element urgent, element selected urgent {
  text-color: @red;
}

element active, element selected active {
  text-color: @purple;
}

message {
  padding: 5px;
  border-radius: 3px;
  background-color: @emphasis;
  border: 1px;
  border-color: @cyan;
}

button selected {
  padding: 5px;
  border-radius: 3px;
  background-color: @emphasis;
}

```

I use the `oneDark` theme submited by the user.

### Gestures
I use various of gestures, since my touchpad support [multi-touch](https://en.wikipedia.org/wiki/Multi-touch). Use following gestures. Pretty much, they are mac like gestures e.g. you can change the workspace if you wipe with 3 fingers left or right. However, this only works if a minimum of 3 fingers are used.

| Gesture | Command 
| --- | --- |
| gesture swipe down	| rofi -show drun -columns 3 |
| gesture swipe left	| i3-msg "workspace prev" |
| gesture swipe right	| i3-msg "workspace next" |
| gesture pinch in |	xdotool key super+f |
| gesture pinch out |	xdotool key super+f |

and here is the **config**:
```
gesture swipe down	rofi -show drun -columns 3
gesture swipe left	i3-msg "workspace prev"
gesture swipe right	i3-msg "workspace next"
gesture pinch in	xdotool key super+f
gesture pinch out	xdotool key super+f
```