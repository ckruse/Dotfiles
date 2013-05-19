(setq load-path  (cons (expand-file-name "~/.emacs.d/packages/simp/") load-path))
(require 'simp)

(simp-project-define
 '(:has (.git)
   :ignore (tmp coverage log vendor .git public/system public/assets)))

(global-set-key [(control p)] 'simp-project-find-file)

(custom-set-variables
 '(simp-completing-read-command 'ido-completing-read)
 )
