{pkgs, ...}: let
  myPlasma =
    pkgs.writeTextFile {
      name = "my-plasma-session.desktop";
      destination = "/share/wayland-sessions/plasma-lingshin.desktop";
      text = ''
        [Desktop Entry]
        Name=Plasma (Lingshin)
        Exec=dbus-run-session startplasma-wayland
        DesktopNames=KDE
      '';
    }
    // {
      providedSessions = ["plasma-lingshin"];
    };
in {
  qt.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.sessionPackages = [myPlasma];
}
