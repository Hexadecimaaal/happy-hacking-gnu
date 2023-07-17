{ pkgs ? import <nixpkgs> {} }: with pkgs; stdenv.mkDerivation {
  pname = "happy-hacking-gnu";
  version = "snapshot";
  nativeBuildInputs = [ cmake clang gdb ];
  buildInputs = [ udev ];
  src = ./.;
  cmakeBuildType = "Debug";
  installPhase = "
    mkdir -p $out/bin
    cp hhg $out/bin/
  ";
}
