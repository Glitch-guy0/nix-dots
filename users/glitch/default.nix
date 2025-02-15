{}:
let 
  this = import ./config.nix;
in
{
  inherit this;
}