{ ... }:

# https://github.com/fastfetch-cli/fastfetch/discussions/971#discussioncomment-16141981
{
  programs.fastfetch = {
    enable = true;

    settings = {
      display = {
        key = {
          width = 10;
        };
        separator = "";
      };

      logo = {
        type = "auto";
        source = "~/fastfetch.png";
        height = 10;
        preserveAspectRatio = true;
        padding = {
          top = 1;
          left = 1;
          right = 5;
        };
      };

      modules = [
        "break"
        {
          type = "command";
          key = "󰀄 USER";
          keyColor = "#ccccff";
          text = "echo $USER@$(hostnamectl hostname)";
        }
        {
          type = "os";
          key = "󰣇 OS";
          keyColor = "#c9cfff";
          format = "{name} {version-id}";
        }
        {
          type = "command";
          key = "󰌽 KER";
          keyColor = "#c6d2ff";
          text = "echo $(uname -r | cut -d- -f1) $(uname -m)";
        }
        {
          type = "packages";
          key = "󰏗 PKG";
          keyColor = "#c4d4ff";
          format = "{all}";
        }
        {
          type = "terminal";
          key = "󰆍 TERM";
          keyColor = "#c1d7ff";
          format = "{pretty-name}";
        }
        {
          type = "shell";
          key = "󰞷 SH";
          keyColor = "#c0d9ff";
          format = "{pretty-name}";
        }
        {
          type = "uptime";
          key = "󰥔 UP";
          keyColor = "#bedcff";
        }
        {
          type = "memory";
          key = "󰍛 RAM";
          keyColor = "#bddeff";
          format = "{used} / {total} ({percentage})";
        }
        {
          type = "disk";
          folders = "/";
          key = "󰋊 SSD";
          keyColor = "#bde0fe";
          format = "{size-used} / {size-total} ({size-percentage})";
        }
        {
          type = "custom";
          format = builtins.fromJSON ''"\u001b[90m \u001b[91m \u001b[92m \u001b[93m \u001b[94m \u001b[95m \u001b[96m \u001b[97m"'';
        }
        "break"
      ];
    };
  };
}