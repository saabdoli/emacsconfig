(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("org" . "http://orgmode.org/elpa")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")))


(require 'package)
(package-initialize)
(require 'evil)
(require 'evil-escape)
(require 'evil-leader)
(evil-mode 1)
;;TODO figure out how to initialize with evil escape as default
(global-evil-leader-mode)
(setq-default evil-escape-key-sequence "jk")
(evil-leader/set-leader "<SPC>")
(load-theme 'firebelly t)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
;;set leader key
;;set <leader> shortcuts
(evil-leader/set-key
"e" 'find-file
"ff" 'find-file
"b" 'switch-to-buffer
"k" 'kill-buffer
"zz" 'save-buffers-kill-emacs
"ww" 'other-window
"wc" 'delete-window
"wo" 'delete-other-window
"s" 'save-buffer
"wn" 'write-named-file
"nf" 'make-frame-command
"wh" 'split-window-below
"wv" 'split-window-right
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(evil-auto-indent t)
 '(evil-default-cursor (quote (t "black"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
