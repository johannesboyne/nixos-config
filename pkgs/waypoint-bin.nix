{ callPackage ? pkgs.callPackage
, pkgs ? import <nixpkgs> {} }:

callPackage (import ./hashicorp/generic.nix) {
  name = "waypoint";
  version = "0.7.1";
  sha256 = "0408d82cdef5e29ff62397ccc53e5442234dfbda231c41b0d95739f11e2c7980";
}
