(use-package zenburn-theme
  :defer t
  :init
  (load-theme 'zenburn t))

;; My settings below
(set-scroll-bar-mode 'right)

;; highlight current line
(global-hl-line-mode 1)

;; show line numbers and col numbers on the toolbar
(line-number-mode 1)
(column-number-mode 1)

(setq default-frame-alist
      (append default-frame-alist '((inhibit-double-buffering . t))))


(provide 'base-theme)
