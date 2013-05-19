(setq load-path (cons "~/.emacs.d/org/lisp" load-path))
(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq org-directory "~/Dropbox/org")
(setq org-mobile-directory "~/Dropbox/MobileOrg/")
(setq org-agenda-files (quote ("~/Dropbox/org/projects.org" "~/Dropbox/org/inbox.org")))
(setq org-mobile-inbox-for-pull "~/Dropbox/org/inbox.org")

(add-hook 'org-mode-hook 'turn-on-font-lock)

;; eof
