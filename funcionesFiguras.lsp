(defun areaTriangulo()
    (princ "Base: ")
    (setq b (read))
    (princ "Altura: ")
    (setq h (read))
    (format t "Area = ~a~%" (* 0.5 b h))
)

(areaTriangulo)
