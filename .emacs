(when (not (featurep 'aquamacs))
  (if (window-system)
    (progn
      (set-frame-height (selected-frame) 65)
      (set-frame-width  (selected-frame) 240)
      (set-frame-position (selected-frame) 120 120)
      )
    )
  )


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
(load "~/.emacs.d/erlang.el")


(server-start)

; eof
