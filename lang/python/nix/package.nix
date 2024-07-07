{
  lib,
  buildPythonApplication,
  setuptools,
}:
buildPythonApplication {
  pname = "app";
  version = "0.1.0";

  src = lib.cleanSource ../.;

  propagatedBuildInputs = [];

  pyproject = true;
  build-system = [
    setuptools
  ];
    
  meta = with lib; {
    description = "...";
    homepage = "...";
    #license = licenses.SET_THIS;
  };
}
