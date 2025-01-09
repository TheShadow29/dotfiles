;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy
    flycheck
    material-theme
))

(mapc #'(lambda (package)
   (unless (package-installed-p package)
     (package-install package)))
    myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

;; PYTHON CONFIGURATION
;; --------------------------------------

(elpy-enable)
;; (elpy-use-ipython)
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
	     "jupyter")
(pyvenv-activate "/scratch/arka/miniconda/envs/fai/")
;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
;;(require 'py-autopep8)
;; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; init.el ends here


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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-dispatch-arguments nil)
 '(package-selected-packages
   '(auto-complete-auctex auctex pylint comment-dwim-2 magit py-autopep8 material-theme flycheck elpy better-defaults)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
