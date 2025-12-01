{pkgs, ...}: {
  home.packages = with pkgs;
  with kdePackages; [
    kleopatra
    whitesur-kde
    application-title-bar
  ];
}
