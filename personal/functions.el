;; turn on linum automatically
(global-linum-mode t)

;; turn on git commit mode globally so emacs will use
;; magit when launched by git
(global-git-commit-mode)

;; tell flycheck that web-mode can use eslint
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'javascript-eslint 'web-mode))
