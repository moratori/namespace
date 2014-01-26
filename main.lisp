

(defpackage ns
  (:use :cl)
  (:export :defns))
(in-package ns)

(defmacro defns (pack-name &rest body)
  `(progn
	 (in-package :cl-user)
	 (defpackage ,pack-name 
	   ,@body
	   )
	 (in-package ,pack-name)
	 (annot:enable-annot-syntax)))
