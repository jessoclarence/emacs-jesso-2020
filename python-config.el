(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
; Post this run jedi:install-server once on emacs buffer
; That will setup virtualenv dir etc.

(add-hook 'python-mode-hook #'smartparens-strict-mode)
(add-hook 'python-mode-hook #'yas-minor-mode)

; M-x pyvenv-activate <folder to virtualenv>
(add-hook 'python-mode-hook #'pyvenv-mode)
