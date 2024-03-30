{ pkgs, user, ... }:

{
  users.users.${user} = {
    home = "/Users/${user}";
    shell = pkgs.zsh;
  };

  # Apple menu > System Preferences > Users and Groups > Login Options
  system.defaults.loginwindow = {
    # Allow users to login to the machine as guests using the Guest
    # account. Default is true.
    GuestEnabled = false;

    # Hides the Restart button on the login screen. Default is false.
    RestartDisabled = false;

    # Hides the Shut Down button on the login screen. Default is false.
    ShutDownDisabled = false;

    # If set to true, the Power Off menu item will be disabled when the
    # user is logged in. Default is false.
    PowerOffDisabledWhileLoggedIn = false;
  };

  system.defaults.CustomUserPreferences = {
    "com.apple.screensaver" = {
      # Require password immediately after sleep or screen saver begins
      askForPassword = 1;
      askForPasswordDelay = 0;
    };
  };

  security.pam.enableSudoTouchIdAuth = true;
}
