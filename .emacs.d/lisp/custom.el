(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; company stuff from p4v4n
(use-package company
  :ensure t
  :bind (("C-c /" . company-complete))
  :config (global-company-mode)
  (setq company-idle-delay 0.2)
  (setq company-require-match nil)
  (setq company-selection-wrap-around t)
  (setq company-tooltip-align-annotations t)
  (setq company-tooltip-flip-when-above t)
  (setq company-transformers '(company-sort-by-occurrence))
  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)
  (define-key company-search-map (kbd "C-n") 'company-select-next)
  (define-key company-search-map (kbd "C-p") 'company-select-previous)
  (define-key company-search-map (kbd "C-t") 'company-search-toggle-filtering))

;; Stuff from ebhavanishankar
(show-paren-mode t)
(defvar show-paren-style)
(setq show-paren-style 'parenthesis)

(electric-pair-mode 1)
(delete-selection-mode 1)

;; Tramp ssh
(defvar tramp-default-method)
(setq tramp-default-method "ssh")

(provide 'custom)
