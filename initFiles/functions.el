;; function to show file name and path momentarily in minibuffer
;; press C-x p
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name)))
(global-set-key (kbd "C-x p") 'show-file-name)

