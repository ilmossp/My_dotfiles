if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/ilyass/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

#paths
set -gx fish_user_paths /home/ilyass/.local/bin/ $fish_user_paths
set -x PIPENV_IGNORE_VIRTUALENVS 1

#cargo
export PATH="$HOME/.cargo/bin:$PATH"


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true

# zoxide
zoxide init fish | source
