# Customize the terminal prompt
function fish_prompt
       set_color brblack
       echo (whoami)'@'(prompt_hostname) '~>' (pwd)
       set_color bryellow
       echo 'λ> '
   end
