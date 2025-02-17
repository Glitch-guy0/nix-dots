rec{
  admin = false; # root User?
  autologin = false;
  username = "glitch";
  homedir = "/home/${username}";
  groups = ["networkmanager" "wheel" ];
}