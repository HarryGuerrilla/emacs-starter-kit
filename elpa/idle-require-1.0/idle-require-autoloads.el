;;; idle-require-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (idle-require-mode idle-require) "idle-require"
;;;;;;  "idle-require.el" (19502 49494))
;;; Generated autoloads from idle-require.el

(autoload (quote idle-require) "idle-require" "\
Add SYMBOL to `idle-require-symbols'.

\(fn SYMBOL)" nil nil)

(autoload (quote idle-require-mode) "idle-require" "\
Load unloaded autoload functions when Emacs becomes idle.
If `idle-require-symbols' is a list of files, those will be loaded.
Otherwise all autoload functions will be loaded.

Loading all autoload functions can easily triple Emacs' memory footprint.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("idle-require-pkg.el") (19502 49494 584224))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; idle-require-autoloads.el ends here