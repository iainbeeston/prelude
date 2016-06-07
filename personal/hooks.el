;; override keys in the minibuffer
(add-hook 'minibuffer-setup-hook
          (lambda ()
            (local-set-key (kbd "C-h") 'delete-backward-char)))

;; tell flycheck to disable jscs in web mode unless it's a jsx file
(add-hook 'web-mode-hook
          (lambda ()
            (message "checking if web mode is opening a jsx file")
            (unless (string-match "jsx" (file-name-extension buffer-file-name))
              (message "disabling jscs (not jsx file)")
              (setq-default flycheck-disabled-checkers '(javascript-jscs)))))

;; automatically align columns when opening a csv file
(add-hook 'csv-mode-hook
          (lambda ()
            (csv-align-fields nil (point-min) (point-max))))
