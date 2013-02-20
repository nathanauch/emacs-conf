(defun flip-windows ()
  ""
  (interactive)
  (if (= (count-windows) 2)
      (let* ((windows (window-list))
	     (w1 (first windows))
	     (w2 (second windows))
	     (b2 (window-buffer w2)))
	(if (window-full-width-p w1)
	    (progn
	      (delete-window w2)
	      (split-window-horizontally)
	      (set-window-buffer (second (window-list)) b2))
	  (progn
	    (delete-window w2)
	    (split-window-vertically)
	    (set-window-buffer (second (window-list)) b2))))
    (message "You can only flip two windows")))
