{ lib, ... }:

let
  # https://brew.sh
  initBrew = ''eval "$(/opt/homebrew/bin/brew shellenv)"'';
in

{
  # Change the default shell to zsh
  home.activation = {
    setDefaultShell = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      if [[ "$SHELL" != *zsh ]]
      then
        $DRY_RUN_CMD /usr/bin/chsh -s /run/current-system/sw/bin/zsh
      fi
    '';
  };

  programs = {
    zsh.interactiveShellInit = ''
      # Homebrew
      if test -e /opt/homebrew/bin/brew;
        ${initBrew};
      end
    '';
  };
}
