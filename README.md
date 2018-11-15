# **tmux** Full of Vim

> A tmux config make you swim like in a Vim

-----------------

## Features

- Powerline theme; 
- Plugins easy management;
- Key bindings make you swim like in a vim;


## Plugins 

- **tmux** Plugin Manager: [tpm](https://github.com/tmux-plugins/tpm)
- **tmux** sensible for everyone: [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
- **tmux** environment persistence across os: [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
- **tmux** environment continuous and auto saving: [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)
- **tmux** copy to system clipboard: [tmux-yank](https://github.com/tmux-plugins/tmux-yank)
  > requires xsel/xclip for example in ubuntu to copy to system clipboard

- **tmux** key bindings for quick opening of a highlighted file or url: [tmux-open](https://github.com/tmux-plugins/tmux-open)


## Key bindings


#### Prefix `<Ctrl-a>`

- `<Ctrl-a>`: prefix(`Ctrl + a` + `<suffix>`)

#### Window 

- `<prefix>` + `,`: Rename window
- `<prefix>` + `&`: Close window
- `<prefix>` + `c`: Create window
- `<prefix>` + `n`: Next window
- `<prefix>` + `p`: Previous window
- `<prefix>` + `<Ctrl-a>`: Last window
- `<prefix>` + `[0...9]`: Switch/select window by number


#### Panes

###### Split pane 

- `<prefix>` + `v` or `<prefix>` + `%`: Split vertically 
- `<prefix>` + `b` or `<prefix>` + `"`: Split horizontally 

###### Last pane

- `<prefix>` + `;`: Toggle last active pane

###### Pane by number

- `<prefix>` + `q`: Show pane numbers
- `<prefix>` + `q` + `[0...9]`: Switch/select pane by number

###### Vim like hjkl pane travel

- `<prefix>` + `h` or `<prefix>` + `←`: To left
- `<prefix>` + `j` or `<prefix>` + `↓`: To down 
- `<prefix>` + `k` or `<prefix>` + `↑`: To upup
- `<prefix>` + `l` or `<prefix>` + `→`: To rigt 

###### Move pane

- `<prefix>` + `<` or `<prefix>` + `{`: To left 
- `<prefix>` + `>` or `<prefix>` + `}`: To rigt 

###### Resize pane(default 10 lines each step)

- `<prefix>` + `<Ctrl-h>` or `<prefix>` + `<Ctrl-←>`: To left
- `<prefix>` + `<Ctrl-j>` or `<prefix>` + `<Ctrl-↓>`: To down
- `<prefix>` + `<Ctrl-k>` or `<prefix>` + `<Ctrl-↑>`: To upup
- `<prefix>` + `<Ctrl-l>` or `<prefix>` + `<Ctrl-→>`: To rigt

###### Zoom pane

- `<prefix>` + `z`: Toggle pane zoom
- `<prefix>` + `!`: Convert pane into a window

###### Close pane

- `<prefix>` + `x`: Close current pane


#### Copy mode vi

###### Enter copy mode 

- `<prefix>` + `[`: Copy mode(Then you can move like in Vim `hjkl`)

###### Within copy mode 

- `v` or `<space>`: Begin selection 
- `<Ctrl-v>`: Begin block(rectangle) selection 
- `r`: Rectangle toggle
- `y`: Copy selection
- `/`: Search forward
- `?`: Search backward


###### With in copy mode to open/search highlighted selection by @tmux-open

- `o`: Open highlighted selection 
- `<Ctrl-o>`: Open highlighted selection in `$EDITOR`(`export EDITOR=vim`)
- `<Shift-b>`: Search the highlighted selection in [baidu](https://www.baidu.com/s?wd=)
- `<Shift-s>`: Search the highlighted selection in [google](https://www.google.com/search?q=)
- `<Shift-d>`: Search the highlighted selection in [duckduckgo](https://duckduckgo.com/?q=) 


#### Reload / Restore 
 
- `<prefix>` + `r`: Reload tmux config(`:source-file ~/.tmux.conf`)
- `<prefix>` + `<Ctrl-r>`: Restore last saved tmux environment(`@tmux-resurrect`) 


#### Others

- `<prefix>` + `:`: Enter command mode 
- `<prefix>` + `?`: Show shortcuts help 
