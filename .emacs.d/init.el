(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
	("org" . "https://orgmode.org/elpa/")
	("melpa-stable" . "https://stable.melpa.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

(defvar use-package-always-ensure)
(setq use-package-always-ensure t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; rust-mode, racer
(require 'init-rust)

;; rest client
(require 'restclient)

;; custom config
(require 'custom)

(provide 'init)
;;; init.el ends here

