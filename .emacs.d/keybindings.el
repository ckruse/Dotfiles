;; keybindings

(when (not (featurep 'aquamacs))
  (global-set-key [M-s-right] 'cycle-buffer)
  (global-set-key [M-s-left] 'cycle-buffer-backward)
  (global-set-key [C-S-s-right] 'cycle-buffer-permissive)
  (global-set-key [C-S-s-left] 'cycle-buffer-backward-permissive)

  (global-set-key [s-left] 'beginning-of-line)
  (global-set-key [s-up] 'beginning-of-buffer)
  (global-set-key [s-right] 'end-of-line)
  (global-set-key [s-down] 'end-of-buffer)

  (global-set-key [s-l] 'goto-line)

  (global-set-key "\C-a" 'mark-whole-buffer)
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

(global-set-key "\M--" 'goto-match-paren)

(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")
(define-key my-keys-minor-mode-map (kbd "M-<") 'pop-to-mark-command)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(my-keys-minor-mode 1)

(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0)
  )

(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

(global-set-key [(control c) (c)] 'mode-compile)
(global-set-key [(control c) (k)] 'mode-compile-kill)


(global-set-key (kbd "C--") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C--") 'dabbrev-expand)


(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

; eof