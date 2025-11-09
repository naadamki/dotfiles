function cdd
    set -l target_path (string join / -- $argv)

    builtin cd "$target_path"
end
