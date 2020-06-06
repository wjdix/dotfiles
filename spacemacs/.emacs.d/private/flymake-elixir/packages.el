;;; packages.el --- flymake-elixir Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq flymake-elixir-packages
    '(
      flymake-easy
      flymake-elixir
      ))

;; List of packages to exclude.
(setq flymake-elixir-excluded-packages '())

(defun flymake-elixir/init-flymake-easy ()
  (use-package flymake-easy
    :defer t))

(defun flymake-elixir/init-flymake-elixir ()
  (use-package flymake-elixir
    :defer t
    :init (progn
            (eval-after-load "elixir-mode"
              '(add-hook 'elixir-mode-hook 'flymake-elixir-load)))))
;; For each package, define a function flymake-elixir/init-<package-name>
;;
;; (defun flymake-elixir/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
