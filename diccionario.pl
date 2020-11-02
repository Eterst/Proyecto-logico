digito("YYYYYYN",0):-!.
digito("NYYNNNN",1):-!.
digito("YYNYYNY",2):-!.
digito("YYYYNNY",3):-!.
digito("NYYNNYY",4):-!.
digito("YNYYNYY",5):-!.
digito("YNYYYYY",6):-!.
digito("YYYNNNN",7):-!.
digito("YYYYYYY",8):-!.
digito("YYYYNYY",9):-!.

num('Y',1).
num('N',0).
num('N',1).

numero(0,[1,1,1,1,1,1,0]):-!.
numero(1,[0,1,1,0,0,0,0]):-!.
numero(2,[1,1,0,1,1,0,1]):-!.
numero(3,[1,1,1,1,0,0,1]):-!.
numero(4,[0,1,1,0,0,1,1]):-!.
numero(5,[1,0,1,1,0,1,1]):-!.
numero(6,[1,0,1,1,1,1,1]):-!.
numero(7,[1,1,1,0,0,0,0]):-!.
numero(8,[1,1,1,1,1,1,1]):-!.
numero(9,[1,1,1,1,0,1,1]):-!.



mimap(_Rel, [],[]):-!.
mimap(Rel,[H|T], [HR|TR]):- call(Rel,H,HR), mimap(Rel,T,TR).

split([],_N,[],[]):-!.
split(L,0,[],L):-!.
split([H|T], N, [H|LS1],LS2):- N1 is N-1, split(T,N1,LS1,LS2).

dividir(L,X):- split(L,7,LS1,LS2), split(LS2,7,LS3,LS4), append([LS1],[LS3],LS5), append(LS5,[LS4],X).

mapsum([],0):-!.
mapsum([H|T], N):- mapsum(T,A), N is H+A.

decimal(L,N):- dividir(L,L1), mimap(digito,L1,SBL), mapsum(SBL,N).

decrem([H|T]):-decimal(H,DH), decrem(T,DH).
decrem([_H|[]]):-!.
decrem([],_Anterior):-!.
decrem([H|T], Anterior):- decimal(H, D), decrem(T, D), Anterior is D+1, !.
%decrem([H|T], Anterior):- Anterior is D+1, decimal(H, Anterior), decimal(Anterior, D)+1.