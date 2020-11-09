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

car([],[]):-!.
car([H|_T], H):-!.
cdr([_H|T], T):-!.

nsimo(0,[A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],A).
nsimo(1,[_A,B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],B).
nsimo(2,[_A,_B,C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],C).
nsimo(3,[_A,_B,_C,D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],D).
nsimo(4,[_A,_B,_C,_D,E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],E).
nsimo(5,[_A,_B,_C,_D,_E,F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],F).
nsimo(6,[_A,_B,_C,_D,_E,_F,G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],G).
nsimo(7,[_A,_B,_C,_D,_E,_F,_G,A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],A2).
nsimo(8,[_A,_B,_C,_D,_E,_F,_G,_A2,B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],B2).
nsimo(9,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],C2).
nsimo(10,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],D2).
nsimo(11,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],E2).
nsimo(12,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],F2).
nsimo(13,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,G2,_A3,_B3,_C3,_D3,_E3,_F3,_G3],G2).
nsimo(14,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,A3,_B3,_C3,_D3,_E3,_F3,_G3],A3).
nsimo(15,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,B3,_C3,_D3,_E3,_F3,_G3],B3).
nsimo(16,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,C3,_D3,_E3,_F3,_G3],C3).
nsimo(17,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,D3,_E3,_F3,_G3],D3).
nsimo(18,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,E3,_F3,_G3],E3).
nsimo(19,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,F3,_G3],F3).
nsimo(20,[_A,_B,_C,_D,_E,_F,_G,_A2,_B2,_C2,_D2,_E2,_F2,_G2,_A3,_B3,_C3,_D3,_E3,_F3,G3],G3).


split([],_N,[],[]):-!.
split(L,0,[],L):-!.
split([H|T], N, [H|LS1],LS2):- N1 is N-1, split(T,N1,LS1,LS2).

dividir(L,X):- split(L,7,LS1,LS2), split(LS2,7,LS3,LS4), append([LS1],[LS3],LS5), append(LS5,[LS4],X).

mimap(_Rel, [],[]):-!.
mimap(Rel,[H|T], [HR|TR]):- call(Rel,H,HR), mimap(Rel,T,TR).

num(_LL,_N,89,1).
num(_LL,_N,78,0).
num(LL,N,78,1):- quemada(LL,N,78).

quemada([],_N,E):-!.
quemada([H|T],N,E):- nsimo(N,H,E), quemada(T,N,E).

encontrarDigitos(_LL,[],_N):-!.
encontrarDigitos(LL,[H|T], X):- encontrarDigitos(LL, [H|T], 0, X).
encontrarDigitos(LL,[H|T], N, [HR|TR]):- call(num,LL,N,H,HR), N1 is N+1, encontrarDigitos(LL,T,N1,TR).

decimal(LL,L,LT2):- encontrarDigitos(LL,L,LT), dividir(LT,LD), mimap(numero, LT2, LD).

decremental([A,B,C],[A2,B2,C2]):- SB2 is (B2*10)+C2, N2 is (A2*100)+SB2, SB is (B*10)+C, N1 is (A*100)+SB, N1 is N2+1,!.
decremental(_L,[]):-!.

decremento([H|[]]):-!.
decremento([H|T]):- decimal(T,H,DH), car(T,CT), decimal(T, CT,DT), decremental(DH,DT), !, decremento(T), !.