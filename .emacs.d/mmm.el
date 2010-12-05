;; mmm configuration


(require 'mmm-mode)
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(setq mmm-submode-decoration-level 2)

(mmm-add-classes
 '(
   (html-smarty
    :submode text-mode
    :face mmm-code-submode-face
    :front "{"
    :back "}")
   ;; (html-css
   ;;  :submode css-mode
   ;;  :face mm-declaration-submode-face
   ;;  :front "<style\[^>\]*>"
   ;;  :back "</style>")
   (html-js
    :submode js-mode
    :face mmm-code-submode-face
    :front "<script\[^>\]*>"
    :back "</script>")
   )
)
(add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil html-smarty))
;; (add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil html-css))
(add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil html-js))

;; (add-hook 'html-mode-hook
;;     (lambda ()
;;       ;;(setq mmm-classes '(erb-code html-js))
;;       (mmm-mode-on)))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.html$" . html-mode))
(add-to-list 'auto-mode-alist '("\\.htm$" . html-mode))


;; (mmm-add-classes
;;  '((erb-code
;;     :submode ruby-mode
;;     :match-face (("<%#" . mmm-comment-submode-face)
;;      ("<%=" . mmm-output-submode-face)
;;      ("<%"  . mmm-code-submode-face))
;;     :front "<%[#=]?"
;;     :back "-?%>"
;;     :insert ((?% erb-code       nil @ "<%"  @ " " _ " " @ "%>" @)
;;        (?# erb-comment    nil @ "<%#" @ " " _ " " @ "%>" @)
;;        (?= erb-expression nil @ "<%=" @ " " _ " " @ "%>" @))
;;     )))

;; (mmm-add-group
;;  'fancy-html
;;  '(
;;    (html-php-embedded
;; 	:submode php-mode
;; 	:face mmm-code-submode-face
;; 	:front "<[?]\\(php\\|=\\)"
;; 	:back "[?]>")
;;    (html-css-embedded
;; 	:submode css-mode
;; 	:face mmm-declaration-submode-face
;; 	:front "<style\[^>\]*>"
;; 	:back "</style>")
;;    (html-css-attribute
;; 	:submode css-mode
;; 	:face mmm-declaration-submode-face
;; 	:front "\\bstyle=\\s-*\""
;; 	:back "\"")
;;    (html-javascript-embedded
;; 	:submode js2-mode
;; 	:face mmm-code-submode-face
;; 	:front "<script\[^>\]*>"
;; 	:back "</script>")
;;    (html-javascript-attribute
;; 	:submode javascript-generic-mode
;; 	:face mmm-code-submode-face
;; 	:front "\\bon\\w+=\\s-*\""
;; 	:back "\"")))
;; (add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil html-js))
;; (add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil embedded-css))
;; (add-to-list 'mmm-mode-ext-classes-alist '(html-mode nil fancy-html))

;; (add-hook 'html-mode-hook
;;     (lambda ()
;;       (setq mmm-classes '(erb-code html-js))
;;       (mmm-mode-on)))
;; (add-to-list 'auto-mode-alist '("\\.rhtml$" . html-mode))

; eof