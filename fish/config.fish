if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
    begin
        set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
        if test -e $AUTOJUMP_PATH
            source $AUTOJUMP_PATH
        end
    end
    set PATH /home/hefni101/.local/bin   $PATH
    set PATH /home/hefni101/go/bin   $PATH
    direnv hook fish | source
    direnv export fish | source
end
