
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-linum-mode t)

; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.org/packages/")
   t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(elcord gist pdf-tools password-mode magit rings company-tabnine company nginx-mode zenburn-theme sane-term markdown-mode go-mode emms twittering-mode telega ##)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq browse-url-generic-program 
    (executable-find "/opt/firefox/firefox") 
     browse-url-browser-function 'browse-url-generic)
 	
;(require 'emms-setup)
;(emms-all)
;(emms-default-players)

  ;; the exact path may differ --- check it
;;(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")
;;   (server-start)
;;    (add-to-list 'auto-mode-alist '("/mutt" . mail-mode))
;;   (add-hook 'mail-mode-hook 'turn-on-auto-fill)
(load-theme 'zenburn t)
 ;;(add-to-list 'default-frame-alist '(foreground-color . "white"))
 ;;(add-to-list 'default-frame-alist '(background-color . "black"))
 ;;(add-to-list 'default-frame-alist '(cursor-color . "coral"))
(add-hook 'before-save-hook #'gofmt-before-save)
(set-face-attribute 'default nil :height 150)
(add-hook 'after-init-hook 'global-company-mode)
(require 'company-tabnine)
(add-to-list 'company-backends 'company-tabnine)

;; Trigger completion immediately.
(setq company-idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)
;; Rings configuration
(global-set-key (kbd "<f2>")   (rings-generate-cycler 2))
(global-set-key (kbd "C-<f2>") (rings-generate-setter 2))
(global-set-key (kbd "<f3>")   (rings-generate-cycler 3))
(global-set-key (kbd "C-<f3>") (rings-generate-setter 3))
(global-set-key (kbd "<f4>")   (rings-generate-cycler 4))
(global-set-key (kbd "C-<f4>") (rings-generate-setter 4))
