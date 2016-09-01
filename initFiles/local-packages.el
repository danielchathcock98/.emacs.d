;; use whitespace mode
(require 'whitespace)
(setq whitespace-line-column 120 ;; limit line length
      whitespace-style '(face lines-tail))
(add-hook 'prog-mode-hook 'whitespace-mode)

;; delete trailing whitespace before saving, but not trailing newlines
(setq delete-trailing-lines nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)



(require 'ido)
(ido-mode t)
(ido-everywhere t)

