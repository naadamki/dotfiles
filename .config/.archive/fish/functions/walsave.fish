function walsave
    set -l cache_dir "$HOME/.cache/wal"
    set -l config_dir "$HOME/.config/colors"
    set -l last_theme_file "$cache_dir/last_used_theme"
    set -l colors_scheme_file "$cache_dir/colors-scheme"

    if not test -f "$last_theme_file"
        echo "Error: Theme file not found at $last_theme_file"
        return 1
    end

    if not test -f "$colors_scheme_file"
        echo "Error: Color scheme file not found at $colors_scheme_file"
        return 1
    end

    # Read the content of the last used theme file
    set -l full_theme_path (cat "$last_theme_file")
    
    # DEBUG: Print the raw content to see what's causing the problem
    # echo "DEBUG: Raw theme path content: \"$full_theme_path\""

    # Use the fish 'path' command for robust extraction
    set -l color_scheme (path basename -E "$full_theme_path")

    # Ensure the destination directory exists
    if not test -d "$config_dir"
        echo "Creating directory: $config_dir"
        mkdir -p "$config_dir"
    end
    
    # Define the final destination file path
    set -l destination_file "$config_dir/$color_scheme"
    # echo "DEBUG: Destination file path: \"$destination_file\""

    # Use a single redirect to create/overwrite the file with the content
    if cat "$colors_scheme_file" > "$destination_file"
        echo "Saved color scheme $color_scheme to $destination_file"
    else
        echo "Error: Failed to save color scheme to $destination_file"
        return 1
    end
end
