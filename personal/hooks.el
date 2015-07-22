;; override keys in the minibuffer
(add-hook 'minibuffer-setup-hook
          (lambda ()
            (local-set-key (kbd "C-h") 'delete-backward-char)))
