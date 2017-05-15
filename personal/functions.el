;; turn on linum automatically
(global-linum-mode t)

;; tell flycheck that web-mode can use eslint
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'javascript-eslint 'web-mode))
