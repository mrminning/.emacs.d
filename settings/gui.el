;; GUI stuff
;; GUI stuff for graphical X-mode
(when (display-graphic-p)
(add-to-list 'default-frame-alist '(width . 190)) ; character
(add-to-list 'default-frame-alist '(height . 56)) ; lines
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'firecode t)
)

;; GUI stupp for terminal mode
(when (not (display-graphic-p))
  ;; Set M-up and M-down
  (define-key input-decode-map "\e\eOA" [(meta up)])
  (define-key input-decode-map "\e\eOB" [(meta down)])
  )


;; highlight current line
;;(global-hl-line-mode 1)

;; show line numbers and col numbers on the toolbar
(display-line-numbers-mode 1)
(column-number-mode 1)

;; make text mode default for new buffers
;(setq default-major-mode 'text-mode)

;; show line numbers on side and set format
;;(global-linum-mode t)
;;(setq linum-format "%4d\u2502")

;;matching parenthesis highlighted  (when the cursor is on one)
(show-paren-mode 1)
(setq show-paren-style 'paranthesis) ; highlight entire bracket expression alt paranthesis

;(setq auto-save-default nil) ; stop creating #autosave# files'

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(provide 'gui)
