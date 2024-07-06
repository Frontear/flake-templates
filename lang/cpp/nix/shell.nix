let
  lock = builtins.fromJSON (builtins.readFile ../flake.lock);
  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${lock.nodes.nixpkgs.locked.rev}.tar.gz";
    sha256 = lock.nodes.nixpkgs.locked.rev;
  };
in
{
  pkgs ? import nixpkgs {}
}:
pkgs.mkShell {
  packages = with pkgs; [
    # Debugger
    gdb

    # LSP
    clang-tools

    # Linux C manual
    man-pages
  ];
}
