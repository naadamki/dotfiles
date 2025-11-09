function cdc --description "cd into ~/.config/ and optional subfolders"
    
    # Function logic
    set -l base_dir "$HOME/.config"
    set -l target_dir ""

    # Check if arguments were provided
    if test (count $argv) -gt 0
        # Build the full path using string join
        set -l sub_path (string join / -- $argv)
        set target_dir "$base_dir/$sub_path"
    else
        set target_dir "$base_dir"
    end

    # Quoting "$target_dir" is crucial
    cd "$target_dir"

end
