function fish_prompt
        set_color $fish_color_cwd
        echo -n (pwd)
        set_color normal
        echo -n ' | '
end
