
(setq load-path  (cons (expand-file-name "~/.emacs.d/site-lisp/") load-path))

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(load "~/.emacs.d/loadings.el")
(load "~/.emacs.d/ruby.el")
(load "~/.emacs.d/keybindings.el")

(load "~/.emacs.d/nxhtml/autostart.el")
(add-hook 'nxml-mode-hook (lambda () (rng-validate-mode 0)) t)

(when (featurep 'aquamacs)
  (load "~/.emacs.d/aquamacs.el")
  )

(load "~/.emacs.d/tweeks.el")

(load "~/.emacs.d/php.el")
(load "~/.emacs.d/c_cpp.el")

(setq load-path (cons "/usr/lib/erlang/lib/tools-2.6.6.1/emacs" load-path))
(setq erlang-root-dir "/usr/lib/erlang")
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)


(server-start)

(load "~/.emacs.d/frames.el")
; eof
