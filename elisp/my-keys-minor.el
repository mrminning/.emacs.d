(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "C-c C-e") 'er/expand-region)
(define-key my-keys-minor-mode-map (kbd "C-c SPC") 'avy-goto-char)
(define-key my-keys-minor-mode-map (kbd "C-x C-SPC") 'avy-goto-char-2)
(define-key my-keys-minor-mode-map (kbd "C-x SPC") 'avy-goto-char-2)
(define-key my-keys-minor-mode-map (kbd "C-S-c C-S-c") 'mc/edit-lines)
(define-key my-keys-minor-mode-map (kbd "C->") 'mc/mark-next-like-this)
(define-key my-keys-minor-mode-map (kbd "M-j") 'mc/mark-next-like-this)
(define-key my-keys-minor-mode-map (kbd "C-<") 'mc/mark-previous-like-this)
(define-key my-keys-minor-mode-map (kbd "C-c C-<") 'mc/mark-all-like-this)
(define-key my-keys-minor-mode-map (kbd "C-x C-r") 'recentf-open-files)
(define-key my-keys-minor-mode-map (kbd "C--") 'undo)
(define-key my-keys-minor-mode-map (kbd "M-g g") 'avy-goto-line)
(define-key my-keys-minor-mode-map (kbd "M-g w") 'avy-goto-word-1)

;;(define-key my-keys-minor-mode-map (kbd "C-<tab>") 'yas-expand)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)

(defadvice load (after give-my-keybindings-priority)
  "Try to ensure that my keybindings always have priority."
  (if (not (eq (car (car minor-mode-map-alist)) 'my-keys-minor-mode))
      (let ((mykeys (assq 'my-keys-minor-mode minor-mode-map-alist)))
        (assq-delete-all 'my-keys-minor-mode minor-mode-map-alist)
        (add-to-list 'minor-mode-map-alist mykeys))))

(setq mac-option-modifier nil
      mac-command-modifier 'meta
      x-select-enable-clipboard t)

(provide 'my-keys-minor)
