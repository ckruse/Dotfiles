(setq load-path  (cons (expand-file-name "~/.emacs.d/site-lisp/") load-path))

;; hideshow for programming
(load-library "hideshow")

(add-hook 'c-mode-common-hook   'hs-minor-mode)

(global-set-key [(control c) (f)] 'hs-toggle-hiding)
(global-set-key [(control c)(shift f)] 'hs-hide-all)
(global-set-key [(control c)(control f)] 'hs-show-all)
(global-set-key [(control c)(l)] 'hs-hide-level)

(load "~/.emacs.d/loadings.el")
(load "~/.emacs.d/ruby.el")
(load "~/.emacs.d/keybindings.el")

(load "~/.emacs.d/nxhtml/autostart.el")
(add-hook 'nxml-mode-hook (lambda () (rng-validate-mode 0)) t)

(load "~/.emacs.d/aquamacs.el")
(load "~/.emacs.d/tweeks.el")

(load "~/.emacs.d/php.el")

(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)

(put 'narrow-to-region 'disabled nil)

(require 'yasnippet-bundle)
(defun wrap-region-or-point-with-html-tag (start end)
  "Wraps the selected text or the point with a tag"
  (interactive "r")
  (let (string)
    (if mark-active
        (list (setq string (buffer-substring start end))
          (delete-region start end)))
    (yas/expand-snippet (concat "<${1:p}>" string "$0</${1:$(replace-regexp-in-string \" .*\" \"\" text)}>"))))

(global-set-key (kbd "C-<") 'wrap-region-or-point-with-html-tag)

(server-start)

; eof


