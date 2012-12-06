(server-start)

;; load everything in the common directory
(mapcar 'load-file (directory-files "~/.emacs.d/common" t "\.el$"))
(mapcar 'load-file (directory-files "~/.emacs.d/ext" t "\.el$"))
