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
    (princ "Círculo")
    (princ #\Newline)
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


(defun areaPentagono()
    (princ "Pentágono")
    (princ #\Newline)
    (princ "Apotema: ")
    (setq a (read))
    (princ "lado: ")
    (setq b (read))

    (format t "Area = ~a~%" (* 5 a b 0.5))
)

(areaPentagono)

(defun areaHexagono()
    (princ "Hexágono")
    (princ #\Newline)
    (princ "Apotema: ")
    (setq a (read))
    (princ "lado: ")
    (setq b (read))

    (format t "Area = ~a~%" (* 6 a b 0.5))
)

(areaHexagono)


(defun areaParalelogramo()
    (princ "Paralelogramo")
    (princ #\Newline)
    (princ "Base mayor: ")
    (setq B (read))
    (princ "Altura: ")
    (setq h (read))

    (format t "Area = ~a~%" (* B h))
)

(areaParalelogramo)


(defun areaCubo()
    (princ "Cubo")
    (princ #\Newline)
    (princ "Lado: ")
    (setq l (read))
    (format t "Área = ~a~%" (* 6 l l))
    l)  


;;Volúmenes

(defun volumenCubo()
    (setq lado (areaCubo)) 
    (format t "Volumen = ~a~%" (* lado lado lado)))  

(volumenCubo)

(defun volumenCilindro()
    (princ "Cilindro")
    (princ #\Newline)
    (princ "Radio: ")
    (setq R (read))
    (princ "Altura: ")
    (setq h (read))
    (format t "Volumen = ~a~%" (* 3.1416 R R h)))  

(volumenCilindro)

(defun volumenCono()
    (princ "Cono")
    (princ #\Newline)
    (princ "Radio: ")
    (setq R (read))
    (princ "altura: ")
    (setq h (read))
    
    (format t "Volumen = ~a~%" (* 3.1416 R R h 0.3)))  

(volumenCono)

(defun volumenEsfera()
    (princ "Esfera")
    (princ #\Newline)
    (princ "Radio: ")
    (setq R (read))
    
    (format t "Volumen = ~a~%" (* 3.1416 R R R 4 0.3)))  

(volumenEsfera)

(defun areaRectangulo2()
    (princ "Rectángulo")
    (princ #\Newline)
    (princ "Base: ")
    (setq b (read))
    (princ "Altura: ")
    (setq h (read))
    
    (* b h)
)

(defun volumenPiramide()
    (princ "Pirámide")
    (princ #\Newline)
    (setq base (areaRectangulo2))
    (princ "Altura: ")
    (setq h (read))
    
    (format t "Volumen = ~a~%" (/ (* base h) 3)))  

(volumenPiramide)


(defun areaCirculo2()
    (princ "Base")
    (princ #\Newline)
    (princ "Radio: ")
    (setq r (read))

    (* 3.1416 r r)
)

(defun volumenCilindro()
    (princ "Cilindro")
    (princ #\Newline)
    (setq base (areaCirculo2))
    (princ "Altura: ")
    (setq h (read))
    
    (format t "Volumen = ~a~%" (* base h 3)))  

(volumenCilindro)
