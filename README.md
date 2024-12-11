# The s0r3fig config

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/ellisonleao/nvim-plugin-template/lint-test.yml?branch=main&style=for-the-badge)
![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)

All of s0r3fig conviently in a single plugin!

## Using it

Lazy: `return{'s0r3-glitch/s0r3fig', import=s0r3fig.plugins}`

## Features and structure

- automatically downloads all the plugins I use
- automatically configures the plugins
- has the Terminal backgrounds I use

### Plugin structure

```
.
├── lua
│   ├── s0r3fig
│   │   ├── plugins.lua
│   │   ├── vim-options.lua
│   │   ├── ftplugin
│   │   │   ├── java.lua
│   │   ├── TerminalBG
│   │   └── plugins
│   │       ├── configs
│   │           └── *.lua
│   │       ├── other
│   │           └── *.lua
│   │       └── *.lua
│   └── s0r3fig.lua
├── Makefile
├── README.md
├── tests
│   ├── minimal_init.lua
│   └── plugin_name
│       └── plugin_name_spec.lua
```
## Notes
This config requires node, npm, rust, a C compiler, and probably other things that I forgot. None of these requirements are resolved by this plugin/config or any of my other nvim repos.

In my config I use a custom fork of LazyVim that is almost never up-to-date to the lastest LazyVim version. This "highly" customized version of LazyVim removes a handful of plugins within LazyVim and disables most of the default keybindings. Some of the noteable changes I have made are 

- Removed whatever tree it uses since I use nvim-tree
- Has my own custom coloring (pretty sure I stole it from someone)
- Has my username on start up 
- Automatically opens the directory tree window and sets it as the active one

### TODO

There is a lot I would like to do with my config so i might as well make a list of them. Will I ever complete these? No idea but I would like to. 

- Command to open the s0r3fig folder for easy editing anywhere
- Completely custom bottom bar
- Resolve dependancies automatically
- Update some stuff in LazyVim that I am getting yelled at about