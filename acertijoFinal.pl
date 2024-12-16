% Definir el problema
solucion :-
    Medicos = [ 
        medico(ana, E1, H1, EQ1, I1),
        medico(bruno, E2, H2, EQ2, I2),
        medico(carla, E3, H3, EQ3, I3),
        medico(diego, E4, H4, EQ4, I4),
        medico(elena, E5, H5, EQ5, I5)
    ],
    % Dominios
    Especialidades = [cardiologia, neurologia, oncologia, pediatria, dermatologia],
    Hospitales = [general, regional, universitario, privado, militar],
    Equipos = [ecografo, resonancia, tomografo, dermatoscopio, electrocardiografo],
    Intereses = [genetica, farmacologia, inmunologia, bioetica, microbiologia],

    % Restricciones generales
    permutacion(Especialidades, [E1, E2, E3, E4, E5]),
    permutacion(Hospitales, [H1, H2, H3, H4, H5]),
    permutacion(Equipos, [EQ1, EQ2, EQ3, EQ4, EQ5]),
    permutacion(Intereses, [I1, I2, I3, I4, I5]),

    % Restricciones específicas
    H3 \= general, H3 \= privado, E3 \= neurologia,
    member(medico(_, cardiologia, militar, electrocardiografo, _), Medicos),
    \+ member(medico(diego, cardiologia, militar, electrocardiografo, _), Medicos),
    member(medico(bruno, _, H2, _, farmacologia), Medicos),
    H2 \= regional, H2 \= militar,
    member(medico(_, pediatria, H4, ecografo, _), Medicos),
    H4 \= universitario, H4 \= militar,
    member(medico(_, oncologia, general, tomografo, _), Medicos),
    member(medico(_, _, _, resonancia, inmunologia), Medicos),
    \+ member(medico(elena, _, _, resonancia, _), Medicos),
    member(medico(_, dermatologia, regional, _, _), Medicos),
    member(medico(elena, _, _, EQ5, bioetica), Medicos),
    EQ5 \= electrocardiografo,
    member(medico(diego, _, _, _, microbiologia), Medicos),
    member(medico(_, _, universitario, dermatoscopio, _), Medicos),

    % Imprimir resultados
    format('Ana estudió ~w en el hospital ~w, utiliza un ~w y le interesa la ~w.~n', [E1, H1, EQ1, I1]),
    format('Bruno estudió ~w en el hospital ~w, utiliza un ~w y le interesa la ~w.~n', [E2, H2, EQ2, I2]),
    format('Carla estudió ~w en el hospital ~w, utiliza un ~w y le interesa la ~w.~n', [E3, H3, EQ3, I3]),
    format('Diego estudió ~w en el hospital ~w, utiliza un ~w y le interesa la ~w.~n', [E4, H4, EQ4, I4]),
    format('Elena estudió ~w en el hospital ~w, utiliza un ~w y le interesa la ~w.~n', [E5, H5, EQ5, I5]),!.

% Generar todas las permutaciones de una lista
permutacion([], []).
permutacion(L, [H|T]) :- 
    select(H, L, R), permutacion(R, T).
