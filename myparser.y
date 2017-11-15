%{
/****************************************************************************
myparser.y
ParserWizard generated YACC file.

Date: 2017年10月15日
****************************************************************************/

#include "mylexer.h"
#include "ParserTree.h"

%}


// parser name
%name myparser

%include {

/*
#ifndef YYSTYPE
#define YYSTYPE type
#endif
*/

}

// place any declarations here
%token 
  INT FLOAT DOUBLE CHAR ID NUMBER VOID MAIN
  FOR WHILE IF ELSE STRUCT READ WRITE
  RETURN PUBLIC PRIVATE CLASS STATIC

%left '+' '-' 
%left '*' '/' 


%%

/////////////////////////////////////////////////////////////////////////////
// rules section

// place your YACC rules here (there must be at least one)
program:
		stmt_list 
    ;

stmt_list:
		stmt 	
	|   stmt_list stmt
	;

stmt:
		for_stmt
	|	while_stmt
	|	if_stmt
	|	declare_stmt
	|	expr_stmt
	|	function
	|	struct
	|	class
	;

%%

/////////////////////////////////////////////////////////////////////////////
// programs section

INT main(void)
{
	FILE *fp1, *fp2;
	freopen_s(&fp1, ".//input.txt", "r", stdin);
	freopen_s(&fp2, ".//output.txt", "w", stdout);
	INT n = 1;
	mylexer lexer;
	myparser parser;
	if (parser.yycreate(&lexer)) {
		if (lexer.yycreate(&parser)) {
			n = parser.yyparse();
		}
	}
	return n;
}

