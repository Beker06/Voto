voto(voto_informado,1).
voto(voto_medianamente_informado,2).
voto(voto_desinformado,3).
voto(voto_nulo,4).
voto(consulte_a_IEEBC,5).

puntosVoto(Resultado,X):-
    X==6, voto(Resultado,Punto),Punto=1;
    X>=4, X=<5,voto(Resultado,Punto),Punto=2;
    X==3, voto(Resultado,Punto),Punto=3;
    X>=1, X=<2, voto(Resultado,Punto),Punto=4;
    X==0, voto(Resultado,Punto),Punto=5.


evaluacion(Evaluar):-
    writeln("--Diagnostico de Voto--"),
    writeln("--Si la respuesta es SI con 1.--"),
    writeln("--No la respuesta es NO con 0.--"),
    writeln("--Conoce al candidato?"),read(Q1),
    writeln("--Conoce la propuestas del candidato?"),read(Q2),
    writeln("--Entiende las diferencia de los candidatos?"),read(Q3),
    writeln("--Conoce la ubicacion de su casilla?"),read(Q4),
    writeln("--Su voto a sido afectado o comprado por un candidato?"),read(Q5),
    writeln("--Conoce a la autoridades competentes -IEEBC-"),read(Q6),

X is Q1 + Q2 + Q3 + Q4 + Q5 + Q6,


puntosVoto(Evaluar,X).

