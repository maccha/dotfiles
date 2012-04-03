;; ���[�h�p�X�ǉ�
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf" "public_repos")

;; C-m��newline-and-indent�����蓖�Ă�
(global-set-key (kbd "C-m") 'newline-and-indent)

;; ���{��ݒ�
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(when (eq window-system 'w32)
  (set-file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932))

;; �J�����ԍ��\��
(column-number-mode t)

;; �t�@�C���T�C�Y��\��
(size-indication-mode t)

;; �^�C�g���o�[�Ƀt���p�X�\��
(setq frame-title-format "%f")

