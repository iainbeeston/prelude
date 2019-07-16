;; disable tls 1.3 as a workaround for https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341 in emacs 26.2
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
