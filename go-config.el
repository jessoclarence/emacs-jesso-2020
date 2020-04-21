(setenv "GOPATH" "/Users/jmurugan/work/gosrc/")
(add-to-list 'exec-path "/Users/jmurugan/work/gosrc/bin")
(add-to-list 'exec-path "/usr/local/go/bin/")

;; have to add these to path again for guru to work
;; emacs shell uses this path
(setenv "PATH" (concat (getenv "PATH") ":/Users/jmurugan/work/gosrc/bin"))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/go/bin/"))

; go get golang.org/x/tools/cmd/godoc
; go get github.com/rogpeppe/godef

(defun my-go-mode-hook ()
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)

  ; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))

  ; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-*") 'pop-tag-mark)
  )

(add-hook 'go-mode-hook 'my-go-mode-hook)

(defun auto-complete-for-go ()
  (auto-complete-mode 1))

; go get -u github.com/nsf/gocode
(add-hook 'go-mode-hook 'auto-complete-for-go)

(add-hook 'go-mode-hook #'yas-minor-mode)

(with-eval-after-load 'go-mode
   (require 'go-autocomplete))
