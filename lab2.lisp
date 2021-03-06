(defun len (l)
	(if (endp l) 
		0
		(+ (len (cdr l)) 1)
	)
)

(defun pow1(x y)
	(setq z 1)
	(loop for i from 1 to y
	do (setq z (* z x))
	)
	z
)

(defun pow2(x y)
	(if (<= y 0)
		1
		(* (pow x (- y 1)) x))

)

(defun ex2(x y)
	(setq z x)
	(setq z (* z x))
	(setq z (* z y))
	(setq z (* z y))
	z
)

(defun ex3 (l)
	(if (endp l) 
		0
		(if (numberp (car l))
		(+ (ex3 (cdr l)) 1)
		(ex3 (cdr l))
		)
	)
)

(defun aceleasi-elemente(list)
  (or (null (rest list)) 
      (and (equalp (first list)
                   (second list))
           (aceleasi-elemente (rest list)))))

(defun f1()
	( setq a '( u v w))
	(set ( car ( cdr a ) ) 'b)
	a
)

(defun f2()
	(setq a '( u v w))
	'( setq a '( u v w))
	a
)

(defun f3()
	( setq a 'a )
	( setq b 'a )
	;;( list a b 'b)
	( list ( list 'a 'b) '( list 'a 'b ))
)

(defun double ( x ) (* 2 x ) )
(defun times-square ( x y ) (* x y y ) )
(defun times-cube ( x y ) (* x y y y ) )
(defun cube-times ( x y ) ( times-cube y x ) )

(defun concat (l1 l2)
	(if (endp l1)
		l2
		(cons (car l1) (concat (cdr l1) l2))
	)
)

(defun factorial (n)
	(if (<= n 0)
		1 
		(* (factorial (- n 1)) n)
	)
)

(defun suma_list (l)
	(if (endp l) 
		0
		(if (numberp (car l))
		(+ (suma_list (cdr l)) (car l))
		(suma_list (cdr l))
		)
	)
)

(defun avg_list(l)
	(/ (suma_list l) (len l))
)

(defun delete_list(l n x)
	(if (endp l)
		NIL
		(if (and (eq (car l) n) (eq x 1))
			(delete_list (cdr l) n 0)
			(cons (car l) (delete_list (cdr l) n x))
		)
	)


)

(defun poz_pare_list(l)
	(if (endp l)
		NIL
		(cons (cadr l) (poz_pare_list (cddr l)))
		
	)


)
