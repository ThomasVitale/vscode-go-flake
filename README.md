# VS Code Go - Nix Flake

A [Nix Flake](https://nixos.wiki/wiki/flakes) to install the [VS Code with Extensions](https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/editors/vscode/vscode.nix) Nix package with pre-configured extensions to use for Go projects.

## How to use it

### Nix

Using [Nix](https://zero-to-nix.com/concepts/nix/), you can install the package as follows:

```shell
nix profile install github:thomasvitale/vscode-go-flake
```

### Flox

Using [Flox](https://flox.dev), you can install the package in your development environment as follows:

```shell
flox install github:thomasvitale/vscode-go-flake
```

## How to build it

Using [nix](https://zero-to-nix.com/concepts/nix/), you can build the flake and generate a lock file. Whenever the flake is updated with a new version, this command needs to be run again.

```shell
nix build --extra-experimental-features flakes --extra-experimental-features nix-command
```
