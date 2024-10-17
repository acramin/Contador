/**
 * Analisador léxico para contador de elementos de um texto
 * Se precisar, adicione a opção %debug
 */
package contador;

%%

%class Lexer
%public
%unicode
%standalone
%line
%column
//%debug


%eof{
	System.out.printf("Contagem total: %d caracteres\n", cont);
	System.out.printf("Contagem total: %d linhas\n", lines);
	System.out.printf("Contagem total: %d palavras\n", words);
    System.out.println("Fim da contagem!");
%eof}

%{
	// Aqui pode-se definir campos e métodos que serão automaticamente
	// inseridos na classe Java
	private int cont = 0; // contador de caracteres
	private int lines = 1; // contador de linhas
	private int words = 0; // contador de palavras	
// Macros - declare após a linha com %}
%}
	
wd 			=	 [a-zA-Z0-9]+

%%
/* Regras e ações  - precisa modificar! Está incompleto!*/

{wd}			       		{ words++; cont += yytext().length();}
.		    				{ cont++;  }
\R		       				{ lines++; }





