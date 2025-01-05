function tscl --wraps='xclip -selection clipboard -t image/png -o  | tesseract stdin stdout' --description 'alias tscl=xclip -selection clipboard -t image/png -o  | tesseract stdin stdout'
  xclip -selection clipboard -t image/png -o  | tesseract stdin stdout $argv; 
end
