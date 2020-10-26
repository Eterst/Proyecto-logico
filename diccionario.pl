digito(["YYYYYYN"],0):-!.
digito(["NYYNNNN"],1):-!.
digito(["YYNYYNY"],2):-!.
digito(["YYYYNNY"],3):-!.
digito(["NYYNNYY"],4):-!.
digito(["YNYYNYY"],5):-!.
digito(["YNYYYYY"],6):-!.
digito(["YYYNNNN"],7):-!.
digito(["YYYYYYY"],8):-!.
digito(["YYYYNYY"],9):-!.

diccionario([H|T],X):- diccionario(T,[H],7,X).
diccionario([H|T],Acum,N,X):- append(H,Acum2,Acum),N1 is N-1, diccionario(T,Acum2,N1,X)