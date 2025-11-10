function dtignore --description "Adds arguments to .gitignore if not already there."

    if [ (count $argv) -eq 0 ]
        echo "Usage: dtignore <pattern1> [pattern2] ..."
        return 1
    end

    set gitignore_file "$HOME/.gitignore"

    for pattern in $argv

        if grep -qF "$pattern" "$gitignore_file"
            echo "'$pattern' is already in $gitignore_file, skipping."
        else
            echo "$pattern" >> "$gitignore_file"
            echo "Added '$pattern' to $gitignore_file."
        end
    end
end
