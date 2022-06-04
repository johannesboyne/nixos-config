{ pkgs, ... }:

{
  # https://github.com/nix-community/home-manager/pull/2408
  environment.pathsToLink = [ "/share/fish" ];

  console = {
    keyMap = "de";
  };

  i18n = {
    defaultLocale = "en_US.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  users.users.johannesboyne = {
    isNormalUser = true;
    home = "/home/johannesboyne";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$6$UL7TKDeZ3C0r$MxLP9ZpB3wa09cPJ2NeLTnI8qtDlN.MYMFbmXXr2DojwokqiYOpzbOflQTz6zvgPJwTe5R83lKhoDlkMJ7xJo1";
  };

  nixpkgs.overlays = import ../../lib/overlays.nix ++ [
    (import ./vim.nix)
  ];
}
