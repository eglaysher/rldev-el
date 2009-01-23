;;; kfn-mode.el --- A quick syntax highlighter for Haeleth's KFN files

;; Copyright (C) 2007  Elliot Glaysher

;; Author: Elliot Glaysher <glaysher@umich.edu>
;; Keywords: c, tools

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


(define-generic-mode 'kfn-mode
  '("//")
  '("module" "ver" "end" "fun")
  '(("fun \\([[:word:]_]+\\)" (1 font-lock-function-name-face)))
  '(".kfn\\'")
  nil
  "Provides a major mode for viewing KFN compiler data files.")

(provide 'kfn-mode)
;;; kfn-mode.el ends here
