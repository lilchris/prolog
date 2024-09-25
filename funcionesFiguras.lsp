(defun areaTriangulo()
    (princ "Triángulo")
    (princ #\Newline)
    (princ "Base: ")
    (setq b (read))
    (princ "Altura: ")
    (setq h (read))
    (format t "Area = ~a~%" (* 0.5 b h))
)

(areaTriangulo)


(defun areaCuadrado()
    (princ "Cuadrado")
    (princ #\Newline)
    (princ "Lado: ")
    (setq b (read))
    
    (format t "Area = ~a~%" (* b b))
)

(areaCuadrado)


(defun areaRectangulo()
    (princ "Rectángulo")
    (princ #\Newline)
    (princ "Base: ")
    (setq b (read))
    (princ "Altura: ")
    (setq h (read))
    
    (format t "Area = ~a~%" (* b h))
)

(areaRectangulo)

(defun areaRombo()
    (princ "Rombo")
    (princ #\Newline)
    (princ "Diagonal mayor: ")
    (setq D (read))
    (princ "Diagonal menor: ")
    (setq d (read))
    
    
    (format t "Area = ~a~%" (* 0.5 D d))
)

(areaRombo)


(defun areaCirculo()
    (princ "Radio: ")
    (setq r (read))

    (format t "Area = ~a~%" (* 3.1416 r r))
)

(areaCirculo)

(defun areaTrapecio()
    (princ "Trapecio")
    (princ #\Newline)
    (princ "Base mayor: ")
    (setq B (read))
    (princ "Base menor: ")
    (setq b (read))
    (princ "altura: ")
    (setq h (read))
    
    
    (format t "Area = ~a~%" (* (+ B b) h 0.5))
)

(areaTrapecio)
