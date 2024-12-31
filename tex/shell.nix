{ 
	pkgs ? import <nixpkgs> {
		inherit system;
	}, system ? builtins.currentSystem}:
let
	texlive-custom = pkgs.texlive.combine{
		inherit (pkgs.texlive) scheme-small luatexja haranoaji;
	};
in
pkgs.mkShell {
	pure = true;
	buildInputs = with pkgs; [
		git
		texlive-custom
	];
	shellHook = ''
		echo "TeX Develop Environment is Activated"
	'';
}
