{
  lib,
}:
let
  inherit (builtins) baseNameOf toString;
in rec {
  cleanSource = src: lib.cleanSourceWith {
    filter = name: type: let baseName = baseNameOf (toString name); in ! (
      baseName == "README.md"
    );
    src = lib.cleanSource src;
  };

  mkTemplates = attrs: self: lib.genAttrs attrs (x: {
    description = "standard ${x} environment.";
    path = "${self}/lang/${x}";
  });
}
