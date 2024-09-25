(defun areaTriangulo()
    (princ "Base: ")
    (setq b (read))
    (princ "Altura: ")
    (setq h (read))
    (format t "Area = ~a~%" (* 0.5 b h))
)

(areaTriangulo)


(defun areaCuadrado()
    (princ "Lado: ")
    (setq b (read))
    
    (format t "Area = ~a~%" (* b b))
)

(areaCuadrado)


(defun areaRectangulo()
    (princ "Base: ")
    (setq b (read))
    (princ "Altura: ")
    (setq h (read))
    
    (format t "Area = ~a~%" (* b h))
)

(areaRectangulo)
