{pkgs, ...}: {
  programs.nvf.settings.vim = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = false;
      fold = false;
    };
  };
}
