{ ... }: {
  perSystem = { pkgs, ... }: {
    devShells.default = import ./shell.nix { inherit pkgs; };

    packages.default = pkgs.python3Packages.callPackage ./package.nix { };
  };
}
