function cdd --description "cd into directory given and subsequent subdirectories." 
    if [ (count $argv) -eq 0 ]
        echo "No directory provided. Changing to home directory (~)."
        cd ~
    else
        set -l target_path (string join / -- $argv)

        builtin cd "$target_path"
    end
end
