%x STR

digit [0-9]

l [a-zA-Z]

%%

{digit}+          { printf("Entero: %s\n", yytext); }
{l}({l}|{digit})*  { printf("Identificador: %s\n", yytext); }

\" {printf("Cadena: '"); BEGIN(STR); }
<STR>\\\" {printf("%s", yytext); }
<STR>[^"] {printf("%s", yytext); }
<STR>\" {printf("'\n"); BEGIN(INITIAL); }

((\-)?[0-9]+(\.)+[0-9]+)+(e(\+|\-)[0-9]+)? { printf("Punto flotante: %s\n", yytext); }
\"[^"]*\" { printf("Cadena: %s\n", yytext); }

%%

int yywrap() { return 1; }

int main()
{
    yylex();
}