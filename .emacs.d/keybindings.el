;; keybindings

(global-set-key [(control alt left)]        'cycle-buffer-backward)
(global-set-key [(control alt right)]       'cycle-buffer)
(global-set-key [(control shift alt left)]  'cycle-buffer-backward-permissive)
(global-set-key [(control shift alt right)] 'cycle-buffer-permissive)
(global-set-key [home] 'beginning-of-line)
(global-set-key [C-home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-line)
(global-set-key [C-end] 'end-of-buffer)

;; create shortcut for new tag
(global-set-key (kbd "C-<") 'wrap-region-or-point-with-html-tag)

;; folding shortcuts
(global-set-key [(control c) (f)] 'hs-toggle-hiding)
(global-set-key [(control c)(shift f)] 'hs-hide-all)
(global-set-key [(control c)(control f)] 'hs-show-all)
(global-set-key [(control c)(l)] 'hs-hide-level)

; eof