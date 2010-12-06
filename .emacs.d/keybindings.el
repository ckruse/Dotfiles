;; keybindings

(when (not (featurep 'aquamacs))
  (global-set-key [M-s-right]              'next-buffer)
  (global-set-key [M-s-left]               'previous-buffer)
  (global-set-key [s-left] 'beginning-of-line)
  (global-set-key [s-up] 'beginning-of-buffer)
  (global-set-key [s-right] 'end-of-line)
  (global-set-key [s-down] 'end-of-buffer)
  )

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

(global-set-key [(control .)] 'goto-match-paren)

; eof