(setq org-directory "~/Dropbox/GTD/")
(setq org-agenda-files (directory-files-recursively org-directory "\.org$"))
(setq org-default-notes-file (concat org-directory "inbox.org")) ;; capture every things into inbox.org
(setq org-default-journal-file (concat org-directory "journal.org"))

(setq org-todo-keywords `((sequence "TODO(t!)" "NEXT(n)" "WAITING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")))


(defun s-font()
  (interactive)
  (set-default-font "monospace-11")
  (setq fonts
        (cond ((eq system-type 'darwin)     '("Monaco"    "STHeiti"))
              ((eq system-type 'gnu/linux)  '("Menlo"     "WenQuanYi Zen Hei"))
              ((eq system-type 'windows-nt) '("Consolas"  "Microsoft Yahei"))))
  (set-face-attribute 'default nil :font
                      (format "%s:pixelsize=%d" (car fonts) 14))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family (car (cdr fonts)))))
  ;; Fix chinese font width and rescale
  (setq face-font-rescale-alist '(("Microsoft Yahei" . 1.2) ("WenQuanYi Micro Hei Mono" . 1.2) ("STHeiti". 1.2)))
  )
(add-to-list 'after-make-frame-functions
             (lambda (new-frame)
               (select-frame new-frame)
               (if window-system (s-font))))
(if window-system
    (s-font))

(provide 'init-local)
;;;
