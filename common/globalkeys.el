;; use rectangle support from CUA
(cua-mode 1)
(setq cua-enable-cua-keys nil)

(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(require 'windmove)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x wo") 'delete-other-windows)
(global-set-key (kbd "C-x wc") 'delete-window)
(global-set-key (kbd "C-x ws") 'split-window)
(global-set-key (kbd "C-x wv") 'split-window-horizontally)
(global-set-key (kbd "C-x wf") 'flip-windows)

(global-set-key (kbd "C-x g") 'rgrep)
(global-set-key (kbd "C-x f") 'find-name-dired)

(global-set-key (kbd "C-x n") 'next-error)
(global-set-key (kbd "C-x p") 'previous-error)

(global-set-key (kbd "C-c bn") 'bm-next)
(global-set-key (kbd "C-c bp") 'bm-previous)
(global-set-key (kbd "C-c br") 'bm-bookmark-regexp)
(global-set-key (kbd "C-c bl") 'bm-show)
(global-set-key (kbd "C-c ba") 'bm-bookmark-annotate)
(global-set-key (kbd "C-c bt") 'bm-toggle)

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

(global-set-key (kbd "C-z") (lambda (&optional arg)
			      (interactive "P")
 			      (let ((d (file-name-directory (buffer-file-name))))
				(eshell)
				(when arg
				  (eshell/cd d)
				  (eshell-send-input)))))

(add-hook 'eshell-mode-hook
      (lambda ()
        (local-set-key (kbd "C-z") 'bury-buffer)))

(global-set-key (kbd "M-i") 'idomenu)

(global-set-key (kbd "M-n") 'smart-symbol-go-forward)
(global-set-key (kbd "M-p") 'smart-symbol-go-backward)

(global-set-key (kbd "C-x >") '(lambda (start end)
				 (interactive "r" )
				 (indent-rigidly start end 4)))
(global-set-key (kbd "C-x <") '(lambda (start end)
				 (interactive "r" )
				 (indent-rigidly start end -4)))

(global-set-key (kbd "C-/") 'replace-regexp)
