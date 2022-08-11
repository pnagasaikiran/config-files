function fish_prompt
    set_color -o
    echo (set_color brcyan)'['(set_color brblue)(whoami)(set_color red)'@'(set_color brblue)(prompt_hostname)(set_color brcyan)']'
    echo (set_color brcyan)'['(set_color brblue)(prompt_pwd)(set_color brcyan)']'
    if fish_is_root_user
        echo -n (set_color brcyan)'['(set_color red)'#'(set_color brcyan)']'(set_color yellow)': '
    else
        echo -n (set_color brcyan)'['(set_color red)'$'(set_color brcyan)']'(set_color yellow)': '
    end
    set_color normal
end
