;;; package --- Summary
;;; Commentary:
;;; Code:

(require-package 'plantuml-mode)

(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(after-load 'plantuml-mode
  (setq plantuml-jar-path "~/bin/plantuml.jar")
  )

(provide 'init-plantuml)
;;; init-plantuml.el ends here

