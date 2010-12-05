;; ruby configutation

(defun ck-ruby-mode ()
  (setq tab-width 2
        indent-tabs-mode nil
        ruby-deep-arglist nil
        ruby-deep-indent-paren nil)
)

(autoload 'ruby-mode "ruby-mode" "Load ruby-mode")
(add-hook 'ruby-mode-hook 'turn-on-font-lock)

;; associate ruby-mode with .rb files and .rjs files
(add-to-list 'auto-mode-alist '(".rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '(".rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '(".rhtml" . ruby-mode))

(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ck-ruby-mode)

(add-to-list 'hs-special-modes-alist
             '(ruby-mode
               "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
               (lambda (arg) (ruby-end-of-block)) nil)
             )

; eof
