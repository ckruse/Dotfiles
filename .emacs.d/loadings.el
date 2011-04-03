;; loading of modes, etc


; load a better perl mode
(autoload 'perl-mode "cperl-mode" "better mode for editing Perl programs" t)

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

; snippets
(require 'yasnippet-bundle)
(defun wrap-region-or-point-with-html-tag (start end)
  "Wraps the selected text or the point with a tag"
  (interactive "r")
  (let (string)
    (if mark-active
        (list (setq string (buffer-substring start end))
          (delete-region start end)))
    (yas/expand-snippet (concat "<${1:p}>" string "$0</${1:$(replace-regexp-in-string \" .*\" \"\" text)}>"))))

;; hideshow for programming
(load-library "hideshow")

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'ruby-mode-hook       'hs-minor-mode)

(require 'whitespace)
(global-whitespace-mode t)

(when (not (featurep 'aquamacs))
  (autoload 'cycle-buffer "cycle-buffer" "Cycle forward." t)
  (autoload 'cycle-buffer-backward "cycle-buffer" "Cycle backward." t)
  (autoload 'cycle-buffer-permissive "cycle-buffer" "Cycle forward allowing *buffers*." t)
  (autoload 'cycle-buffer-backward-permissive "cycle-buffer" "Cycle backward allowing *buffers*." t)
  (autoload 'cycle-buffer-toggle-interesting "cycle-buffer" "Toggle if this buffer will be considered." t)
  )


(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)

(autoload 'cmake-mode "cmake-mode"
  "Mode for cmake files" t)


(setq load-path (cons "~/.emacs.d/org/lisp" load-path))
(require 'org-install)


; eof
