(require-package 'py-autopep8)
(setq py-autopep8-options '("--aggressive" "--max-line-length=80"))
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(provide 'init-pep8)
