(server-start)

;; load everything in the common directory
(mapcar 'load-file (directory-files "~/.emacs.d/common" t "\.el$"))
(mapcar 'load-file (directory-files "~/.emacs.d/ext" t "\.el$"))
(when (file-exists-p "~/.emacs.d/local")
  (mapcar 'load-file (directory-files "~/.emacs.d/local" t "\.el$")))
