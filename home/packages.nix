{ pkgs, ... }: {
  home.packages = with pkgs; [
    # CLI
    ripgrep
    gh
    helix
    zellij
    starship
    yazi
    nushell
    just
    zoxide
    eza
    bat
    fzf
    opencode
    ollama
    jq

    # Languages
    python3
    uv          # python venv + package manager
    rustup      # rust toolchain manager (cargo, rustc via rustup install stable)
    typst       # typesetting system
    elan        # lean toolchain manager (lean, lake via elan default stable)

    # Audio
    # liblo + pkg-config: needed so `uv tool install` can build pyliblo3,
    # Vortex's OSC bridge to SuperDirt (see darwin/common.nix's supercollider
    # cask). Vortex itself isn't in nixpkgs; installed via uv, not here.
    liblo
    pkg-config

    # GUI
    alacritty
    zed-editor
    aerospace
    raycast
    # ghostty: macOS build not in nixpkgs (linux-only); declared as brew cask
    # typewhisper, cleanmymac: declared as brew casks in darwin/common.nix
  ];
}
