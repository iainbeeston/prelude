;; better navigation keys
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

;; redefine keys for isearch mode
(define-key isearch-mode-map (kbd "C-f") 'isearch-ring-advance)
(define-key isearch-mode-map (kbd "C-b") 'isearch-ring-retreat)

;; redefine keys for company mode
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;; disable zooming
(global-unset-key (kbd "C--"))
(global-unset-key (kbd "C-+"))
