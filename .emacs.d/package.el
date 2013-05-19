(if (string-match "23" emacs-version)
    (setq load-path  (cons (expand-file-name "~/.emacs.d/pkg/") load-path))
  )


(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
;(add-to-list 'package-archives
;             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

