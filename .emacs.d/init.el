
(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))


(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(progn
  (require 'use-package)
  (setq use-package-always-ensure t))


(require 'emacs-config)
(require 'ui-config)
(require 'evil-config)
(require 'slime-config)
(require 'flycheck-config)

