(autoload 'ruby-mode "ruby-mode" "Load ruby-mode")

(add-hook 'ruby-mode-hook 'turn-on-font-lock)
(add-hook 'ruby-mode-hook (lambda ()
                            (setq tab-width 2
                                  indent-tabs-mode nil
                                  ruby-deep-arglist nil
                                  ruby-deep-indent-paren nil
                                  ruby-insert-encoding-magic-comment nil
                                  )
                            )
          )

(require 'ruby-block)
(ruby-block-mode t)

(setq ruby-block-highlight-toggle 'overlay)

;; (add-to-list 'auto-mode-alist '("\\.html\\.erb$" . eruby-nxhtml-mumamo-mode))
;; (add-to-list 'auto-mode-alist '("\\.rhtml$" . eruby-nxhtml-mumamo-mode))
;; (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))

;; Interactively Do Things (highly recommended, but not strictly required)
;(require 'ido)
;(ido-mode t)



;; eof
