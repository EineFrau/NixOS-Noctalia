{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    git
    git-lfs
    eza
    github-cli
    fastfetch
    zip
    unzip
    btop
    cava
    cowsay
  ];

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      fastfetch

      function fish_prompt
          set_color brred
          echo -n "╭─"
          set_color brred
          echo -n "("
          set_color brmagenta
          echo -n (whoami)
          set_color normal
          echo -n "  "
          set_color brblue
          echo -n "NixOS"
          set_color brred
          echo -n "["
          set_color bryellow
          echo -n (prompt_pwd)
          set_color brred
          echo -n "]"
          echo -n ")"

          set gitroot (git rev-parse --is-inside-work-tree 2>/dev/null)
          if test "$gitroot" = "true"
              set branch (git branch --show-current 2>/dev/null)
              set_color brred
              echo -n " |"
              set_color green
              echo -n " 󰊢 "
              set_color magenta
              echo -n "$branch"
          end

         echo ""

          set_color brred
          echo -n "╰─ "
          set_color normal
      end
    '';

    shellAliases = {
      ls = "eza --icons";
      lt = "eza --icons --tree";
      la = "eza -a --icons";
      gc = "git clone";
      gs = "git status";
      gd = "git diff";
      ns = "sudo nixos-rebuild switch";
      hs = "home-manager switch --impure";
      n = "nvim";
      c = "clear";
      nh = "cd ~/.config/home-manager/ | n .";
      hsb = "home-manager switch -b backup --impure";
    };
  };

  programs.git.settings.user = {
    enable = true;
    name = "Ihr Name";
    email = "Ihre E-Mail";
  };
}
