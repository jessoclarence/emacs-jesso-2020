(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

; all packages i want to have
(defvar my-packages '(go-mode
                      go-guru
                      git-gutter-fringe
                      clojure-mode
                      smex
                      auto-complete
                      smartparens
                      projectile
                      cider
                      magit
                      yasnippet
					  yasnippet-snippets
                      evil))

; Initialise packages
(package-initialize)

; install the packages if it isnt there already
(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "2d835b43e2614762893dc40cbf220482d617d3d4e2c35f7100ca697f1a388a0e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(package-selected-packages
   (quote
	(yasnippet-snippets cyberpunk-theme go-guru solarized-theme smex ido-vertical-mode git-gutter-fringe recentf-ext go-autocomplete cider projectile magit clojure-mode evil smartparens))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq yas-snippet-dirs '("/Users/jmurugan/work/yasnippets"))
(require 'yasnippet)
(yas-reload-all)


(load-file ".emacs.d/go-config.el")
(load-file ".emacs.d/preferences.el")
(load-file ".emacs.d/clojure-config.el")
