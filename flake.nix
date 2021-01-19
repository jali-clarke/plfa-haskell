{
  outputs = {self, nixpkgs}:
    let
      outputs' = system:
        let
          pkgs = nixpkgs.legacyPackages."${system}";
        in
        {
          devShell."${system}" = pkgs.mkShell {
            name = "plfa-haskell-shell";
            buildInputs = [
              pkgs.ghc
              pkgs.cabal-install
            ];
          };
        };
    in
    outputs' "x86_64-linux";
}
