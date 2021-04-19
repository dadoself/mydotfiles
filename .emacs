(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

(setq scroll-step 1)
;(setq scroll-conservatively 10000)

(setq custom-file "~/.emacs-custom")
(load custom-file)

;; Package
(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)
(package-initialize)

;; Better defaults
(require 'better-defaults)

;; Helm
(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file]                'helm-find-files)
(define-key global-map [remap occur]                    'helm-occur)
(define-key global-map [remap list-buffers]             'helm-buffers-list)
(define-key global-map [remap dabbrev-expand]           'helm-dabbrev)
(define-key global-map [remap execute-extended-command] 'helm-M-x)
(unless (boundp 'completion-in-region-function)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))

;; Sublimity
(require 'sublimity)
(require 'sublimity-scroll)
;(require 'sublimity-map)
(require 'sublimity-attractive)
(sublimity-mode 1)

;; All the icons
(require 'all-the-icons)

;; Projectile
(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
(setq dashboard-startup-banner 'logo)
(setq dashboard-center-content t)
(setq dashboard-items '((recents   . 5)
                        (bookmarks . 5)
                        (projects  . 5)
                        (agenda    . 5)
                        (registers . 5)))
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

;; Magit
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; Avy
(require 'avy)
(require 'ace-window)
(require 'ace-link)
(avy-setup-default)
(ace-link-setup-default)
(global-set-key (kbd "C-c C-j") 'avy-resume)
(global-set-key (kbd "C-:")     'avy-goto-char)
(global-set-key (kbd "C-'")     'avy-goto-char-2)
(global-set-key (kbd "M-g f")   'avy-goto-line);M-g g
(global-set-key (kbd "M-g w")   'avy-goto-word-1)
(global-set-key (kbd "M-g e")   'avy-goto-word-0)
(global-set-key (kbd "M-o")     'ace-window)

;; Treemacs
(require 'treemacs)
(require 'treemacs-projectile)
(require 'treemacs-magit)
(require 'treemacs-icons-dired)
(treemacs-icons-dired-mode)
(global-set-key (kbd "M-0")       'treemacs-select-window)
(global-set-key (kbd "C-x t 1")   'treemacs-delete-other-windows)
(global-set-key (kbd "C-x t t")   'treemacs)
(global-set-key (kbd "C-x t B")   'treemacs-bookmark)
(global-set-key (kbd "C-x t C-t") 'treemacs-find-file)
(global-set-key (kbd "C-x t M-t") 'treemacs-find-tag)

;; Anzu
(require 'anzu)
(global-anzu-mode +1)

;; Yascroll
(require 'yascroll)
(global-yascroll-bar-mode 1)
(setq yascroll:delay-to-hide nil)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)

;; Expand region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; Move text
(require 'move-text)
(move-text-default-bindings)

;; Doom modeline
(require 'doom-modeline)
(doom-modeline-mode 1)

;; Doom themes
(require 'doom-themes)
(load-theme 'doom-one t)
(doom-themes-visual-bell-config)
(doom-themes-treemacs-config)
(doom-themes-org-config)

;; Company
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; LSP mode
(require 'lsp-mode)
(require 'lsp-ui)
(require 'lsp-treemacs)
(require 'helm-lsp)
(add-hook 'prog-mode-hook #'lsp)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
