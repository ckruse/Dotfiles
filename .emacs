(setq load-path  (cons (expand-file-name "~/.emacs.d/site-lisp/") load-path))

(load "~/.emacs.d/emulate-mac-keyboard-mode.el")
(emulate-mac-german-keyboard-mode)

(load "~/.emacs.d/package.el")



(when (featurep 'aquamacs)
  (load "~/.emacs.d/aquamacs.el")
  )
(when (not (featurep 'aquamacs))
  (load "~/.emacs.d/linux.el")
  )

(load "~/.emacs.d/cmake.el")
(load "~/.emacs.d/erlang.el")
(load "~/.emacs.d/haskell.el")
(load "~/.emacs.d/magit.el")
(load "~/.emacs.d/org-mode.el")
(load "~/.emacs.d/perl.el")
(load "~/.emacs.d/php.el")
(load "~/.emacs.d/scss.el")
(load "~/.emacs.d/yaml.el")
(load "~/.emacs.d/rust.el")

(load "~/.emacs.d/c_cpp.el")
(load "~/.emacs.d/pgsql.el")

(load "~/.emacs.d/go.el")
(load "~/.emacs.d/js.el")
(load "~/.emacs.d/nxhtml.el")
(load "~/.emacs.d/ruby.el")
(load "~/.emacs.d/tweeks.el")

(load "~/.emacs.d/keybinding.el")

(server-start)

(load "~/.emacs.d/colors.el")

(load "~/.emacs.d/simp.el")

(load "~/.emacs.d/web.el")

(load "~/.emacs.d/autocomplete.el")

(load "~/.emacs.d/multi-cursor.el")

;; eof
