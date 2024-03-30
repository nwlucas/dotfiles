{
  # https://macos-defaults.com/finder/
  system.defaults.CustomUserPreferences."com.apple.finder" = {
    # Add a quit menu option to the Finder.
    QuitMenuItem = true;

    # Show all file extensions in the Finder.
    AppleShowAllExtensions = true;

    # Show hidden files in the Finder. Use 'cmd+shift+.' to toggle.
    AppleShowAllFiles = true;

    # Show path bar in the bottom of the Finder windows
    ShowPathbar = true;

    # Change the default finder view.
    # - “icnv” = Icon view (default)
    # - “Nlsv” = List view
    # - “clmv” = Column View
    # - “Flwv” = Gallery View
    FXPreferredViewStyle = "“clmv”";

    # Keep folders on top when sorting by name
    _FXSortFoldersFirst = true;

    # Set the default search scope when performing a search. Use “SCcf” to
    # default to current folder. The default is unset (“This Mac”).
    FXDefaultSearchScope = "SCcf";

    # Automatically empty bin after 30 days
    FXRemoveOldTrashItems = true;

    # Choose whether to display a warning when changing a file extension.
    FXEnableExtensionChangeWarning = false;

    # Choose whether the default file save location is on disk or iCloud
    NSDocumentSaveNewDocumentsToCloud = true;

    # Always show folder icon before title in the title bar
    showWindowTitlebarIcons = true;

    # Show status bar at bottom of finder windows with item/disk space
    # stats. The default is false.
    ShowStatusBar = true;

    # Whether to show the full POSIX filepath in the window title. The
    # default is false.
    _FXShowPosixPathInTitle = false;

    # Desktop
    # Whether to show icons on the desktop or not.
    CreateDesktop = false;

    # Keep folders on top when sorting
    _FXSortFoldersFirstOnDesktop = true;

    # Show hard disks on desktop
    ShowHardDrivesOnDesktop = false;

    # Hide external disks on desktop
    ShowExternalHardDrivesOnDesktop = true;

    # Hide removable media (CDs, DVDs and iPods) on desktop
    ShowRemovableMediaOnDesktop = true;

    # Show connected servers on desktop
    ShowMountedServersOnDesktop = false;
  };
}
