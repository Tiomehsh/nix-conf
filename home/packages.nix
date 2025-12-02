{pkgs, ...}: {
  home.packages = with pkgs; [
    # niri 桌面环境相关
    kitty
    # 截图工具
    grim
    slurp
  ];
}
