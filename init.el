;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Svens Emacs setting 
;; version  2015-04-15
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Turn off mouse interface early in startup to avoid momentary display
;;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen
(setq inhibit-startup-message t)

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path settings-dir)
(add-to-list 'load-path site-lisp-dir)

;; Setup GUI
(require 'gui)


;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Save cursor position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))

;; Load MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
    (package-refresh-contents))

  )

;; Setup packages
(add-to-list 'load-path 
             (expand-file-name "el-get/el-get" user-emacs-directory))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(el-get 'sync)

;; Packages to install
(defvar my-packages '(
                      auto-complete
                      ace-jump-mode
                      expand-region
                      emacs-flymake
                      feature-mode
                      multiple-cursors
                      neotree
                      php-mode
                      phpunit
                      php-auto-yasnippets
                      smart-tab
                      smartparens
                      web-mode
                      yasnippets
                      ))
(el-get 'sync my-packages)

(when is-mac  
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  (setq ns-right-alternate-modifier nil)
  )

;; Setup auto-complete
;;(setq ac-user-dictionary '(expand-file-name "my.dict" user-emacs-directory))
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

;; Setup ace-jump-mode
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)

(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))

;; Setup expand-region
(require 'expand-region)
;;(global-set-key (kbd "C-=") 'er/expand-region)

;; Setup neotree
;;(add-to-list 'load-path "~/Projects/akaprojekt")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Setup smart-tab http://www.emacswiki.org/emacs/TabCompletion
(require 'smart-tab)
(global-smart-tab-mode 1)

;; Setup web-mode
(require 'web-mode) 
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode)) 
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; Setup php-mode
(require 'php-mode) 

;; Setup Electric Pair
(electric-pair-mode)

;; Setup recent mode
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 50)
;;(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Setup move-text
(require 'move-text)
(move-text-default-bindings)

;; Setup ibuffer to list buffers
(defalias 'list-buffers 'ibuffer)

;; Setup yasnippets
(require 'yasnippets)
(yas-global-mode 1)
(require 'php-auto-yasnippets)
(setq php-auto-yasnippet-php-program "~/.emacs.d/el-get/php-auto-yasnippets/Create-PHP-YASnippet.php")
;;(setq yas-snippet-dirs '("~/emacs.d/snippets"  "~/Downloads/interesting-snippets"))
(setq yas-snippet-dirs (append yas-snippet-dirs '("~/.emacs.d/snippets")))

;; make indentation commands use space only (never tab character)
(setq-default indent-tabs-mode nil) ; emacs 23.1, 24.2, default to t

;; set default tab char's display width to 4 spaces
(setq-default tab-width 4) ; emacs 23.1, 24.2, default to 8

;; set current buffer's tab char's display width to 4 spaces
(setq tab-width 4)
;; make tab key call indent command or insert tab character, depending on cursor position
(setq-default tab-always-indent nil)

;; Setup my keymap
(require 'keymap)
(my-keys-minor-mode 1)

