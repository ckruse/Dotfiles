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

(require 'whitespace)
(global-whitespace-mode)

; eof
