;;;; Setup package repos and use-package
(require 'package)
(setq package-enable-at-startup nil)

;; https://emacs.stackexchange.com/a/2989
(setq package-archives
      '(("elpa"     . "https://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 10)
        ("elpa"     . 5)
        ("melpa"        . 0)))

(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;;;; Start fullscreen
    (add-to-list 'default-frame-alist '(fullscreen . maximized))

;;;; List packages
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))
(use-package slime
  :ensure t)


; Let emacs know what packages we have (for package auto-remove command)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(slime zenburn-theme)))

; Set emacs display settings
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight regular :height 181 :width normal)))))

; Display Line Numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

; Set theme to Zenburn
(load-theme 'zenburn t)

; Start in eshell
(setq inhibit-startup-message t
      initial-buffer-choice 'eshell)
(setq eshell-banner-message "Open Lisp Setup with C-x r j 1\n")

; Set Lisp interpreter to SBCL
(setq inferior-lisp-program "sbcl")
