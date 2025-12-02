{inputs, ...}: {
  imports = [
    ./niri.nix
    ./kitty.nix
    ./nvim.nix
    ./fonts.nix
    ./theme.nix
    ./plasma.nix
    ./packages.nix
    inputs.dms.homeModules.dankMaterialShell.default
  ];

  programs.dankMaterialShell = {
    enable = true;
    # See upstream README for more options (theme colors, shell choices, etc.)
  };

  home.stateVersion = "25.11";
}
