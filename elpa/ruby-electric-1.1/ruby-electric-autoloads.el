;;; ruby-electric-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ruby-electric-mode) "ruby-electric" "ruby-electric.el"
;;;;;;  (19502 49707))
;;; Generated autoloads from ruby-electric.el

(autoload (quote ruby-electric-mode) "ruby-electric" "\
Toggle Ruby Electric minor mode.
With no argument, this command toggles the mode.  Non-null prefix
argument turns on the mode.  Null prefix argument turns off the
mode.

When Ruby Electric mode is enabled, an indented 'end' is
heuristicaly inserted whenever typing a word like 'module',
'class', 'def', 'if', 'unless', 'case', 'until', 'for', 'begin',
'do'. Simple, double and back quotes as well as braces are paired
auto-magically. Expansion does not occur inside comments and
strings. Note that you must have Font Lock enabled.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("ruby-electric-pkg.el") (19502 49707 410052))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ruby-electric-autoloads.el ends here