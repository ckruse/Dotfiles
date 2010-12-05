;; keybindings

(global-set-key [(control alt left)]        'cycle-buffer-backward)
(global-set-key [(control alt right)]       'cycle-buffer)
(global-set-key [(control shift alt left)]  'cycle-buffer-backward-permissive)
(global-set-key [(control shift alt right)] 'cycle-buffer-permissive)
(global-set-key [home] 'beginning-of-line)
(global-set-key [C-home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-line)
(global-set-key [C-end] 'end-of-buffer)


; eof