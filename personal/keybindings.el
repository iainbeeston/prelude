;; better navigation keys
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

;; define # and € correctly for macbook uk keyboard
(global-set-key (kbd "M-2") (kbd "€"))
(global-set-key (kbd "M-3") (kbd "#"))
(define-key isearch-mode-map (kbd "M-2") (kbd "€"))
(define-key isearch-mode-map (kbd "M-3") (kbd "#"))

;; make full-screen use the default mac os shortcut
(global-set-key (kbd "<C-s-268632070>") 'toggle-frame-fullscreen)

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

;; disable process monitor
(global-unset-key (kbd "C-x p"))

;; make dired open new directories in the same buffer
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
