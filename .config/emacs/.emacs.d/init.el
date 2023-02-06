;; org mode
;; status
(setq org-todo-keywords
  '((sequence "TODO" "WEEK" "TODAY" "WIP" "WAIT" "CANCELED" "DONE")))
;; status color
(setq org-todo-keyword-faces
  '(
    ("TODO" . "yellow") 
    ("WEEK" . "yellow") 
    ("TODAY" . (:foreground "yellow" :weight bold)) 
    ("WIP" . (:foreground "red" :weight bold))
    ("WAIT" . "yellow")
    ("CANCELED" . "green")
    ("DONE" . "blue")
  )
)



;; key binding
;; delete a backward character
(global-set-key [?\C-h] 'delete-backward-char)
;; overrides mark-whole-buffer
(global-set-key [?\C-x ?h] 'help-command)
;; function to delete characters to the begining on the line                          
(defun backward-kill-line (arg)
  "Kill ARG lines backward."
  (interactive "p")
  (kill-line (- 1 arg)))                          
(global-set-key "\C-u" 'backward-kill-line) ;; `C-c u'

