(add-hook 'term-mode-hook
	  (function
	   (lambda ()
	     (term-set-escape-char ?\C-x)
	     (local-set-key (kbd "M-x") 'smex))))

(setq term-mode-hook nil)
