{
  description = "Templates for a development workflow on Nix";

  outputs = { ... }: {
    templates = {
      "c" = {
        path = ./lang/c;
        description = "Standard C environment";
      };

      "cpp" = {
        path = ./lang/cpp;
        description = "Standard C++ environment";
      };

      "python" = {
        path = ./lang/python;
        description = "Standard Python environment";
      };
    };
  };
}
