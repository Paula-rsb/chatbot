% Projeto Interdisciplinar Em Ci�ncia da Computa��o
% Aluno: Paula Rodrigues de Souza Barros.
% ChatBot de Perguntas e Respostas. Assunto: Redes de Computadores.


:-include(database01).
:-include(database02).

chatbot:-
	format('Ol�, seja bem vindo! Sou o assistente virtual da Paula.'),nl,
	format('Sou especialista em rede de computadores, me fale sua d�vida? '),nl,

	repeat,
	nl, format('- '),
	read(Entrada),
	consulta_base_dados(Entrada, Resposta),
	format(Resposta), nl,
	encerra_sessao(Entrada).

consulta_base_dados(Entrada, RespostaCorreta) :-
	definida_por(Entrada, RespostaCorreta), !.

encerra_sessao(Entrada):-
	Entrada = ('fim').
