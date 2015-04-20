;; GUI stuff

;; highlight current line
(global-hl-line-mode 1)

;; show line numbers and col numbers on the toolbar
(line-number-mode 1)
(column-number-mode 1)

;; make text mode default for new buffers
;(setq default-major-mode 'text-mode)

;; show line numbers on side and set format
(global-linum-mode t)
(setq linum-format "%4d\u2502")

;;matching parenthesis highlighted  (when the cursor is on one)
(show-paren-mode 1)

;(setq auto-save-default nil) ; stop creating #autosave# files'

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'firecode t)

(provide 'gui)
