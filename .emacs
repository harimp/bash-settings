(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" .
				 "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("0f90f1a9b666877d24d93d8c6330a5b68becdebe1cc55ef859799e84c6c4c08e" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "0ee3fc6d2e0fc8715ff59aed2432510d98f7e76fe81d183a0eb96789f4d897ca" default)))
 '(package-selected-packages
   (quote
    (helm-gitignore zenburn-theme tabbar-ruler smart-mode-line-powerline-theme smart-mode-line telephone-line fill-column-indicator smooth-scroll auto-complete markdown-mode use-package creamsody-theme helm evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package evil :ensure t)
(use-package creamsody-theme :ensure t)
(use-package markdown-mode :ensure t)
(use-package helm-projectile :ensure t)
(use-package auto-complete :ensure t)
(use-package whitespace :ensure t)
(use-package web-mode :ensure t)
(use-package tabbar :ensure t)

;; Helm config
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-projectile-find-file)

(helm-mode 1)
;; End of Helm config

;; Auto-install package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; End of Auto-install package

;; Misc config
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
; https://raw.githubusercontent.com/bbatsov/zenburn-emacs/master/zenburn-theme.el
(load-theme 'zenburn)
(ac-config-default)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)

(xterm-mouse-mode 1)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)

(require 'whitespace)
(setq whitespace-style '(face lines-tail))
(setq whitespace-line-column 80)
(global-whitespace-mode +1)

(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

(setq sml/theme 'powerline)
(sml/setup)

(ido-mode 1)

(global-set-key (kbd "C-x C-b") 'bs-show)

(setq js-indent-level 2)
;; End of Misc config

