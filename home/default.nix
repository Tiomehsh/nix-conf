{lib, ...}: {
  imports = [
    ./nvim.nix
    ./fonts.nix
    ./theme.nix
    ./plasma.nix
  ];

  home.stateVersion = "25.11";
}
