{
  config,
  pkgs,
  ...
}: {
  programs.niri = {
    settings = {
      prefer-no-csd = true;
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

      window-rules = [
        {
          draw-border-with-background = false;
        }
      ];

      layout = {
        gaps = 16;
        center-focused-column = "never";

        default-column-width = {proportion = 0.5;};

        preset-column-widths = [
          {proportion = 0.33333;}
          {proportion = 0.5;}
          {proportion = 1.0;}
        ];

        focus-ring = {
          width = 4;
          active.color = "#7fc8ff";
          inactive.color = "#505050";
        };
      };

      # === 快捷键绑定 ===
      binds = {
        "Mod+T".action.spawn = ["kitty"];
        "Mod+Space".action.spawn = ["dms" "ipc" "call" "spotlight" "toggle"];
        "Mod+W".action.close-window = {};
        "Mod+Shift+E".action.quit = {};

        "Mod+M".action.maximize-column = {};

        "Mod+Shift+F".action.fullscreen-window = {};

        "Mod+R".action.switch-preset-column-width = {};

        "Mod+Minus".action.set-column-width = "-10%";
        "Mod+Equal".action.set-column-width = "+10%";

        "Mod+Shift+Minus".action.set-window-height = "-10%";
        "Mod+Shift+Equal".action.set-window-height = "+10%";

        "Mod+Left".action.focus-column-left = [];
        "Mod+Right".action.focus-column-right = [];

        "Mod+H".action.focus-column-left = [];
        "Mod+L".action.focus-column-right = [];

        "Mod+Down".action.focus-workspace-down = {};
        "Mod+Up".action.focus-workspace-up = {};

        "Mod+J".action.focus-workspace-down = {};
        "Mod+K".action.focus-workspace-up = {};
        "Mod+WheelScrollDown".action.focus-workspace-down = {};
        "Mod+WheelScrollUp".action.focus-workspace-up = {};

        "Mod+Shift+Left".action.move-column-left = [];
        "Mod+Shift+Right".action.move-column-right = [];

        "Mod+Shift+H".action.move-column-left = [];
        "Mod+Shift+L".action.move-column-right = [];

        "Mod+Shift+Down".action.move-window-to-workspace-down = {};
        "Mod+Shift+Up".action.move-window-to-workspace-up = {};

        "Mod+Shift+J".action.move-window-to-workspace-down = {};
        "Mod+Shift+K".action.move-window-to-workspace-up = {};
        "Mod+P".action.spawn = ["sh" "-c" "grim -g \"$(slurp)\" - | wl-copy"];
      };

      spawn-at-startup = [
        {command = ["dms" "run"];}
      ];
    };
  };
}
