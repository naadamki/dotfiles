function waldb --description "Set colorscheme. Default is random_dark. First argument is name of colorscheme. Second argument is the alpha."
    set -l arg_count (count $argv)

    if test $arg_count -eq 0
        wal --theme random_dark -a 80
    else if test $arg_count -eq 1
        wal --theme $argv -a 80
    else if test $arg_count -eq 2
        wal --theme "$argv[1]" -a "$argv[2]"
    else
        echo "Error: Too many arguments provided."
        return 1
    end
end
