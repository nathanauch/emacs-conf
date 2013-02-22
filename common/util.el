(defun vi-open-next-line ()
  (interactive)
  (move-end-of-line 1)
  (open-line 1)
  (next-line))
(defun vi-open-prev-line ()
  (interactive)
  (move-beginning-of-line 1)
  (open-line 1))

(global-set-key (kbd "C-o") 'vi-open-next-line)
(global-set-key (kbd "C-S-o") 'vi-open-prev-line)

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-/") 'replace-regexp)
