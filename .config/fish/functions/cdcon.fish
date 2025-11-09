function cdcon --description "cd into ~/.config/ and optional subfolders"
    set -l base_dir "$HOME/.config"
    set -l target_dir ""

    # Check if arguments were provided
    if count $argv > 0
        # Build the full path using string join
        set -l sub_path (string join / -- $argv)
        set target_dir "$base_dir/$sub_path"
    else
        set target_dir "$base_dir"
    end

    # DEBUG: See what the full path is before calling cd
    # echo "DEBUG: Attempting to change directory to: \"$target_dir\""

    # Use cd and handle potential errors
    # Quoting "$target_dir" is crucial
    cd "$target_dir"

end
