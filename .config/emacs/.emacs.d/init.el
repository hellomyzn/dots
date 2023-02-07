;; REF: https://github.com/daviwil/emacs-from-scratch/blob/1a13fcf0dd6afb41fce71bf93c5571931999fed8/init.el#L37
;;      https://www.youtube.com/watch?v=VcgjTEa0kU4&list=PLEoMzSkcN8oPH1au7H6B7bBJ4ZO7BXjSZ&index=5&ab_channel=SystemCrafters

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
 '(org-level-1 ((t (:extend nil :background "black" :foreground "yellow" :weight normal :height 1.3))))
 '(org-level-2 ((t (:extend nil :foreground "magenta" :weight normal :height 1.2))))
 '(org-level-3 ((t (:extend nil :foreground "white" :weight normal :height 1.0))))
 '(org-level-4 ((t (:foreground "blue" :weight normal :height 1.0))))
 '(org-level-5 ((t (:foreground "green" :weight normal :height 1.0))))
 '(org-link ((t (:inherit link :foreground "yellow"))))
 '(org-priority ((t (:inherit font-lock-keyword-face :background "cyan" :foreground "black"))))
 '(org-special-keyword ((t (:inherit font-lock-keyword-face :foreground "blue"))))
 '(show-paren-match ((t (:background "yellow" :foreground "black"))))
 '(vertical-border ((t (:inherit nil :background "black" :foreground "yellow")))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(column-number-mode)
(global-display-line-numbers-mode t)

(use-package command-log-mode)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)          ; Disable the menu bar

;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; disable auto-indentation of new lines
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; show line numbers
;; (require 'linum)
;; (global-linum-mode 1)
;; line color
;; (set-face-foreground 'linum "yellow")

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
 '(package-selected-packages
   '(visual-fill-column org-bullets command-log-mode use-package)))
;; setting
;; indent heading
(setq org-startup-indented t)

;; not hide * of indent
;; (setq org-indent-mode-turns-on-hiding-stars nil)

;; width of indent
(setq org-indent-indentation-per-level 2)

;; show headings when emacs runs
(setq org-startup-folded 'content)






;; Org Mode Configuration ------------------------------------------------------

(defun efs/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (visual-line-mode 1))

(defun efs/org-font-setup ()
  ;; Replace list hyphen with dot
  (font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

  ;; Set faces for heading levels
  (dolist (face '((org-level-1 . 1.2)
                  (org-level-2 . 1.1)
                  (org-level-3 . 1.05)
                  (org-level-4 . 1.0)
                  (org-level-5 . 1.1)
                  (org-level-6 . 1.1)
                  (org-level-7 . 1.1)
                  (org-level-8 . 1.1)))
    (set-face-attribute (car face) nil :font "Cantarell" :weight 'regular :height (cdr face)))

  ;; Ensure that anything that should be fixed-pitch in Org files appears that way
  (set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-table nil   :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch))

(use-package org
  :config
  (setq org-ellipsis " ▾"))


(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))
 
 (defun efs/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :hook (org-mode . efs/org-mode-visual-fill))
