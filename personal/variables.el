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

;; put a space in the border for linum
(setq linum-format  "%4d ")
