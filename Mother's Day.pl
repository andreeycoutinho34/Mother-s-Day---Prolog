resolve(S) :-

    S = dia_das_maes(
        nome(_,_,_,_,_,_),
        nome(_,_,_,_,_,_),
        nome(_,_,_,_,_,_),
        nome(_,_,_,_,_,_),
        nome(_,_,_,_,_,_)
    ),

    % Na quinta posição está o homem que vai gastar menos.
    quinta_posicao(A,S),
    gastar(A,"R$50,00"),

    % William está em algum lugar à esquerda do homem de camiseta Amarela.
    algum_lugar_a_esquerda(B,C,S),
    nome(B,william),
    camiseta(C,amarela),

    % Em uma das pontas está quem vai comprar uma Sandália.
    uma_das_pontas(D,S),
    presente(D,sandalia),
    
    % O filho da Cristiane está ao lado de quem vai gastar R$ 50.
    ao_lado(E,F,S),
    mae(E,cristiane),
    gastar(F,"R$50,00"),
    

    % O homem de Vermelho está ao lado do filho da Denise.
    ao_lado(G,H,S),
    camiseta(G,vermelha),
    mae(H,denise),

    % Quem vai comprar um Vestido está em algum lugar à direita do Douglas.
    algum_lugar_a_direita(I,J,S),
    nome(J,douglas),
    presente(I,vestido),
    
    
    % Cristiane vai ganhar um presente de R$ 200.
    gastar(E,"R$200,00"),

    % O homem de 26 anos está exatamente à direita do Julio.
    exatamente_a_direita(M,N,S),
    idade(M,"26y"),
    nome(N,julio),

    % Em uma das pontas está o rapaz de camiseta Amarela.
    uma_das_pontas(O,S),
    camiseta(O,amarela),

    % Karina vai receber um presente de R$ 100.
    mae(P,karina),
    gastar(P,"R$100,00"),

    % Douglas está ao lado do filho da Karina.
    ao_lado(R,T,S),
    nome(R,douglas),
    mae(T,karina),

    % O homem mais velho está na quinta posição.
    quinta_posicao(A1,S),
    idade(A1,"29y"),

    % O rapaz de Verde está exatamente à esquerda do de Branco.
    exatamente_a_esquerda(A2,A3,S),
    camiseta(A2,verde),
    camiseta(A3,branco),

    % Quem vai comprar uma Bolsa está exatamente à direita de quem vai comprar um Vestido.
    exatamente_a_direita(A4,A5,S),
   	presente(A4,bolsa),
   	presente(A5,vestido),
    

    % O filho da Karina está ao lado de quem vai comprar uma Bolsa.
    ao_lado(A6,A7,S),
    mae(A6,karina),
    presente(A7,bolsa),
    

    % Quem vai comprar um Perfume está ao lado de quem vai gastar R$ 100.
    ao_lado(A8,A9,S),
    presente(A8,perfume),
    gastar(A9,"R$100,00"),
    

    % Quem vai comprar o presente mais caro está exatamente à esquerda de quem está de Vermelho.
    exatamente_a_esquerda(B1,B2,S),
    gastar(B1,"R$300,00"),
    camiseta(B2,vermelha),

    % Na terceira posição está o rapaz da camiseta Verde.
    terceira_posicao(B3,S),
    camiseta(B3,verde),

    % Julio tem 27 anos.
    nome(B4,julio),
    idade(B4,"27y"),

    % Danilo está ao lado do filho da Karina.
    ao_lado(B5,B6,S),
    nome(B5,danilo),
    mae(B6,karina),

    
    % Denise vai ganhar um par de Brincos do seu filho.
  	presente(H,brinco),

    % O filho da Mônica está em uma das pontas.
    uma_das_pontas(C2,S),
    mae(C2,monica),

    % O rapaz de Azul está ao lado do rapaz de 28 anos.
    ao_lado(C3,C4,S),
    camiseta(C3,azul),
    idade(C4,"28y"),

	%faltantes

	algum_nome(C5,S),
	nome(C5,rogerio),
	algum_nome(C6,S),
    idade(C6,"25y"),
    algum_nome(C8,S),
    idade(C8,"27y"),
    algum_nome(C9,S),
    mae(C9,paula),
    algum_nome(D1,S),
    gastar(D1,"R$75,00").

    
    
    algum_nome(X,dia_das_maes(X,_,_,_,_)).
	algum_nome(X,dia_das_maes(_,X,_,_,_)).
	algum_nome(X,dia_das_maes(_,_,X,_,_)).
    algum_nome(X,dia_das_maes(_,_,_,X,_)).
	algum_nome(X,dia_das_maes(_,_,_,_,X)).

	


nome(nome(N,_,_,_,_,_),N).
camiseta(nome(_,C,_,_,_,_),C).
idade(nome(_,_,I,_,_,_),I).
presente(nome(_,_,_,P,_,_),P).
gastar(nome(_,_,_,_,G,_),G).
mae(nome(_,_,_,_,_,M),M).


exatamente_a_direita(X,Y,dia_das_maes(Y,X,_,_,_)).
exatamente_a_direita(X,Y,dia_das_maes(_,Y,X,_,_)).
exatamente_a_direita(X,Y,dia_das_maes(_,_,Y,X,_)).
exatamente_a_direita(X,Y,dia_das_maes(_,_,_,Y,X)).

exatamente_a_esquerda(X,Y,S) :-
    exatamente_a_direita(Y,X,S).

terceira_posicao(X,dia_das_maes(_,_,X,_,_)).
quinta_posicao(X,dia_das_maes(_,_,_,_,X)).

algum_lugar_a_esquerda(X,Y,dia_das_maes(X,Y,_,_,_)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(X,_,Y,_,_)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(X,_,_,Y,_)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(X,_,_,_,Y)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(_,X,Y,_,_)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(_,X,_,Y,_)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(_,X,_,_,Y)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(_,_,X,Y,_)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(_,_,X,_,Y)).
algum_lugar_a_esquerda(X,Y,dia_das_maes(_,_,_,X,Y)).

algum_lugar_a_direita(X,Y,S) :-
    algum_lugar_a_esquerda(Y,X,S).

ao_lado(X,Y,S) :-
    exatamente_a_esquerda(X,Y,S);
    exatamente_a_esquerda(Y,X,S).

uma_das_pontas(X,dia_das_maes(X,_,_,_,_)).
uma_das_pontas(X,dia_das_maes(_,_,_,_,X)).


/*S = 
dia_das_maes(
nome(william,azul,"25y",brinco,"R$300,00",denise),
nome(douglas,vermelha,"28y",perfume,"R$75,00",paula),
nome(julio,verde,"27y",vestido,"R$100,00",karina),
nome(danilo,branco,"26y",bolsa,"R$200,00",cristiane),
nome(rogerio,amarela,"29y",sandalia,"R$50,00",monica)
)
*/