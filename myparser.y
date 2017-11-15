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
  FOR WHILE IF ELSE STRUCT READ WRITE DO
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
//	|	expr_stmt
//	|	function
//	|	struct
//	|	class
    |   '+'
	;

expr_stmt : expr
					|     ;

expr : expr_unit | expr ',' expr_unit ;

expr_unit    :            primary_expr |
                single_op expr_unit |
                expr_unit double_op expr_unit
            ;

single_op :         '&' | '*' | '+' | '-' | '~' | '!' 
                     //| '('type_name')'
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

for_stmt  :FOR '(' for_declare ';' expr ';' expr ')' '{' stmt_list '}'
            | FOR '(' for_declare ';' expr ';' ')' '{' stmt_list '}'
            | FOR '(' for_declare ';' ';' expr ')' '{' stmt_list '}'
            | FOR '(' for_declare ';' ';' ')' '{' stmt_list '}'
            | FOR '(' ';' expr ';' expr ')' '{' stmt_list '}'
            | FOR '(' ';' expr ';' ')' '{' stmt_list '}'
            | FOR '(' ';' ';' expr ')' '{' stmt_list '}'
            | FOR '(' ';' ';' ')' '{' stmt_list '}'
         ;
for_declare : type_norm declar_list
            | declar_list
          ;
declar_list : expr 
            | declar_list ',' expr
             ;

while_stmt  : WHILE '(' expr ')' '{' stmt_list '}'
            | DO '{' stmt_list '}' 'while' '(' expr ')' 
             ;

if_stmt: 'if' '(' expr ')' '{' stmt_list '}'
            | 'if' '(' expr ')''{' stmt_list '}''else''{' stmt_list '}'
             ;
declare_stmt    : decl_norm init_declarator_list 
            | decl_norm                      
            ;
decl_list       : declare_stmt
            | decl_list declare_stmt            ;
decl_norm      :  type_norm decl_norm
            | type_norm
            ;
type_norm      : 'char' |  'int'  | 'float'| 'double' | 'string' 
            | struct_or_union_norm
            | typedef_name
            ;
struct_or_union_norm    : struct_or_union ID '{' struct_decl_list '}'
            | struct_or_union   '{' struct_decl_list '}'
            | struct_or_union ID
            ;
struct_or_union     : 'struct' | 'union'
            ;
struct_decl_list    : struct_decl
            | struct_decl_list struct_decl
            ;
init_declarator_list    : init_declarator
            | init_declarator_list ',' init_declarator
            ;
init_declarator     : declarator
            | declarator '=' initializer
            ;
initializer     : expr
            | '{' initializer_list '}'
            | '{' initializer_list ',' '}'
            ;
initializer_list    : initializer
            | initializer_list ',' initializer
            ;
struct_declarator_list  : struct_declarator
            | struct_declarator_list ',' struct_declarator
            ;
struct_declarator   : declarator
            | declarator ':' expr
            |       ':' expr           
             ;
struct_decl     : spec_qualifier_list struct_declarator_list ';'
            ;
spec_qualifier_list : type_norm spec_qualifier_list
            | type_norm
            ;
declarator      : pointer direct_declarator
            |   direct_declarator
            ;
direct_declarator   : ID
            | '(' declarator ')'
            | direct_declarator '['expr']'
            | direct_declarator '['     ']'
            | direct_declarator '(' id_list ')'
            | direct_declarator '('     ')'
            ;
pointer         : '*'
            | '*'           pointer
            ;
param_list      : param_decl
            | param_list ',' param_decl
            ;
param_decl      : decl_norm declarator
            | decl_norm
            ;
id_list         : ID
            | id_list ',' ID
            ;
init     : expr
            | '{' init_list '}'
            | '{' init_list ',' '}'
            ;
init_list    : init
            | init_list ',' init
            ;
typedef_name        : ID
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

