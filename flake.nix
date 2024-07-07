{
  description = "Templates for a development workflow on Nix";

  inputs.nixpkgs-lib.url = "github:nix-community/nixpkgs.lib";

  outputs = { self, nixpkgs-lib, ... }:
  let
    lib = ((import ./nix { inherit (nixpkgs-lib) lib; }).lib);
  in {
    templates = lib.mkTemplates [
      "c"
      "cpp"
      "python"
    ] self;
  };
}
