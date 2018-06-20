(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa"        . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(custom-set-variables
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages (quote (multiple-cursors expand-region))))
(custom-set-faces)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
