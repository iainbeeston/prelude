;; enable copy-paste on the terminal
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))
(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))
(when (eq system-type 'darwin)
  (setq interprogram-paste-function 'copy-from-osx)
  (setq interprogram-cut-function 'paste-to-osx))

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

;; highlight closing tag in web-mode
(setq web-mode-enable-current-element-highlight t)

;; put a space in the border for linum
(setq linum-format  "%4d ")

;; use js2 for es6 files
(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
;; use web-mode for everything
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
;; use ruby for builder files
(add-to-list 'auto-mode-alist '("\\.builder\\'" . ruby-mode))
;; use ruby for .ruby templates
(add-to-list 'auto-mode-alist '("\\.ruby\\'" . ruby-mode))

;; use labburn zenburn theme
(setq prelude-theme 'labburn)

;; set max line length to 100
(setq whitespace-line-column 100)

;; stop js2-mode from doing it's own syntax validation
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
