;;; kepago-mode.el --- Major mode for editing Kepago files

;; Copyright (C) 2007  Elliot Glaysher

;; Author: Elliot Glaysher <glaysher@umich.edu>
;; Keywords: convenience, extensions

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; 

;;; Code:

(define-generic-mode 'kepago-mode
  '("//")
  '(;; Data types
	"int" "byte" "bit4" "bit2" "bit" "str"

	;; Conditionals, et cetera
	"if" "else" "while" "repeat" "till" "for" "case" "of" "other" "ecase"

	;; Flow control
	"goto" "goto_if" "goto_unless" "goto_on" "goto_case" "gosub" "gosub_if"
	"gosub_unless" "gosub_on" "gosub_case" "ret" "jump" "farcall" "rtl"
	"gosub_with" "ret_with" "farcall_with" "rtl_with")
  '(("^\\(#.*\\)$" (1 font-lock-preprocessor-face))
	("\\(@[^ \t\n:;]+\\)" (1 font-lock-function-name-face))
	("\\(int[ABCDEFGZ]\\[[0-9]+\\]\\)" (1 font-lock-variable-name-face))
    ("\\(str[SMK]\\[[0-9]+\\]\\)" (1 font-lock-variable-name-face)))
  '(".ke\\'")
  nil
  "Provides a major mode for editing kepago files")


(provide 'kepago-mode)
;;; kepago-mode.el ends here
