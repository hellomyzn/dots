;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; export to markdown
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add PROPERTIES and LOGBOOK to .md
(setq org-export-with-properties t)
(setq org-export-with-drawers '("LOGBOOK"))

(require 'ox-md) ;; Markdown エクスポート機能をロード

(defun my-export-org-to-md (input-dir output-dir)
  "INPUT-DIR 内の .org ファイルを OUTPUT-DIR に Markdown としてエクスポートする。"
  (unless (file-exists-p output-dir)
    (make-directory output-dir t)) ;; 出力ディレクトリが存在しない場合は作成

  (let ((org-files (directory-files input-dir t "\\.org$"))) ;; .org ファイルを取得
    (dolist (file org-files)
      (with-current-buffer (find-file-noselect file)
        (let* ((basename (file-name-base file))
               (exported-file (concat (file-name-sans-extension file) ".md"))
               (output-file (concat (file-name-as-directory output-dir) basename ".md")))
          (org-md-export-to-markdown) ;; Markdown にエクスポート
          (when (file-exists-p exported-file) ;; `.md` ファイルが生成されたか確認
            (rename-file exported-file output-file t)) ;; `output-dir` に移動
          (kill-buffer))))))

(my-export-org-to-md "/opt/org/agendas/" "/opt/org/markdown/")

(message "Export finished!")
