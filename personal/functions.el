;; turn on linum automatically
(global-linum-mode t)

;; turn on git commit mode globally so emacs will use
;; magit when launched by git
(global-git-commit-mode)

;; tell flycheck that web-mode can use eslint
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'javascript-eslint 'web-mode))

;; set up moody for mode line styling
(moody-replace-mode-line-buffer-identification)
(moody-replace-vc-mode)
