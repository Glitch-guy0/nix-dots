rec{
  admin = false; # root User?
  autologin = true;
  username = "glitch";
  homedir = "/home/${username}";
  groups = ["networkmanager" "wheel" ];
}