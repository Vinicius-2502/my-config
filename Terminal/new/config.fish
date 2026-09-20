if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Prompt estilo Garuda (starship)
if type -q starship
    starship init fish | source
end

# Executa o Fastfetch automaticamente
if type -q fastfetch
    fastfetch
end

fish_add_path /home/vini/.spicetify
set -x NVM_DIR $HOME/.nvm


# pnpm
set -gx PNPM_HOME "/home/vini/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# opencode
fish_add_path /home/vini/.opencode/bin

# Maven
fish_add_path /home/vini/.local/opt/maven-mvnd-1.0.5-linux-amd64/bin
