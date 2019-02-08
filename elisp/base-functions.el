;; Add your custom functions here

;; (defun something
;;    (do-something))

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; Are we in a terminal?
(defun is-in-terminal()
  (not (display-graphic-p)))

;; Duplicate line with C-S-d
(defun duplicate-line ()
  (interactive)
  (let ((col (current-column)))
    (move-beginning-of-line 1)
    (kill-line)
    (yank)
    (newline)
    (yank)
    (move-to-column col)))
(global-set-key (kbd "C-S-d") 'duplicate-line)

(provide 'base-functions)
