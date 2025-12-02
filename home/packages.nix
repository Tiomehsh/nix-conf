{pkgs, ...}: {
  home.packages = with pkgs; [
    # niri 桌面环境相关
    waybar
    mako
    fuzzel
    kitty
    swww

    # 截图工具
    grim
    slurp
  ];
}
