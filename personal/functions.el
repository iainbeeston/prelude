;; disable the menu bar (prelude enables this by default)
(menu-bar-mode 0)

;; turn on linum automatically
(global-linum-mode t)

;; tell flycheck that web-mode can use jscs mode
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'javascript-jscs 'web-mode))
