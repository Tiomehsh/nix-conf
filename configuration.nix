{
  imports = [
    ./hardware-configuration.nix
    ./host
  ];

  system.stateVersion = "25.11"; # Did you read the comment?
}
