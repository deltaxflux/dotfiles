#!/usr/bin/env bash

if [ ! -d "$HOME/.tmux-themepack" ];then
  git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
fi

# Prepare tmux configuration
echo "tmux source-file /home/deltax/.tmux-themepack/powerline/default/red.tmuxtheme" >> $HOME/.zshrc
