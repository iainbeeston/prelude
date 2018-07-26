;; when opening files, do not try to guess the path from the text under the cursor
(setq ido-use-filename-at-point nil)

;; set css mode tab width to 2
(setq css-indent-offset 2)

;; set web-mode tab width to 2
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; stop web-mode trying to line things up
(add-to-list 'web-mode-indentation-params '("lineup-args|lineup-ternary|calls|concats" . nil))

;; highlight closing tag in web-mode
(setq web-mode-enable-current-element-highlight t)

;; use jsx mode for both javascript and jsx files
(add-to-list 'web-mode-content-types '("jsx" . "\\.js[x]?\\'"))

;; put a space in the border for linum
(setq linum-format  "%4d ")

;; use web-mode for everything
(setq auto-mode-alist (rassq-delete-all 'js2-mode auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.es6\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; use ruby for builder files
(add-to-list 'auto-mode-alist '("\\.builder\\'" . ruby-mode))
;; use ruby for .ruby templates
(add-to-list 'auto-mode-alist '("\\.ruby\\'" . ruby-mode))

;; use labburn zenburn theme
(setq prelude-theme 'labburn)

;; settings needed for moody
(setq x-underline-at-descent-line t)

;; set max line length to 100
(setq whitespace-line-column 100)

;; swap option and command on emacs mac port
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'super)

;; ask emacs to confirm before quitting
(setq confirm-kill-emacs 'y-or-n-p)
