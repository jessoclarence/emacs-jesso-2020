; Set tabs to spaces
(setq indent-tabs-mode nil)

(recentf-mode 1)

(toggle-scroll-bar -1)
; Show line numbers
(global-linum-mode 1)

; Start new line on proper indent
(define-key global-map (kbd "RET") 'newline-and-indent)

; Remove icon-bar
(tool-bar-mode -1)

; Delete trailing whitespace on file save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Highlight chars after 80 col limit
(require 'whitespace)
 (setq whitespace-style '(face empty lines-tail trailing))
 (global-whitespace-mode t)

; git gutter
(require 'git-gutter-fringe)
(global-git-gutter-mode 1)

; evil mode by default
(require 'evil)
(evil-mode 1)

; Enable IDO mode
(require 'ido)
(ido-mode t)
(ido-vertical-mode 1)

; Gets recent command on M-x
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

; recent files
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

; theme
(load-theme 'solarized-dark t)

;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; set tab width
(setq-default tab-width 4)

;; mode line tweaks
;; git clone git://github.com/jonathanchu/emacs-powerline.git
;; mkdir .emacs.d/vendor/
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline/")
(require 'powerline)

;; open to full screen size
(toggle-frame-maximized)

(savehist-mode)
