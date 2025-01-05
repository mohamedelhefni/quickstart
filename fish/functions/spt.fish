function spt --wraps='sudo apt install' --description 'alias spt=sudo apt install'
  sudo apt install $argv; 
end
