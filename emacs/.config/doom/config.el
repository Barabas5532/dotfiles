;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

(setq doom-font (font-spec :family "Iosevka Term SS18" :size 13))

(setq doom-theme 'doom-solarized-light)

(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq scroll-margin 5)

;; Never use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(add-hook 'verilog-mode-hook (lambda () (progn
                                          ;; No auto newline after semicolon
                                          (setq verilog-auto-newline nil)
                                          ;; Indentation
                                          (setq verilog-case-indent 4)
                                          (setq verilog-cexp-indent 1)
                                          (setq verilog-indent-begin-after-if nil)
                                          (setq verilog-indent-class-inside-pkg t)
                                          (setq verilog-indent-declaration-macros nil)
                                          (setq verilog-indent-ignore-multiline-defines t)
                                          (setq verilog-indent-ignore-regexp nil)
                                          (setq verilog-indent-level 4)
                                          (setq verilog-indent-level-behavioral 4)
                                          (setq verilog-indent-level-declaration 0)
                                          (setq verilog-indent-level-directive 4)
                                          (setq verilog-indent-level-module 0)
                                          (setq verilog-indent-lists t)
                                          (setq verilog-tab-always-indent nil)
                                          ;; Alignment
                                          (setq verilog-align-assign-expr nil)
                                          (setq verilog-align-comment-distance 1)
                                          (setq verilog-align-decl-expr-comments t)
                                          (setq verilog-align-ifelse nil)
                                          (setq verilog-align-typedef-regexp nil)
                                          (setq verilog-align-typedef-words nil)
                                          )))

;; Disable automatic parentheses insertion. Sometimes is inserts to the wrong
;; place in lisp, and often it just moves to the right instead of inserting a
;; new parenthesis when one is already next to cursor.
(remove-hook 'doom-first-buffer-hook #'smartparens-global-mode)
