;; emacs tweeks, since emacs defaults suck

; remove ugly and sucking toolbar
(tool-bar-mode 0)

; show time in status line
(display-time)

;; show matching marens
(show-paren-mode 1)

;; show column and line numbers
(line-number-mode t)
(column-number-mode t)

;; highlight current line
(global-hl-line-mode 1)

;; show and remove trailing whitespaces
(setq-default show-trailing-whitespace t)
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
;(setq whitespace-global-modes t)
(setq show-trailing-whitespace t)
(setq-default whitespace-style '(face trailing newline empty newline-mark))


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

(defun goto-match-paren (arg)
  "Go to the matching  if on (){}[], similar to vi style of % "
  (interactive "p")
;; first, check for "outside of bracket" positions expected by forward-sexp, etc
  (cond ((looking-at "[\[\(\{]") (forward-sexp))
        ((looking-back "[\]\)\}]" 1) (backward-sexp))
        ;; now, try to succeed from inside of a bracket
        ((looking-at "[\]\)\}]") (forward-char) (backward-sexp))
        ((looking-back "[\[\(\{]" 1) (backward-char) (forward-sexp))
        (t nil)
        )
  )

(setq dabbrev-case-fold-search t)

(setq visible-bell t)


;; eof
