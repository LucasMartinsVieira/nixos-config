{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "zapnote";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "LucasMartinsVieira";
    repo = "zapnote";
    rev = "v${version}";
    hash = "sha256-lBSbt88+GAjvL9VXjRT3XDiVQr+51UOUnW7b6ij3Lts=";
  };

  cargoHash = "sha256-B+n7e8cb6TFcCfhv3qDStMegSuZUKRhvrXljBz595q4=";

  meta = {
    description = "Lightning-fast template-based note generator";
    homepage = "https://github.com/lucasmartinsvieira/zapnote";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "zn";
  };
}
