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



