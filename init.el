(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(require 'package)
(package-initialize)
(require 'evil)
(require 'evil-escape)
(require 'evil-leader)
(require 'helm)
(require 'evil-org)
(require 'auto-complete)
(ac-config-default)
(helm-mode 1)

(setq helm-split-window-in-side-p t)
;;Turn on evil mode
(evil-mode 1)
(global-evil-leader-mode)
;;Remove menubar
(menu-bar-mode -1)
;;Vimlike esca[e sequence
(setq-default evil-escape-key-sequence "jk")

;;Default theme
(load-theme 'firebelly t)

;;turn on ido flex matching
(setq ido-enable-flex-matching t)
;;use ido for buffers and files
(setq ido-everywhere t)
;;Make ido dispaly choices vertically
(setq ido-separator "\n")
(ido-mode 1)

(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Leader key shortcut handling -----------------------------

;;set leader key for vimlike personal shortcuts
(evil-leader/set-leader "<SPC>")
;;set <leader> shortcuts
(evil-leader/set-key

"ff" 'find-file               ;;find with ido
"fs" 'save-buffer
"fl" 'load-file

"bb" 'switch-to-buffer
"bj" 'next-buffer
"bk" 'previous-buffer
"bl" 'list-buffers
"bk" 'kill-buffer

"zz" 'save-buffers-kill-emacs

"ww" 'other-window
"wc" 'delete-window
"wo" 'delete-other-windows

"nf" 'make-frame-command
"wh" 'split-window-below
"wv" 'split-window-right

"as" 'ansi-term
"lp" 'package-list-packages
"os" 'sa/open-ansi-term
"ms" 'magit-status

"cf" 'compile
"cc" 'recompile
)
;; Leader 
;; Section for my defined function ------------------------
;;TODO - Start trying custom functions

;; End of personal function section -----------------------


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(cursor-color "#657b83")
 '(custom-enabled-themes (quote (ample-zen)))
 '(custom-safe-themes (quote ("fe243221e262fe5144e89bb5025e7848cd9fb857ff5b2d8447d115e58fede8f7" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "ace9f12e0c00f983068910d9025eefeb5ea7a711e774ee8bb2af5f7376018ad2" "ba9be9caf9aa91eb34cf11ad9e8c61e54db68d2d474f99a52ba7e87097fa27f5" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(doc-view-continuous t)
 '(evil-auto-indent t)
 '(evil-default-cursor (quote (t)))
 '(evil-escape-mode t)
 '(fci-rule-color "#383838")
 '(foreground-color "#657b83")
 '(global-linum-mode t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice "~/workroom/")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map (quote ((20 . "#BC8383") (40 . "#CC9393") (60 . "#DFAF8F") (80 . "#D0BF8F") (100 . "#E0CF9F") (120 . "#F0DFAF") (140 . "#5F7F5F") (160 . "#7F9F7F") (180 . "#8FB28F") (200 . "#9FC59F") (220 . "#AFD8AF") (240 . "#BFEBBF") (260 . "#93E0E3") (280 . "#6CA0A3") (300 . "#7CB8BB") (320 . "#8CD0D3") (340 . "#94BFF3") (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
