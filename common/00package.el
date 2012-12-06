;; pacakge management
(require 'package)

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/"))
      package-enable-at-startup nil
      package-user-dir (concat (getenv "HOME") "/emacs/elpa/")
      myconfig-package-list '(auto-complete
			      auto-complete-clang
			      yasnippet
			      projectile
			      go-mode
			      zenburn-theme
			      color-theme-solarized
			      bm))
      
(package-initialize)

(mapcar (lambda (pkg)
	  (when (not (package-installed-p pkg))
	    (package-install pkg)))
	myconfig-package-list)
