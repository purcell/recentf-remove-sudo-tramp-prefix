(require 'recentf)
(defvar current-dir (file-name-directory load-file-name))

(defun purge ()
  (recentf-save-list)
  (call-process (expand-file-name (concat current-dir "a.out")) nil nil nil recentf-save-file)
  (recentf-load-list))

(add-hook 'after-init-hook 'purge)

(provide 'recentf-purge-tramp)
