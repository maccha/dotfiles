;; ロードパス追加
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf" "public_repos")

;; C-mにnewline-and-indentを割り当てる
(global-set-key (kbd "C-m") 'newline-and-indent)

;; 日本語設定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(when (eq window-system 'w32)
  (set-file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932))

;; カラム番号表示
(column-number-mode t)

;; ファイルサイズを表示
(size-indication-mode t)

;; タイトルバーにフルパス表示
(setq frame-title-format "%f")

