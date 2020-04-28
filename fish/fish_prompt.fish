function fish_prompt
       set_color brblack
       set -l p1 (whoami)'@'(prompt_hostname) '~>' (pwd)
       set -l p1_len (string length (echo $p1))

       # dir is short enough to be printed
       if test $p1_len -lt $COLUMNS
            echo (whoami)'@'(prompt_hostname) '~>' (pwd)
       end

       # if dir is too long, print a shortened version
       if test $p1_len -ge $COLUMNS
            echo (whoami)'@'(prompt_hostname) '~>' (prompt_pwd)
       end

       set_color bryellow
       echo 'λ> '
   end
