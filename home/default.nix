{...}: {
  imports = [
    ./niri.nix
    ./nvim.nix
    ./fonts.nix
    ./theme.nix
    ./plasma.nix
    ./packages.nix
  ];

  home.stateVersion = "25.11";
}
