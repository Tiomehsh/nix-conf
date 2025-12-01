{...}: {
  imports = [./plasma.nix ./niri.nix];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    settings.General.DisplayServer = "wayland";
  };
}
