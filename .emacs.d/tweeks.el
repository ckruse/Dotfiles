;; emacs tweeks, since emacs defaults suck

(when (not (featurep 'aquamacs))
  (setq x-select-enable-clipboard t)
  (delete-selection-mode t)
  )


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

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq org-directory "~/Dropbox/org")
(setq org-mobile-directory "~/Dropbox/MobileOrg/")
(setq org-agenda-files (quote ("~/Dropbox/org/projects.org" "~/Dropbox/org/inbox.org")))
(setq org-mobile-inbox-for-pull "~/Dropbox/org/inbox.org")

(add-hook 'org-mode-hook 'turn-on-font-lock)

(add-to-list 'auto-mode-alist '("mutt-" . mail-mode))

;(ido-mode t)
;(setq ido-enable-flex-matching t)

(setq visible-bell t)

(defun gtd ()
   (interactive)
   (find-file "~/Dropbox/org/projects.org")
   )

(defun gtd-inbox ()
  (interactive)
  (find-file "~/Dropbox/org/inbox.org")
  )

(defalias 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'y-or-n-p)

;; eof
