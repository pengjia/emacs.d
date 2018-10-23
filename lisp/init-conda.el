;;; package --- Summary
;;; Commentary:
;;; Code:

(require-package 'conda)

(conda-env-initialize-interactive-shells)
(conda-env-autoactivate-mode t)

(provide 'init-conda)
;;; init-conda.el ends here

