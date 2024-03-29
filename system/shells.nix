{ pkgs, ... }:

{
  environment = {
    shells = [ pkgs.zsh ];
  };

  programs = {
    bash.enableCompletion = true;
    gnupg.agent.enable = true;

    zsh.enable = true;
    zsh.vendor.completions.enable = true;
  };
}
