;;(use-package zenburn-theme
;;  :defer t
;;  :init
;;  (load-theme 'zenburn t))

(load-theme 'misterioso)

;; My settings below
(set-scroll-bar-mode 'right)

;; highlight current line
(global-hl-line-mode 1)

;; show line numbers and col numbers on the toolbar
(column-number-mode 1)

(when (>= emacs-major-version 26)
  (setq default-frame-alist
	(append default-frame-alist '((inhibit-double-buffering . t))))
  )

;; Set font Hack
;;(set-frame-font  "-*-Hack-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1" nil t)
;; Set font DejaVu
(set-frame-font  "-*-DejaVu Sans Mono-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1" nil t)

(provide 'base-theme)
