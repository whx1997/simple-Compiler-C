%{
/****************************************************************************
mylexer.l
ParserWizard generated Lex file.

Date: 2017Äê10ÔÂ15ÈÕ
****************************************************************************/

#include "myparser.h"
#include <vector>
#include <string>

%}

delim			    [ \t\n]
comment             "//".* | /*"([^\*]|(\*)*[^\*/])*(\*)*"*/"
character           '(\\.|[^\\'])'
string              \"(\\.|[^\\"])*\"
id				    [A-Za-z_]([A-Za-z]|[0-9])*
number				{[0-9]}+(\.{[0-9]}+)?(E[+\-]?([0-9])+)?

%name mylexer



%%
/////////////////////////////////////////////////////////////////////////////
// rules section

%{
	// extract yylval for use later on in actions
	YYSTYPE YYFAR& yylval = *(YYSTYPE YYFAR*)yyparserptr->yylvalptr;
%}
[ \n\t]+  {} 
//±£Áô×Ö

int						{ return INT;} 
float					{ return FLOAT;} 
double					{ return DOUBLE;} 
char					{ return CHAR;} 
void					{ return VOID;}  
main					{ return MAIN;}  
while					{ return WHILE;} 
struct					{ return STRUCT;} 
if  					{ return IF;} 
else					{ return ELSE;} 
for						{ return FOR;} 
read					{ return READ;} 
write					{ return WRITE;} 
return					{ return RETURN;} 
public                  { return PUBLIC;} 
private                 { return PRIVATE;} 
class                   { return CLASS;} 
static                  { return STATIC;} 
do                      { return DO;} 

id						{ return ID;}
number					{ return NUMBER;}
string					{ return STIRNG;}
character				{ return CHARACTER;}
comment					{}


[()<>=+*/;{}.,]         { return *yytext;}

// place your Lex rules here 
.   ;
%%
