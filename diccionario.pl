%digito("YYYYYYN",0):-!.
%digito("NYYNNNN",1):-!.
%digito("YYNYYNY",2):-!.
%digito("YYYYNNY",3):-!.
%digito("NYYNNYY",4):-!.
%digito("YNYYNYY",5):-!.
%digito("YNYYYYY",6):-!.
%digito("YYYNNNN",7):-!.
%digito("YYYYYYY",8):-!.
%digito("YYYYNYY",9):-!.

%mapsum([],0):-!.
%mapsum([H|T], N):- mapsum(T,A), N is H+A.

%decimal(L,N):- dividir(L,L1), mimap(digito,L1,SBL), mapsum(SBL,N).

%decrem([H|T]):-decimal(H,DH), decrem(T,DH).
%decrem([_H|[]]):-!.
%decrem([],_Anterior):-!.
%decrem([H|T], Anterior):- decimal(H, D), decrem(T, D), Anterior is D+1, !.
%decrem([H|T], Anterior):- Anterior is D+1, decimal(H, Anterior), decimal(Anterior, D)+1.

num(89,1).
num(78,0).
num(78,1).

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

nsimo(1,[a,b,c,d,e,f,g],a).
nsimo(2,[a,b,c,d,e,f,g],b).
nsimo(3,[a,b,c,d,e,f,g],c).
nsimo(4,[a,b,c,d,e,f,g],d).
nsimo(5,[a,b,c,d,e,f,g],e).
nsimo(6,[a,b,c,d,e,f,g],f).
nsimo(7,[a,b,c,d,e,f,g],g).

split([],_N,[],[]):-!.
split(L,0,[],L):-!.
split([H|T], N, [H|LS1],LS2):- N1 is N-1, split(T,N1,LS1,LS2).

dividir(L,X):- split(L,7,LS1,LS2), split(LS2,7,LS3,LS4), append([LS1],[LS3],LS5), append(LS5,[LS4],X).

mimap(_Rel, [],[]):-!.
mimap(Rel,[H|T], [HR|TR]):- call(Rel,H,HR), mimap(Rel,T,TR).

decimal([],[0,0,-1]):-!.
decimal(L,LT2):- mimap(num,L,LT), dividir(LT,LD), mimap(numero, LT2, LD).

decremental([A,B,C],[A2,B2,C2]):- SB2 is (B2*10)+C2, N2 is (A2*100)+SB2, SB is (B*10)+C, N1 is (A*100)+SB, N1 is N2+1,!.
decremental(_L,[]):-!.

car([],[]):-!.
car([H|_T], H):-!.
cdr([_H|T], T):-!.

decrem([]):-!.
decrem([H|T]):- decimal(H,DH), car(T,CT), decimal(CT,DT), decremental(DH,DT), !, decrem(T), !.