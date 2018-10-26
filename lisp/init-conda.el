;;; package --- Summary
;;; Commentary:
;;; Code:

(require-package 'conda)

(after-load 'python-mode
  (conda-env-initialize-interactive-shells)
  (conda-env-autoactivate-mode t)
  )

(provide 'init-conda)
;;; init-conda.el ends here

