(require-package 'go-mode)

(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(when (maybe-require-package 'go-mode)
  (after-load 'go-mode)
  (add-hook 'before-save-hook #'gofmt-before-save))

(provide 'init-golang)
