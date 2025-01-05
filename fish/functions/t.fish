function t --wraps='uptime -p' --description 'alias t=uptime -p'
  uptime -p $argv; 
end
