;; aquamacs specific

; aquamacs: use only one buffer
(one-buffer-one-frame-mode 0)


; command n creates ne window
(defun my-new-frame-with-new-scratch ()
  (interactive)
  (let ((one-buffer-one-frame t))
    (new-frame-with-new-scratch)))
(define-key osx-key-mode-map (kbd "A-n") 'my-new-frame-with-new-scratch)

; eof