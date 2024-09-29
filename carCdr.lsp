;;regresar el 4to elemento
(setq x (cadddr '(a b c d e f g h)))
(print x)

;;regresar los ultimos 3
(setq x (cdr(cddddr '(a b c d e f g h))))
(print x)

;;regresar los primeros 3
(setq y '(a b c d e f g h))  
;;(setq x (list (car y) (cadr y) (caddr y)))  
(setq x (cons (car y) (cons (cadr y) (cons (caddr y) '()))))
(print x)  

;;eliminar el primer y ultimo elemento
(setq y '(a b c d e f g h)) 

(setq x (cons (cadr y)                
            (cons (caddr y)         
            (cons (cadddr y)  
            (cons (car(cddddr y)) 
            (cons (cadr(cddddr y)) 
            (cons (caddr(cddddr y)) '())  )))))
)  

(print x) 


;;sumar los primeros 3 nums
;;recorrer toda la lista
;;invertir los pares de lista (b a d c f e h g)
