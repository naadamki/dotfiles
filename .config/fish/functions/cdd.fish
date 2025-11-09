function cdd --description "cd into directory given and subsequent subdirectories." 
    set -l target_path (string join / -- $argv)

    builtin cd "$target_path"
end
