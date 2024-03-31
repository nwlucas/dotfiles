{ pkgs, user, ... }:

{
  imports = [
    # ./yabai
    ./dock.nix
    ./finder.nix
    ./keyboard.nix
    ./login.nix
    ./pkgs.nix
    ./safari.nix
    ./trackpad.nix
  ];

  system.stateVersion = 4;
  system.activationScripts.postUserActivation.text = ''
  # activateSettings -u will reload the settings from the database and apply them to the current session,
  # so we do not need to logout and login again to make the changes take effect.
  /System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
'';

  # User that runs the garbage collector.
  nix.gc.user = user;
  services.nix-daemon = {
    enable = true;
  };

  system.defaults.NSGlobalDomain = {
    AppleInterfaceStyle = "Dark";
    AppleMeasurementUnits = "Inches";
    AppleTemperatureUnit = "Fahrenheit";
    "com.apple.mouse.tapBehavior" = true;
  };
}
