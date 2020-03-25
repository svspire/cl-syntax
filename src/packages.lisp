(in-package :cl-user)

(eval-when (:load-toplevel :compile-toplevel :execute)
  (break "You are attempting to load cl-syntax. I (Shannon Spires) strongly dislike
this software both on philosophical grounds (because it's most often used
merely as a substrate to allow cl-annot, which injects Python
syntax into Common Lisp source code) and because it requires custom
reader-macros which play havoc with most implementations of Common Lisp.
I suggest you modify whatever systems you're using that require this
library such that they no longer require it."))


(defpackage :cl-syntax
  (:nicknames :syntax)
  (:use :cl :named-readtables)
  (:import-from :trivial-types
                #:package-designator
                #:proper-list)
  (:export #:syntax
           #:syntax-designator
           #:defsyntax
           #:define-package-syntax
           #:find-syntax
           #:use-syntax))
