(setenv racer-rust-src-path "/home/darkjedi/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src")
(use-package rust-mode
  :mode ("\\.rs\\'" . rust-mode)
  :config
  (setq rust-format-on-save t))
  (use-package flycheck-rust
    :ensure
    :config
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

  (use-package racer
    :config
    (add-hook 'rust-mode-hook #'racer-mode)
    (add-hook 'racer-mode-hook #'company-mode)
    (add-hook 'racer-mode-hook #'eldoc-mode))

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

(provide 'init-rust)
