{
  description = "VSCode with Go extensions";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          config.allowUnfree = true;
          inherit system;
        };

        vscode-with-extensions = pkgs.vscode-with-extensions.override {
          vscodeExtensions = with pkgs.vscode-extensions; [
            golang.go
            redhat.vscode-yaml
            visualstudioexptteam.vscodeintellicode
          ];
        };
      in
      {
        packages.default = vscode-with-extensions;
      }
    );
}