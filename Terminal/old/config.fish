if status is-interactive
    # Commands to run in interactive sessions can go here
end
source ~/.oh-my-fish/themes/emoji-powerline/fish_prompt.fish
source ~/.oh-my-fish/themes/emoji-powerline/fish_right_prompt.fish
# Carrega o prompt emoji-powerline manualmente
source ~/.oh-my-fish/themes/emoji-powerline/fish_prompt.fish
source ~/.oh-my-fish/themes/emoji-powerline/fish_right_prompt.fish

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
