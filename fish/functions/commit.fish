function commit --wraps='git add . && git commit -m ' --description 'alias commit=git add . && git commit -m '
  git add . && git commit -m  $argv; 
end
