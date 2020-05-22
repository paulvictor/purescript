let
  nixpkgs = import (builtins.fetchTarball https://github.com/NixOS/nixpkgs-channels/archive/nixos-18.09.tar.gz) {};
in
  with nixpkgs;
  nixpkgs.mkShell {
    buildInputs = [
      haskellPackages.stack
      haskell.compiler.ghc864
      zlib ];
  }
