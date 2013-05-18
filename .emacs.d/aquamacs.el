; aquamacs: use only one buffer
(one-buffer-one-frame-mode 0)
(tabbar-mode 0)

; command n creates ne window
(defun my-new-frame-with-new-scratch ()
  (interactive)
  (let ((one-buffer-one-frame t))
    (new-frame-with-new-scratch))
  )

(define-key osx-key-mode-map
            (kbd "A-n")
            'my-new-frame-with-new-scratch
            )


(auto-fill-mode -1)
(remove-hook 'text-mode-hook 'turn-on-auto-fill)

(autoload 'cycle-buffer "cycle-buffer" "Cycle forward." t)
(autoload 'cycle-buffer-backward "cycle-buffer" "Cycle backward." t)
(autoload 'cycle-buffer-permissive "cycle-buffer" "Cycle forward allowing *buffers*." t)
(autoload 'cycle-buffer-backward-permissive "cycle-buffer" "Cycle backward allowing *buffers*." t)
(autoload 'cycle-buffer-toggle-interesting "cycle-buffer" "Toggle if this buffer will be considered." t)

(define-key osx-key-mode-map
            [A-M-right]
            'cycle-buffer
            )
(define-key osx-key-mode-map
            [A-M-left]
            'cycle-buffer-backward
            )

;; eof
