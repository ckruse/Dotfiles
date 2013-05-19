; -*- coding: utf-8 -*-

(add-to-list 'load-path "~/.emacs.d/packages/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete/ac-dict")
(ac-config-default)

; eof
