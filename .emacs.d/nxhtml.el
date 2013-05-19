;(load "~/.emacs.d/nxhtml/autostart.el")

(add-hook 'nxml-mode-hook
          (lambda ()
            (local-set-key "\C-c/" 'nxml-finish-element)
            (auto-fill-mode -1)
            (setq ispell-skip-html t)
            (rng-validate-mode 0)
            )
          )

(add-hook 'html-mode-hook
          (lambda ()
            (auto-fill-mode -1)
            )
          )

(setq
   nxhtml-global-minor-mode t
   mumamo-chunk-coloring 'submode-colored
   nxhtml-skip-welcome t
   indent-region-mode t
   rng-nxml-auto-validate-flag nil
   nxml-degraded t)

;;(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

;; eof
