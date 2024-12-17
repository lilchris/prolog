(defparameter *nodes* '((femenino (
                                (aire (ana))
                                (fuego(azula))
                                (tierra(top))
                                (agua(katara))))
                        (masculino(
                                (aire(Hola rayo masculino))
                                (fuero(Hola fuego))
                                (tierra(hola Tierra))
                                (agua(poder de agua))
                                ))
                        (ovni(
                                (aire(hola rayo ovni))
                                (fuego(hola fuego ovni))
                                (tierra(hola tierra ovni))
                                (agua(hola agua ovni))
                                ))
                        (aleatorio(
                                (aire(hola rayo))
                                (fuego(hola fuego))
                                (tierra(hola tierra))
                                (agua(hola agua))
                                ))

))


(defparameter *nodes2* '(
    (Nintendo 
            ("Nintendo GameCube" ("IBM PowerPC Gekko 128-bit"(2001
                                ("485 MHz" ("39 watts"))
                                ))
            )
            ("Nintendo 64" ("NEC VR4300 64-bit RISC processor"(1996
                                ("93.75 MHz" ("15 watts"))
                                ))
            )
            ("Super Nintendo Entertainment System"("Ricoh 5A22 16-bit"("1990 Japan" "1991 North America"
                                ("3.58 MHz" ("17 watts"))
                                ))
            )
            (Wii("IBM PowerPC Broadway"(2006
                                ("729 MHz" ("18-20 watts gameplay" "9-10 watts idle"))
                                ))
            )

            
    )
    (Microsoft 
            (Xbox ("Intel Pentium III 32-bit architecture"(2001
                                ("733 MHz" ("100 watts"))
                                ))
            )
            ("Xbox One" ("AMD Jaguar APU 8-core 64-bit architecture"(2013
                                ("1.75 GHz "("70 watts" "120 watts"))
                                ))
            )
            ("Xbox 360" ("IBM PowerPC Xenon 3-core 64-bit architecture"(2005
                                ("3.2 GHz" ("100 watts" "175 watts"))
                                ))
            )
            ("Xbox Series X" ("AMD Zen 2 8-core 64-bit architecture"(2020
                                ("3.8 GHz" ("160-200 watts"))
                                ))
            )

            
    )
    (Sony
            ("PlayStation 1" ("MIPS R3000A 32-bit architecture"("1994 Japan" "1995 North America"
                                ("33.87 MHz" ("10 watts"))
                                ))
            )
            ("PlayStation 2" ("MIPS R5900 Emotion Engine 64-bit architecture"(2000
                                ("294.9 MHz" ("48 watts"))
                                ))
            )
            ("PlayStation 3" ("IBM Cell Broadband Engine 8-core 64-bit architecture"(2006
                                ("3.2 GHz" ("170-200 watts"))
                                ))
            )
            ("PlayStation 4" ("AMD Jaguar APU  8-core 64-bit architecture"(2013
                                ("1.6 GHz" ("165 watts"))
                                ))
            )
            ("PlayStation 5" ("AMD Zen 2  8-core 64-bit architecture"(2020
                                ("3.5 GHz" ("200-220 watts"))
                                ))
            )
        
    )
    (Asus
            ("ASUS ROG Ally" ("AMD Ryzen Z1 Extreme APU 8 core 64-bit architecture"(2023
                                ("5.1 GHz" ("15 watts"))
                                ))
            )
            ("ASUS ROG Ally X" ("AMD Ryzen Z1 Extreme APU 8 core 64-bit architecture"(2023
                                ("5.1 GHz" ("15 watts"))
                                ))
            )
            ("ASUS ROG Zephyrus" ("AMD Ryzen9 64-bit architecture Intel Core i9 processors"(2017
                                ("3.2 GHz 5.0 GHz" ("80-150 watts"))
                                ))
            )
            ("ASUS ROG Flow X13"("AMD Ryzen 9 5900HS  8-core 64-bit architecture"(2021
                                ("4.3 GHz" ("65 watts"))
                                ))
            )
            ("ASUS ROG Flow Z13 "("Intel Core i9-12900H   14-core 64-bit architecture"(2022
                                ("5 GHz" ("60 watts"))
                                ))
            )
        
    )
    (Otro
            ("Sega Mega Drive" ("Motorola 68000 16-bit architecture"("1988 Japan" "1989 North America"
                                ("7.61 MHz" ("10 watts"))
                                ))
            )
            ("Bandai WonderSwan" ("Zilog Z80 8-bit architecture"(1999
                                ("3.2 MHz" ("2 watts"))
                                ))
            )
            ("Atari 2600" ("MOS Technology 6507 8-bit architecture"(1997
                                ("1.19 MHz" ("4 watts"))
                                ))
            )
            ("Game Boy"("Sharp LR35902 8-bit architecture"(1989
                                ("4.19 MHz" ("0.25 watts"))
                                ))
            )
        
    )

))

(defun recorre (lista &optional (nivel 1))
  (when lista
    (let* ((elemento (car lista)))  
      (if (listp elemento)  ; Verificar si el elemento actual es una lista
          (progn
            ;; Generar el mensaje basado en el nivel actual
            (cond
              ((= nivel 1) (format t "¿La marca es ~a?~%" (car elemento)))
              ((= nivel 2) (format t "¿La consola es ~a?~%" (car elemento)))
              ((= nivel 3) (format t "¿El procesador es ~a?~%" (car elemento)))
              ((= nivel 4) (format t "¿El anho de lanzamiento es ~a?~%" (car elemento)))
              ((= nivel 5) (format t "Su velocidad es de ~a~%" (car elemento)))
              ((= nivel 6) (format t "Su consumo energetico es de ~a~%" (car elemento)))
              (t (format t "¿Elemento de nivel ~a: ~a?~%" nivel (car elemento))))
            ;; Leer la respuesta del usuario
            (setq a (read))
            
            (if (string-equal a "si")
                (recorre3 (cdr elemento) (1+ nivel))  ; Incrementar el nivel
                (recorre3 (cdr lista) nivel)))  ; Continuar en el mismo nivel
          
          (format t "Elemento final: ~a~%" elemento)))))
