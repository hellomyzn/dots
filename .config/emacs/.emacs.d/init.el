;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; frontend
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(help-key-binding ((t (:foreground "black" :background "yellow"))))
 '(isearch ((t (:background "red" :foreground "white"))))
 '(lazy-highlight ((t (:background "yellow" :foreground "black"))))
 '(menu ((t (:background "black" :foreground "yellow" :underline "yellow"))))
 '(mode-line ((t (:background "yellow" :foreground "black"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "black" :foreground "yellow"))))
 '(org-checkbox ((t (:inherit bold :foreground "white"))))
 '(org-date ((t (:foreground "yellow" :underline t))))
 '(org-hide ((t (:foreground "black"))))
 '(org-level-1 ((t (:extend nil :background "yellow" :foreground "black" :weight normal :height 1.3))))
 '(org-level-2 ((t (:extend nil :foreground "magenta" :weight normal :height 1.2))))
 '(org-level-3 ((t (:extend nil :foreground "white" :weight normal :height 1.0))))
 '(org-level-4 ((t (:foreground "blue" :weight normal :height 1.0))))
 '(org-level-5 ((t (:foreground "green" :weight normal :height 1.0))))
 '(org-link ((t (:inherit link :foreground "yellow"))))
 '(org-special-keyword ((t (:inherit font-lock-keyword-face :foreground "blue"))))
 '(show-paren-match ((t (:background "yellow" :foreground "black"))))
 '(vertical-border ((t (:inherit nil :background "black" :foreground "yellow")))))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; disable auto-indentation of new lines
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; show line numbers
(require 'linum)
(global-linum-mode 1)
;; line color
(set-face-foreground 'linum "yellow")

;; ロックファイル / バックアップファイルを作成しない
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; 現在行を目立たせる
(setq hl-line-face 'underline)
(global-hl-line-mode)

;; smooth scroll
(setq scroll-step            1
      scroll-conservatively  10000)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; key binding
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; status
(setq org-todo-keywords
  '((sequence "TODO" "WEEK" "TODAY" "WIP" "WAIT" "CANCELED" "DONE")))
;; status color
(setq org-todo-keyword-faces
  '(
    ("TODO" . (:foreground "black" :background "yellow")) 
    ("WEEK" . (:foreground "black" :background "yellow"))
    ("TODAY" . (:foreground "black" :background "red" :weight bold)) 
    ("WIP" . (:foreground "black" :background "red"  :weight bold))
    ("WAIT" . (:foreground "black" :background "green"))
    ("CANCELED" . (:foreground "black" :background "green"))
    ("DONE" . (:foreground "black" :background "blue"))
  )
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; setting
;; indent heading
(setq org-startup-indented t)

;; not hide * of indent
;; (setq org-indent-mode-turns-on-hiding-stars nil)

;; width of indent
(setq org-indent-indentation-per-level 2)

;; show headings when emacs runs
(setq org-startup-folded 'content)

