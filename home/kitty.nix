{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    font = {
      name = "Maple Mono NF CN";
      size = 20;
    };

    settings = {
      # --- 核心设置 ---
      shell = "${pkgs.fish}/bin/fish";
      editor = "${pkgs.neovim}/bin/nvim";

      tab_bar_style = "hidden";

      background_opacity = "0.8";
      background_blur = 32;
      window_padding_width = 5;
      hide_window_decorations = "yes"; # 去掉标题栏
      confirm_os_window_close = 0; # 关闭时不询问，直接关

      # --- 光标 (保留你的拖尾特效) ---
      cursor_blink_interval = 0;
      cursor_trail = 20;
      cursor_trail_decay = "0.0 0.3";

      # --- 交互 ---
      copy_on_select = "yes";
      mouse_hide_wait = "0.5";

      # --- 字体微调 (Maple Mono 特有配置) ---
      "modify_font cell_width" = "100%";
      "modify_font cell_height" = "105%";
      "font_features MapleMono-NF-CN-Regular" = "+cv01 +ss02 +ss04 +ss05 +zero";
      "font_features MapleMono-NF-CN-Bold" = "+cv01 +ss02 +ss04 +ss05 +zero";
      "font_features MapleMono-NF-CN-Italic" = "+cv01 +ss02 +ss04 +ss05 +zero";
      "font_features MapleMono-NF-CN-BoldItalic" = "+cv01 +ss02 +ss04 +ss05 +zero";
    };

    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";

      # 字体缩放
      "ctrl+shift+equal" = "change_font_size all +2.0";
      "ctrl+shift+plus" = "change_font_size all +2.0";
      "ctrl+shift+minus" = "change_font_size all -2.0";
      "ctrl+shift+backspace" = "change_font_size all 0"; # 恢复默认

      # 滚动 (如果你不用鼠标滚轮的话)
      "ctrl+shift+up" = "scroll_line_up";
      "ctrl+shift+down" = "scroll_line_down";
      "ctrl+shift+page_up" = "scroll_page_up";
      "ctrl+shift+page_down" = "scroll_page_down";
    };

    shellIntegration.enableZshIntegration = true;
  };
  # 保持点击文件用 nvim 打开的功能
  xdg.configFile."kitty/open-actions.conf".text = ''
    protocol file
    mime text/*
    action launch --type=overlay ${pkgs.neovim}/bin/nvim $FILE_PATH
  '';
}
