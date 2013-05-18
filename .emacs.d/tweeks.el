;; (custom-set-faces
;;  '(text-mode-default ((((type ns))
;;                        (:inherit autoface-default
;;                                  :stipple nil
;;                                  :strike-through nil
;;                                  :underline nil
;;                                  :slant normal
;;                                  :weight normal
;;                                  :height 130
;;                                  :width normal
;;                                  :family "Source Code Pro")))
;;                      )
;;  )

(setq exec-path (append exec-path '("/usr/local/bin")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mumamo-background-chunk-major ((t nil)))
 '(mumamo-background-chunk-submode1 ((t nil)))
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8)))))

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium")


(setq x-select-enable-clipboard t)
(delete-selection-mode t)

; remove ugly and sucking toolbar
(tool-bar-mode 0)
(menu-bar-mode 0)

; show time in status line
(display-time)

;; show matching marens
(show-paren-mode 1)

;; show column and line numbers
(line-number-mode t)
(column-number-mode t)

;; show and remove trailing whitespaces
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq tab-width 2)
(setq-default tab-width 2)
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(iswitchb-mode 1)

;disable backup
(setq backup-inhibited t)
(setq-default backup-inhibited t)
;disable auto save
(setq auto-save-default nil)
(setq-default auto-save-default nil)
(setq auto-save-list-file-prefix nil)
(setq-default auto-save-list-file-prefix nil)

(cond (
       (fboundp 'global-font-lock-mode)
       ;; Turn on font-lock in all modes that support it
       (global-font-lock-mode t)
       ;; Maximum colors
       (setq font-lock-maximum-decoration t)
       )
      )


; we wanna use utf8 normally
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)

; show trailing whitespaces
(setq show-trailing-whitespace t)
(setq-default whitespace-style '(face trailing newline empty newline-mark))

;; fuck off the splash screen
(setq inhibit-splash-screen t)

(setq dabbrev-case-fold-search t)


(add-to-list 'auto-mode-alist '("mutt-" . mail-mode))

(setq ring-bell-function 'ignore)

(defun passwords ()
  (interactive)
  (find-file "~/Dropbox/org/passwords.org.gpg")
  )

(defalias 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'y-or-n-p)

(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(defun align-repeat-after (start end regexp)
  "Repeat alignment with respect to
   the given regular expression."
  (interactive "r\nsAlign regexp: ")
  (align-regexp start end
                (concat "\\(\\s-*\\)" regexp) 1 1 t
                )
  )

(defun align-repeat (start end regexp)
  "Repeat alignment with respect to
   the given regular expression."
  (interactive "r\nsAlign regexp: ")
  (align-regexp start end
                (concat regexp "\\(\\s-*\\)") 1 1 t
                )
  )


(toggle-scroll-bar -1)

(ido-mode)
(setq ido-enable-flex-matching t)

(cond
 ((featurep 'ns)
  (set-default-font "Source Code Pro-11")
  (global-set-key [kp-delete] 'delete-char)
  )
 (t
  (set-default-font "Source Code Pro-09")
  )
 )

(defun djcb-find-file-as-root ()
  "Like `ido-find-file, but automatically edit the file with
root-privileges (using tramp/sudo), if the file is not writable by
user."
  (interactive)
  (let ((file (ido-read-file-name "Edit as root: ")))
    (unless (file-writable-p file)
      (setq file (concat "/sudo:root@localhost:" file)))
    (find-file file)))

;; or some other keybinding...
(global-set-key (kbd "C-x F") 'djcb-find-file-as-root)

(defun gtd ()
  (interactive)
  (find-file "~/Dropbox/org/inbox.org")
  )

(global-set-key (kbd "s--") 'gtd)

;; eof
