function i --wraps='pacman -S ' --description 'alias i=pacman -S '
  pacman -S  $argv; 
end
