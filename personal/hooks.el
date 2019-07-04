;; automatically align columns when opening a csv file
(add-hook 'csv-mode-hook
          (lambda ()
            (csv-align-fields nil (point-min) (point-max))))

;; disable smart parens
(add-hook 'prelude-prog-mode-hook
          (lambda ()
            (smartparens-mode -1)))

;; disable electric indent mode
(add-hook 'after-change-major-mode-hook
          (lambda ()
            (electric-indent-mode -1)))
