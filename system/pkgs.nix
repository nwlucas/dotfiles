{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wezterm

    # Utils
    cmake
    coreutils
    curl
    fzf
    git
    gnumake
    gnupg
    httpie
    killall
    lsof
    neofetch
    ripgrep
    unzip
    eza
    bat
    vim
    zoxide
  ];
}
