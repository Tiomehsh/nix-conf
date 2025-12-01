{pkgs, ...}: {
  nix.settings = {
    substituters = ["https://niri.cachix.org"];
    trusted-public-keys = ["niri.cachix.org-1:Wv0OmO7PsuJ9OVbn9fJmeSPZGQBq3tqJ1y7n+nxsz10="];
  };

  programs.niri = {
    enable = true;
  };
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    wl-clipboard
    waybar
    mako
    fuzzel
    kitty
  ];
}
