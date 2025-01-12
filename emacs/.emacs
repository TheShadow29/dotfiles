;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

;; (byte-recompile-directory "~/.emacs.d/" 0 t)

;; Optimize Package Initialization
;; (require 'package)
;; (setq package-enable-at-startup nil)
;; (setq package-archives '(("melpa" . "https://melpa.org/packages/")
;;			 ;; ("gnu" . "https://elpa.gnu.org/packages/")
;;			 ))

;; (package-initialize)

;;Install and Configure use-package
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))
;; (setq use-package-always-ensure t)


;; ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;; comment
(global-set-key (kbd "M-;") 'comment-dwim-2)

;; Magit
(global-set-key (kbd "M-m") 'magit-status) ; Alt+m
(global-auto-revert-mode t)

;; whitespace removal
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Don't create backup~ files
(setq make-backup-files nil) ; stop creating backup~ files

;; invoke the AUCTeX package (LaTeX support)
;; (require 'tex-site)

;; set font
(set-face-attribute 'default nil :height 170)

;; turn off bell
 (setq ring-bell-function 'ignore)

;; (add-hook 'emacs-startup-hook (lambda () (load-theme 'catppuccin :no-confirm)))
;; ;; (load-theme 'catppuccin :no-confirm)

;; ;;Measure Startup Time
;; (add-hook 'emacs-startup-hook
;;	  (lambda ()
;;	    (message "Emacs ready in %s with %d garbage collections."
;;		     (emacs-init-time) gcs-done)))
(load-theme 'catppuccin :no-confirm)
