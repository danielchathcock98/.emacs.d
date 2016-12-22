(setq package-list '(solarized-theme
                     smooth-scrolling
                     yasnippet
                     smartparens
                     multiple-cursors
                     markdown-mode
                     smart-compile
                     company
                     web-mode))

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'solarized-theme)
(load-theme 'solarized-dark t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;; smoooooth scrolling
(require 'smooth-scroll)
(smooth-scroll-mode 1)


;; yasnippet - allows for typing of key followed by pressing tab to expand a snippet.
;; Snippets are fully user-definable.
(require 'yasnippet)
(yas-global-mode 1)



;; smartparens - attempts to type and delete parentheses in a smart way
(require 'smartparens-config)
(add-hook 'prog-mode-hook #'smartparens-mode)



;; multiple-cursors - allows for multiple cursors which can be added to match the
;; current selection
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-m") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)



;; allows for the markdown-mode major mode
(require 'markdown-mode)



;; allows me to test compile java directly from emacs
(require 'smart-compile)
(global-set-key (kbd "C-c C-x") 'smart-compile)



;; AUTO COMPLETION
(require 'company)
(global-company-mode t)



;; better webcode editing
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))


(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-script-padding 2)
(setq web-mode-comment-style 0)

