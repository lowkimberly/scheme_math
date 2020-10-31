(define areaofcircle (lambda (a) (* pi a a) ) )
(define hypotenuse (lambda (a b) (sqrt(+(* a a) (* b b))) ))
(define discriminant (lambda (a b c) (-(* b b)(* 4 a c))))

;Fact finds the factorial of a number
(define fact (lambda (n) 
               (cond ((= n 0) 1)
                     ((< n 0) "NO.")
                     (else (* n (fact (- n 1)))))))

;Sumn finds the sum of numbers from 0 to n
(define sumn (lambda (n) 
               (cond ((= n 0) 0)
                     ((< n 0) "No negative numbers!")
                     ((> n 0) (+ n (sumn (- n 1))))
                     (else "ERROR!!!!!!!!!!"))))

;finds some of numbers a through b
(define sumab (lambda (a b)
                (cond ((= a b) a)
                      (else (+ a (sumab (+ a 1) b))))))

;powerab finds a to the b power
(define powerab (lambda (a b)
                  (cond ((= b 0) 1)
                        ((= b 1) a)
                        ((> b 1) (* a (powerab a (- b 1)))))))
						
;fibonacci vector
(define fib3 
  (lambda (n)
    (cond ((= n 0) 0)
          ((<= n 2) 1)
          ((not (= (vector-ref fibvector n) 0)) (vector-ref fibvector n))
          (else
           (begin
             (vector-set! fibvector n (+(fib3 (- n 1)) (fib3 (- n 2))))
             (vector-ref fibvector n))))))

(define fibvector (make-vector 100000))


;squareroot			
(define newguess (lambda (n guess) (/(+(/ n guess)guess)2)))
(define mysqrt (lambda (n guess)
                 (if (= (* guess guess) n)
                     guess
                     (mysqrt n (newguess n guess)))))

	
