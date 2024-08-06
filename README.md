Custom neovim template

## Use it
You can use this template with the following command:

```bash
[ -d $HOME/.config/nvim ] && mv $HOME/.config/{nvim,nvim.old}; \
    git clone https://github.com/tokiory/neovim-boilerplate $HOME/.config/nvim
```


# Packed Plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [neo-tree](https://github.com/nvim-tree/nvim-tree.lua) (*optional, you should uncomment it*)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [lspkind](https://github.com/onsails/lspkind.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [Tree Sitter](https://github.com/tree-sitter/tree-sitter)
- [vitesse](https://github.com/2nthony/vitesse.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)

## Opionated standards
- Use lazy.nvim as a plugin manager, it is fast, simple and has a nice user interface;
- Use Mason with mason-lspconfig to manage LSP servers;
- Use which-key to handle all keyboard shortcuts because it's easy and fun to use;
- Use mini.files as your main explorer because it is fast and minimalistic;
- You can use the standard (de facto) NeoTree as the main explorer, just uncomment it and comment out mini.files;
- Use cmp.nvim with lspkind as a completion manager as it provides great source support for completion;
- Use gitsigns to work with git stashes because it gives good highlights;
- Use Trouble nvim as an alternative to quicklist because it has a nice interface;
- Use Treesitter (actually standard) to search for files, content and other pickers;
- Use your favorite theme, you can comment Vitesse, there are several configs for different themes;
- Use mini.nvim for editor utilities because mini.nvim provides a great experience and is as minimalistic as possible;

## 💡 Tips
- Rewrite it from scratch (it’s a template, cmon), you can replace each plugin with your favorite one;
- RTFM, each plugin has a comment with a link to the repository;
- Don't be afraid to break something. Remember: you can fork this repo as much as you like, just don't be afraid to break it;

[![Star History Chart](https://api.star-history.com/svg?repos=tokiory/neovim-boilerplate&type=Date)](https://star-history.com/#tokiory/neovim-boilerplate&Date)
