(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
	     '("gnu" . "https://elpa.gnu.org/packages/") t)
(package-initialize)
(setq package-enable-at-startup nil)


(when (not package-archive-contents)
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(use-package org-plus-contrib
  :ensure t
  :config
  (require 'org))

(org-babel-load-file "~/.emacs.d/myinit.org")
 (setq send-mail-function (quote smtpmail-send-it))
 (setq smtpmail-smtp-server "mail.datahaxx.se")
 (setq smtpmail-smtp-service 587)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("74278d14b7d5cf691c4d846a4bbf6e62d32104986f104c1e61f718f9669ec04b" default)))
 '(package-selected-packages
   (quote
    (zenburn-theme white-sand-theme which-key web-mode use-package try tronesque-theme tangotango-theme solarized-theme powerline ox-twbs ox-reveal org-plus-contrib org-bullets moe-theme material-theme magit key-chord jedi htmlize flycheck evil-paredit evil-leader elpy counsel-projectile color-theme ace-window ac-slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(mode-line ((t (:foreground "#000000" :background "#dddddd" :box nil))))
 '(mode-line-buffer-id ((t (:foreground "#000000" :bold t))))
 '(mode-line-inactive ((t (:foreground "#000000" :background "#bbbbbb" :box nil))))
 '(which-func ((t (:foreground "#77aaff")))))
