(add-to-list 'load-path (concat dotfiles-dir "/vendor"))

;; DECIDE WHICH FUNCTIONALITY TO ENABLE
(setq *macbook-support-enabled* t)
(setq *spell-check-support-enabled* t)
(setq *byte-code-cache-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))

;; SET COMMAND KEY TO META KEY
(setq mac-command-modifier 'meta)

;; SET OTHER USEFUL KEYS
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "M-s") 'save-buffer)

;; SET MAC SYSTEM FONTS FOR TERMINAL
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; ENABLE MENU-BAR FOR EMACS 23
(menu-bar-mode)

;; ENABLE EMACS SERVER
(server-start)

;; AUTOMATICALLY BYTE-COMPILE .el FILES
;;(when *byte-code-cache-enabled*
;;x  (require 'init-byte-code-cache))

;; AUGMENT SEARCH PATH FOR EXTERNAL PROGRAMS WHEN RUNNING OSX
(when *is-a-mac*
  (dolist (dir (mapcar 'expand-file-name '("/usr/local/bin" "/opt/local/bin" "/usr/bin")))
    (setenv "PATH" (concat dir ":" (getenv "PATH")))
    (setq exec-path (append (list dir) exec-path))))

;; USE MACPORT ASPELL DICTIONARY
(setq ispell-program-name "/opt/local/bin/aspell")
(setenv "ASPELL_CONF" nil)

;; SET COLOR THEME
(load-file "~/.emacs.d/vendor/color-theme-railscasts/color-theme-railscasts.el")
(require 'color-theme)
(add-to-list 'color-themes '(color-theme-railscasts "Railscasts" "<http://railscasts.com>"))
;;(color-theme-initialize)  ;; TODO For some reason this crashed emacs
(color-theme-railscasts)
;; Set line highlighting to a color that does not conflict so much
;; with the color theme
(set-face-background 'highlight "#2f303a")
(set-face-background 'region "#555577")
(eval-after-load 'mumamo
  '(eval-after-load 'railscasts
     '(set-face-background 'mumamo-background-chunk-major "#232323")))
(eval-after-load 'mumamo
  '(eval-after-load 'railscasts
     '(set-face-background 'mumamo-background-chunk-submode1 "#2f303a")))

;; ADD CDET REQUIRED FOR ECB
(load-file "~/.emacs.d/vendor/cedet-1.0pre7/common/cedet.el")
(global-ede-mode 1)                      ;; Enable the Project management system
(semantic-load-enable-code-helpers)      ;; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ;; Enable template insertion menu

;; SET UP ECB MENU SYSTEM
(add-to-list 'load-path (concat dotfiles-dir "/vendor/ecb-2.32"))
(require 'ecb)
(setq ecb-tip-of-the-day nil)
(setq ecb-auto-activate t)
(setq ecb-compilation-buffer-names (quote (("*Calculator*")
                                           ("*vc*")
                                           ("*vc-diff*")
                                           ("*Apropos*")
                                           ("*eshell*")
                                           ("*Occur*")
                                           ("*shell*" . t)
                                           ("\\*[cC]ompilation.*\\*" . t)
                                           ("\\*i?grep.*\\*" . t)
                                           ("*JDEE Compile Server*")
                                           ("*Help*") ("*Completions*")
                                           ("*Backtrace*")
                                           ("*Compile-log*")
                                           ("*bsh*")
                                           ("*Messages*")
                                           ("*magit: " . t))))
(setq ecb-compile-window-height 6)
(setq ecb-compile-window-height 6)
(setq ecb-fix-window-size (quote width))
(setq ecb-compile-window-width (quote edit-window))
(setq ecb-layout-name "left7")
(setq ecb-layout-window-sizes (quote (("left7" (0.1807909604519774 . 0.5853658536585366) (0.1807909604519774 . 0.21951219512195122) (0.1807909604519774 . 0.3170731707317073)))))
(setq ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
(setq ecb-source-path (quote ("~/sites")))
(setq ecb-tree-indent 4)
(setq ecb-tip-of-the-day nil)
(setq ecb-vc-enable-support t)

;; SET FRAME SIZE TO MAXIMUM
(set-frame-width (selected-frame) 200)
(set-frame-height (selected-frame) 100)