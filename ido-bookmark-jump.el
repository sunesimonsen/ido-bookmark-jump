(require 'bookmark)
(require 'ido)

(defun ido-bookmark-jump ()
  "Uses ido to search for the bookmark"
  (interactive)
  (bookmark-jump
   (bookmark-get-bookmark
    (ido-completing-read "find bookmark: " (bookmark-all-names)))))

(provide 'ido-bookmark-jump)
