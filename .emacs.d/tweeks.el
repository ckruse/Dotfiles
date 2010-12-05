;; emacs tweeks, since emacs defaults suck

; remove ugly and sucking toolbar
(tool-bar-mode 0)

; show time in status line
(display-time)

;; show column and line numbers
(line-number-mode t)
(column-number-mode t)

;; remove trailing whitespaces
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq tab-width 2)
(setq-default tab-width 2)
(setq c-basic-offset 2)
(setq-default c-basic-offset 2)

(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(iswitchb-mode 1)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)


(cond (
  (fboundp 'global-font-lock-mode)
  ;; Turn on font-lock in all modes that support it
  (global-font-lock-mode t)
  ;; Maximum colors
  (setq font-lock-maximum-decoration t))
)


; we wanna use utf8 normally
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)

; show trailing whitespaces
(setq whitespace-global-modes t)
(setq show-trailing-whitespace t)
(require 'whitespace)


; show speedbar
;(speedbar 1)
;(speedbar-toggle-show-all-files)
;(setq-default speedbar-update-flag nil)

(setq js2-bounce-indent-p t)

;; disable validation
(add-hook 'nxml-mode-hook
          (lambda () (rng-validate-mode 0))
          )

;; fuck off the splash screen
(setq inhibit-splash-screen t)

;; eof
