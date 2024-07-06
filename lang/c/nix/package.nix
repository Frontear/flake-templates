{
  stdenv,
  lib,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "app";
  version = "0.1.0";

  src = lib.cleanSource ../.;

  buildPhase = ''
    $CC -o $pname src/main.c
  '';

  installPhase = ''
    mkdir -p $out/bin

    install -Dm755 $pname $out/bin
  '';

  meta = with lib; {
    description = "...";
    homepage = "...";
    #license = licenses.SET_THIS;
    mainProgram = finalAttrs.pname;
  };
})
