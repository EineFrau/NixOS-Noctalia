{
  config,
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    neovim
    typescript-language-server
    lua-language-server
    python3Packages.pynvim
    python3Packages.python-lsp-server
    python3Packages.pylsp-mypy
    python3Packages.python-lsp-black
    ruff
    bash-language-server
    vim-language-server
    yaml-language-server
    asm-lsp
    gopls
    golangci-lint-langserver
    live-server
    kdePackages.qtdeclarative
    rust-analyzer
  ];
}
