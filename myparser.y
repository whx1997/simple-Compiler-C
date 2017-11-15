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
  RETURN PUBLIC PRIVATE CLASS STATIC STRING BOOL

%left ','
%right '=' '/=' '*=' '%=' '+=' '-=' '<<=' '>>=' '&=' '^=' '|='
%left '||'
%left '&&'
%left '|'
%left '^'
%left '&'
%left '==' '!='
%left '>' '>=' '<' '<='
%left '<<' '>>'
%left '+' '-' 
%left '*' '/' '%'
%right  '++' '--' '!' '~'

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

expr_stmt : expr
					|     ;

expr : expr_unit | expr ',' expr_unit ;

expr_unit    :            primary_expr |
                single_op expr_unit |
                expr_unit double_op expr_unit
            ;

single_op :         '&' | '*' | '+' | '-' | '~' | '!' | '('type_name')'
                    ;


double_op :         '+' | '-' | '*' | '/' | '%' |
                '|' | '&' | '^' |
                '=' | '*='| '/='| '%='| '+='| '-='| '<<='| '>>=' | '&=' | '^=' | '|='
                '||'| '&&'| '>' | '<' | '<='| '>='|'==' | '!='|
                '>>'| '<<'
								;

primary_expr : id_expr   
            | const
            | '(' expr ')'  
            ;

id_expr   :   ID
            | id_expr '[' expr_unit ']'
            | id_expr '(' expr ')'
            | id_expr '('')'
            | id_expr '.' ID
            | id_expr '->' ID
            ;

const :   INT          
        | CHAR
        | FLOAT
        | DOUBLE
        | BOOL
        | STRING
        ;

block: '{' stmt_list '}'
        ;

function: attributed_type ID '(' arguments ')' block
        |  attributed_type ID '(' ')' block 
        |  attributed_type ID '(' arguments ')' ';'
        |  attributed_type ID '::' ID '(' arguments ')' block
        |  attributed_type ID '::' ID '(' ')' block
        |  attributed_type ID '::' ID '(' arguments ')' ';'
        ;

arguments: arguments argument
        | argument
        ;

argument: attributed_type ID
        | attributed_type
        ;

attributed_type: type_name
            | attribute_list type_name
            ;

attribute_list: attribute
              | attribute_list attribute
              ;

attribute: STATIC
          ;

//struct
struct: STRUCT ID '{' declare_stmt_list '}' ID_list ';'
      | STRUCT ID '{' declare_stmt_list '}' ';'
      | STRUCT '{' declare_stmt_list '}' ID_list ';'
      ;

declare_stmt_list: declare_stmt
                |  declare_stmt_list declare_stmt
                ;
ID_list: ID
      | ID_list ID
      ;

class: CLASS ID '{' member_specification '}' ID_list ';'
    |  CLASS ID '{' member_specification '}' ';'
    |  CLASS '{' member_specification '}' ID_list ';'
    ;

member_specification: member_specification member_declaration
                    | member_declaration
                    | access ':' member_specification
                    ;

member_declaration: declare_stmt
                  | function
                  ;

access: PUBLIC 
      | PRIVATE
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

