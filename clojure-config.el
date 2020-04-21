(add-to-list 'exec-path "/usr/local/bin/")

(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook #'yas-minor-mode)
