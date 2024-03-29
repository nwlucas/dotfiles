channels: final: prev: {
  __dontExport = true;

  inherit (channels.unstable)

    # NixOS
    nix-ld

    # Terminal
    bat
    fd
    fzf
    navi
    starship
    wezterm
    zoxide
    ripgrep
    eza

    # Other
    nerdfonts
    ;
}
