;; org mode
;; status
(setq org-todo-keywords
  '((sequence "TODO" "WEEK" "TODAY" "WIP" "WAIT" "CANCELED" "DONE")))
;; status color
(setq org-todo-keyword-faces
  '(
    ("TODO" . "white") 
    ("WEEK" . "white") 
    ("TODAY" . (:foreground "red" :weight bold)) 
    ("WIP" . (:foreground "red" :weight bold))
    ("WAIT" . "green")
    ("CANCELED" . "green")
    ("DONE" . "blue")
  )
)

;; show line numbers
(require 'linum)
(global-linum-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("/home/hellomyzn/hoge/hoge.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(help-key-binding ((t (:foreground "black" :background "yellow"))))
 '(isearch ((t (:background "red" :foreground "white"))))
 '(lazy-highlight ((t (:background "yellow" :foreground "black"))))
 '(menu ((t (:background "yellow" :foreground "black"))))
 '(mode-line ((t (:background "yellow" :foreground "black"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "black" :foreground "yellow"))))
 '(org-hide ((t (:foreground "black"))))
 '(show-paren-match ((t (:background "yellow" :foreground "black"))))
 '(vertical-border ((t (:inherit nil :background "black" :foreground "yellow")))))
 
 


;; org-mode設定
;; 見出しをインデントする
(setq org-startup-indented t)

;; 見出しをインデントした時にアスタリスクが減るのを防ぐ
(setq org-indent-mode-turns-on-hiding-stars nil)

;; インデントの幅を設定
(setq org-indent-indentation-per-level 2)

;; 見出しの初期状態（見出しだけ表示）
(setq org-startup-folded 'content)

;; disable auto-indentation of new lines
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))



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
(global-set-key [?\C-c ?u] 'backward-kill-line) ;; `C-c u'
;; agenda view
(global-set-key "\C-ca" 'org-agenda)


