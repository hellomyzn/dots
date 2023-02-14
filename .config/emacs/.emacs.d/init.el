;; REF: https://github.com/daviwil/emacs-from-scratch/blob/1a13fcf0dd6afb41fce71bf93c5571931999fed8/init.el#L37
;;      https://www.youtube.com/watch?v=VcgjTEa0kU4&list=PLEoMzSkcN8oPH1au7H6B7bBJ4ZO7BXjSZ&index=5&ab_channel=SystemCrafters

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; frontend
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

;; '(help-key-binding ((t (:foreground "black" :background "yellow"))))
;; '(isearch ((t (:background "red" :foreground "white"))))
;; '(lazy-highlight ((t (:background "yellow" :foreground "black"))))
;; '(menu ((t (:background "black" :foreground "yellow" :underline "yellow"))))
;; '(mode-line ((t (:background "yellow" :foreground "black"))))
;; '(mode-line-inactive ((t (:inherit mode-line :background "black" :foreground "yellow"))))
;; '(org-checkbox ((t (:inherit bold :foreground "white"))))
;; '(org-date ((t (:foreground "yellow" :underline t))))
;; '(org-hide ((t (:foreground "black"))))
;; '(org-level-1 ((t (:extend nil :background "black" :foreground "yellow" :weight normal :height 1.3))))
;; '(org-level-2 ((t (:extend nil :foreground "magenta" :weight normal :height 1.2))))
;; '(org-level-3 ((t (:extend nil :foreground "white" :weight normal :height 1.0))))
;; '(org-level-4 ((t (:foreground "blue" :weight normal :height 1.0))))
;; '(org-level-5 ((t (:foreground "green" :weight normal :height 1.0))))
;; '(org-link ((t (:inherit link :foreground "yellow"))))
;; '(org-priority ((t (:inherit font-lock-keyword-face :background "cyan" :foreground "black"))))
;; '(org-special-keyword ((t (:inherit font-lock-keyword-face :foreground "blue"))))
;; '(show-paren-match ((t (:background "yellow" :foreground "black"))))
;; '(vertical-border ((t (:inherit nil :background "black" :foreground "yellow")))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)          ; Disable the menu bar
(xterm-mouse-mode 1)        ; Enable mouse

;; disable auto-indentation of new lines
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; show line numbers
;; (require 'linum)
;; (global-linum-mode 1)
;; line color
;; (set-face-foreground 'linum "yellow")

;; not create a files below(lock file, backup file or so)
(setq create-lockfiles nil)
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; make underline on current line
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
;;(setq org-todo-keywords
;;  '((sequence "TODO" "WEEK" "TODAY" "WIP" "WAIT" "CANCELED" "DONE")))
(setq org-todo-keywords
  '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")
    (sequence "BACKLOG(b)" "PLAN(p)" "READY(r)" "ACTIVE(a)" "REVIEW(v)" "WAIT(w@/!)" "HOLD(h)" "|" "COMPLETED(c)" "CANC(k@)")))
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

(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-agenda-files (list "~/org/private.org"))

