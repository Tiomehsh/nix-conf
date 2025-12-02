{config, ...}: {
  programs.niri = {
    # 这里的 settings 会被转换成 config.kdl
    settings = {
      # === 输入设备配置 ===
      input = {
        keyboard.xkb.layout = "us";
        touchpad = {
          tap = true;
          dwt = true;
        };
      };

      outputs = {
        "Virtual-1" = {
          scale = 2.0;
        };
      };
      # === 布局配置 ===
      layout = {
        gaps = 16;
        center-focused-column = "never";
        default-column-width = {proportion = 0.5;};

        # 聚焦时的边框颜色
        focus-ring = {
          width = 4;
          active.color = "#7fc8ff";
          inactive.color = "#505050";
        };
      };

      # === 快捷键绑定 ===
      # 这里的 config.lib.niri.actions 是模块提供的辅助功能
      binds = with config.lib.niri.actions; {
        # 启动终端 (Kitty)
        "Mod+Return".action = spawn "kitty";

        # 启动程序菜单 (Fuzzel)
        "Mod+D".action = spawn "fuzzel";

        # 关闭当前窗口
        "Mod+Q".action = close-window;

        # 左右移动焦点
        "Mod+Left".action = focus-column-left;
        "Mod+Right".action = focus-column-right;

        # 移动窗口位置
        "Mod+Shift+Left".action = move-column-left;
        "Mod+Shift+Right".action = move-column-right;

        # 退出 Niri (相当于注销)
        "Mod+Shift+E".action = quit;

        # 截图 (依赖 grim 和 slurp)
      };

      # === 启动项 ===
      spawn-at-startup = [
        {command = ["dms" "run"];}
      ];
    };
  };
}
