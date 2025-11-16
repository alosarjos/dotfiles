function chezmoi --wraps chezmoi
    if set --function cdpos (contains -i -- cd $argv)
        set argv[$cdpos] source-path

        command chezmoi $argv | read --function target
        or return $pipestatus[1]

        if test -d $target
            cd $target
        else
            cd (path dirname $target)
        end
    else
        command chezmoi $argv
    end
end
