{pkgs, ...}: {
  home.packages = with pkgs; [
    # 截图工具
    grim
    slurp
  ];
}
