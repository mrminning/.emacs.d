;; Add your custom functions here

;; (defun something
;;    (do-something))

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; Are we in a terminal?
(defun is-in-terminal()
  (not (display-graphic-p)))



(provide 'base-functions)
