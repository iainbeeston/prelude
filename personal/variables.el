;; enable copy-paste on the terminal
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))
(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))
(setq interprogram-paste-function 'copy-from-osx)
(setq interprogram-cut-function 'paste-to-osx)

;; when opening files, do not try to guess the path from the text under the cursor
(setq ido-use-filename-at-point nil)

;; set css mode tab width to 2
(setq css-indent-offset 2)

;; set javascript and json tab width to 2
(setq-default js2-basic-offset 2)

;; set web-mode tab width to 2
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; put a space in the border for linum
(setq linum-format  "%4d ")

;; use js2 for es6 files
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
;; use web-mode for everything
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

;; use labburn zenburn theme
(setq prelude-theme 'labburn)
