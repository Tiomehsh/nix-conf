{pkgs, ...}: {
  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    font = {
      name = "Maple Mono NF CN";
      size = 12;
    };

    settings = {
      shell = "${pkgs.fish}/bin/fish";
      editor = "${pkgs.neovim}/bin/nvim";

      tab_bar_style = "hidden";

      background_opacity = "0.8";
      background_blur = 32;
      window_padding_width = 5;
      hide_window_decorations = "yes";
      confirm_os_window_close = 0;

      cursor_blink_interval = 0;
      cursor_trail = 20;
      cursor_trail_decay = "0.0 0.3";

      copy_on_select = "yes";
      mouse_hide_wait = "0.5";

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

      "ctrl+shift+equal" = "change_font_size all +2.0";
      "ctrl+shift+plus" = "change_font_size all +2.0";
      "ctrl+shift+minus" = "change_font_size all -2.0";
      "ctrl+shift+backspace" = "change_font_size all 0";
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
