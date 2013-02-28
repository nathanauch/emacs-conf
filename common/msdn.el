(defun search-msdn (word)
  (interactive
   (list (read-string "Search MSDN: " (thing-at-point 'word))))
  (browse-url 
   (concat "http://social.msdn.microsoft.com/Search/en-CA?query=" word)))

(defun search-google (word)
  (interactive
   (list (read-string "Search MSDN: " (thing-at-point 'word))))
  (browse-url 
   (concat "http://social.msdn.microsoft.com/Search/en-CA?query=" word)))

