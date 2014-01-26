
(defpackage namespace-asd
	(:use :cl :asdf))
(in-package namespace-asd)


(defsystem namespace
	:depends-on (:cl-annot)
	:components ((:file "main"))
	:serial t)
