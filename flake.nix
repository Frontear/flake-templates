{
  description = "Templates for a development workflow on Nix";

  outputs = { ... }: {
    templates = {
      "c" = {
        path = ./lang/c;
        description = "Standard C environment";
      };
    };
  };
}
