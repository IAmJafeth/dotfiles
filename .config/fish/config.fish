set fish_greeting

alias vim=nvim

set -Ua fish_user_paths /Users/jafeth.garro/Scripts
set -gx VISUAL nvim

if status is-interactive
    if command -q rvm
        rvm default >/dev/null 2>&1
    end

    if test "$TERM_PROGRAM" != "zed"
        oh-my-posh init fish --config ~/.config/omp/themes/zen.toml | source
        fastfetch
    end
end
