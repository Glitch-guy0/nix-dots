{config, pkgs, ...}:
{

  home.packages = with pkgs;[
    brave
  ];

  
  # git
  programs.git = {
    enable = true;
    userName = "Glitch-guy0";
    userEmail = "prajwalm9845@gmail.com";
  };

  # vscode
  programs.vscode = {
    enable = true;
    # extentions = [];
  };
}