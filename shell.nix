{ pkgs ? import (builtins.fetchTarball {
  name = "master-2023-10-28";
  url = "https://github.com/nixos/nixpkgs/archive/b30e97ace2945f9ddcf1b233e04d45ef3c511d9b.tar.gz";
}) {
  config.allowUnfree = true;
} }:

with pkgs;

mkShell {
  buildInputs = [
    bun
    gnupg
    nodejs_20
    postgresql
    redis
  ];

  shellHook = ''source ./shell.sh'';
}
