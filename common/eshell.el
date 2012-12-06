(require 'eshell)
(require 'em-rebind)
(setq eshell-save-history-on-exit t)
(setq eshell-cmpl-cycle-completions nil)

(defalias 'eshell/e 'find-file)
(defalias 'eshell/eo 'find-file-other-window)
(defalias 'eshell/vi 'find-file)
(defalias 'eshell/vim 'find-file)
(defalias 'eshell/emacs 'find-file)

(defun eshell/fn (x)
  (interactive "s") 
  (find-name-dired "." x))

