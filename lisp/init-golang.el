(require-package 'go-mode)
(require-package 'go-eldoc)
(require-package 'go-autocomplete)
(require-package 'golint)

(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(defun go-mode-setup ()
  (setq compile-command "go build -v && go test -v && go vet && golint")
  (go-eldoc-setup)
  (auto-complete-mode 1)
  (setq gofmt-command "goimports")
  (setq tab-width 4)
  (setq indent-tabs-mode 1)
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  )

(add-hook 'go-mode-hook 'go-mode-setup)

(provide 'init-golang)
