{pkgs, ...}: {
  users.users.tiome = {
    isNormalUser = true;
    extraGroups = ["wheel"]; # Enable ‘sudo’ for the user.
    shell = pkgs.fish;
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOYyIMjz3x8AEc6hH4RjtMH1n/u7855HRBQvtMLH/TP/ 4hhuang@4HMacBook-Pro.local"
    ];
  };
}
