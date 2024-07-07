{
  lib,
  stdenv,

  gnumake,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "app";
  version = "0.1.0";

  src = lib.cleanSource ../.;

  nativeBuildInputs = [ gnumake ];

  meta = with lib; {
    description = "...";
    homepage = "...";
    #license = licenses.SET_THIS;
    mainProgram = finalAttrs.pname;
  };
})
