{
  # extraPlugins = with pkgs; [ vimPlugins.nvim-jdtls ];
  plugins = {
    rainbow-delimiters.enable = true; # This gives every parenthesis a different color
    treesitter = {
      enable = true; # Fancy Syntax highlighting plugin
      settings.highlight.enable = true; # actually enabled highlighting
    };
    comment.enable = true; # Provides easy keybindings to comment a line or multiple lines
    airline.enable = true; # Fancy statusbar
    todo-comments.enable = true; # Shows the TODO comments in a colorful way
    nvim-autopairs = {
      enable = true; # Bracket autoclose plugin
      settings = {
        checkTs = true;
      };
    };
    lsp = {
      enable = true;
      servers = {
        gopls.enable = true; # Golang LSP
        rust_analyzer = {
          enable = true; # Rust LSP
          installRustc = false;
          installCargo = false;
        };
        nil_ls.enable = true; # Nix LSP
        jsonls.enable = true; # JSON LSP
        yamlls.enable = true; # YAML LSP
        # pylsp.enable = true; # Python LSP
        clangd.enable = true; # C/C++ LSP
        templ.enable = true; # Templ (Go HTML templating) LSP
        jdtls.enable = true; # java
        hls = { # Haskell LSP
          enable = true; 
          installGhc = true;
        };
      };
    };
    web-devicons.enable = true; # icons in telescope etc.
    lsp-format.enable = true;
    telescope = {
      enable = true;
      keymaps = {
        "<leader>gf" = {
          action = "git_files";
          options.desc = "Telescope git files";
        };
        "<leader>ff" = {
          action = "find_files";
          options.desc = "Telescope files generally";
        };
        "<leader>gg" = {
          action = "live_grep";
          options.desc = "Telescope live grep";
        };
      };
    };
    harpoon.enable = true;
  }; 
}
