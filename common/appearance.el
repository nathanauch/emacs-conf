(load-theme 'leuven t)

(set-frame-font
 (cond ((eq system-type 'windows-nt) "Consolas-11")
       ((eq system-type 'darwin) "Menlo-11")))

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-variable 'inhibit-startup-screen t)
(setq ns-pop-up-frames 'nil)
(toggle-truncate-lines 1)

(show-paren-mode t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

