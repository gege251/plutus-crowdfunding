########################################################################
# default.nix -- The top-level nix build file for plutus-crowdfunding.
#
# This file defines various attributes that are used for building and
# developing plutus-crowdfunding.
#
########################################################################

let
  # Here a some of the various attributes for the variable 'packages':
  #
  # { pkgs
  #   plutus-crowdfunding: {
  #     haskell: {
  #       project # The Haskell project created by haskell-nix.project
  #       packages # All the packages defined by our project, including dependencies
  #       projectPackages # Just the packages in the project
  #     }
  #     hlint
  #     cabal-install
  #     stylish-haskell
  #     haskell-language-server
  #   }
  # }
  packages = import ./nix;

  inherit (packages) pkgs plutus-crowdfunding;
  project = plutus-crowdfunding.haskell.project;
in
{
  inherit pkgs plutus-crowdfunding;

  inherit project;
}
