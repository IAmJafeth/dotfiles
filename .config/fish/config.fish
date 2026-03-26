set fish_greeting

alias vim=nvim

set -Ua fish_user_paths /Users/jafeth.garro/Scripts

if status --is-interactive
    function __load_jenv --on-event fish_prompt
        functions -e __load_jenv
        command -q jenv; and jenv init - | source
    end
end


if status is-interactive

    if test "$TERM_PROGRAM" != "zed"
        oh-my-posh init fish --config ~/.config/omp/themes/zen.toml | source
        fastfetch
    end
end
