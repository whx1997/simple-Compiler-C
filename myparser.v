#############################################################################
#                     U N R E G I S T E R E D   C O P Y
# 
# You are on day 32 of your 30 day trial period.
# 
# This file was produced by an UNREGISTERED COPY of Parser Generator. It is
# for evaluation purposes only. If you continue to use Parser Generator 30
# days after installation then you are required to purchase a license. For
# more information see the online help or go to the Bumble-Bee Software
# homepage at:
# 
# http://www.bumblebeesoftware.com
# 
# This notice must remain present in the file. It cannot be removed.
#############################################################################

#############################################################################
# myparser.v
# YACC verbose file generated from myparser.y.
# 
# Date: 11/16/17
# Time: 00:34:15
# 
# AYACC Version: 2.07
#############################################################################


##############################################################################
# Rules
##############################################################################

    0  $accept : program $end

    1  program : stmt_list

    2  stmt_list : stmt
    3            | stmt_list stmt

    4  stmt : for_stmt
    5       | while_stmt
    6       | if_stmt
    7       | declare_stmt
    8       | '+'

    9  expr_stmt : expr
   10            |

   11  expr : expr_unit
   12       | expr ',' expr_unit

   13  expr_unit : primary_expr
   14            | single_op expr_unit
   15            | expr_unit double_op expr_unit

   16  single_op : '&'
   17            | '*'
   18            | '+'
   19            | '-'
   20            | '~'
   21            | '!'

   22  double_op : '+'
   23            | '-'
   24            | '*'
   25            | '/'
   26            | '%'
   27            | '|'
   28            | '&'
   29            | '^'
   30            | '='
   31            | '*='
   32            | '/='
   33            | '%='
   34            | '+='
   35            | '-='
   36            | '<<='
   37            | '>>='
   38            | '&='
   39            | '^='
   40            | '|=' '||'
   41            | '&&'
   42            | '>'
   43            | '<'
   44            | '<='
   45            | '>='
   46            | '=='
   47            | '!='
   48            | '>>'
   49            | '<<'

   50  primary_expr : id_expr
   51               | const
   52               | '(' expr ')'

   53  id_expr : ID
   54          | id_expr '[' expr_unit ']'
   55          | id_expr '(' expr ')'
   56          | id_expr '(' ')'
   57          | id_expr '.' ID
   58          | id_expr '->' ID

   59  const : INT
   60        | CHAR
   61        | FLOAT
   62        | DOUBLE
   63        | BOOL
   64        | STRING

   65  for_stmt : FOR '(' for_declare ';' expr ';' expr ')' '{' stmt_list '}'
   66           | FOR '(' for_declare ';' expr ';' ')' '{' stmt_list '}'
   67           | FOR '(' for_declare ';' ';' expr ')' '{' stmt_list '}'
   68           | FOR '(' for_declare ';' ';' ')' '{' stmt_list '}'
   69           | FOR '(' ';' expr ';' expr ')' '{' stmt_list '}'
   70           | FOR '(' ';' expr ';' ')' '{' stmt_list '}'
   71           | FOR '(' ';' ';' expr ')' '{' stmt_list '}'
   72           | FOR '(' ';' ';' ')' '{' stmt_list '}'

   73  for_declare : type_norm declar_list
   74              | declar_list

   75  declar_list : expr
   76              | declar_list ',' expr

   77  while_stmt : WHILE '(' expr ')' '{' stmt_list '}'
   78             | DO '{' stmt_list '}' 'while' '(' expr ')'

   79  if_stmt : 'if' '(' expr ')' '{' stmt_list '}'
   80          | 'if' '(' expr ')' '{' stmt_list '}' 'else' '{' stmt_list '}'

   81  declare_stmt : decl_norm init_declarator_list
   82               | decl_norm

   83  decl_list : declare_stmt
   84            | decl_list declare_stmt

   85  decl_norm : type_norm decl_norm
   86            | type_norm

   87  type_norm : 'char'
   88            | 'int'
   89            | 'float'
   90            | 'double'
   91            | 'string'
   92            | struct_or_union_norm
   93            | typedef_name

   94  struct_or_union_norm : struct_or_union ID '{' struct_decl_list '}'
   95                       | struct_or_union '{' struct_decl_list '}'
   96                       | struct_or_union ID

   97  struct_or_union : 'struct'
   98                  | 'union'

   99  struct_decl_list : struct_decl
  100                   | struct_decl_list struct_decl

  101  init_declarator_list : init_declarator
  102                       | init_declarator_list ',' init_declarator

  103  init_declarator : declarator
  104                  | declarator '=' initializer

  105  initializer : expr
  106              | '{' initializer_list '}'
  107              | '{' initializer_list ',' '}'

  108  initializer_list : initializer
  109                   | initializer_list ',' initializer

  110  struct_declarator_list : struct_declarator
  111                         | struct_declarator_list ',' struct_declarator

  112  struct_declarator : declarator
  113                    | declarator ':' expr
  114                    | ':' expr

  115  struct_decl : spec_qualifier_list struct_declarator_list ';'

  116  spec_qualifier_list : type_norm spec_qualifier_list
  117                      | type_norm

  118  declarator : pointer direct_declarator
  119             | direct_declarator

  120  direct_declarator : ID
  121                    | '(' declarator ')'
  122                    | direct_declarator '[' expr ']'
  123                    | direct_declarator '[' ']'
  124                    | direct_declarator '(' id_list ')'
  125                    | direct_declarator '(' ')'

  126  pointer : '*'
  127          | '*' pointer

  128  param_list : param_decl
  129             | param_list ',' param_decl

  130  param_decl : decl_norm declarator
  131             | decl_norm

  132  id_list : ID
  133          | id_list ',' ID

  134  init : expr
  135       | '{' init_list '}'
  136       | '{' init_list ',' '}'

  137  init_list : init
  138            | init_list ',' init

  139  typedef_name : ID


##############################################################################
# States
##############################################################################

state 0
	$accept : . program $end

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	program  goto 14
	stmt_list  goto 15
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 1
	stmt : '+' .  (8)

	.  reduce 8


state 2
	typedef_name : ID .  (139)

	.  reduce 139


state 3
	for_stmt : FOR . '(' for_declare ';' expr ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR . '(' for_declare ';' expr ';' ')' '{' stmt_list '}'
	for_stmt : FOR . '(' for_declare ';' ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR . '(' for_declare ';' ';' ')' '{' stmt_list '}'
	for_stmt : FOR . '(' ';' expr ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR . '(' ';' expr ';' ')' '{' stmt_list '}'
	for_stmt : FOR . '(' ';' ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR . '(' ';' ';' ')' '{' stmt_list '}'

	'('  shift 26


state 4
	while_stmt : WHILE . '(' expr ')' '{' stmt_list '}'

	'('  shift 27


state 5
	while_stmt : DO . '{' stmt_list '}' 'while' '(' expr ')'

	'{'  shift 28


state 6
	if_stmt : 'if' . '(' expr ')' '{' stmt_list '}'
	if_stmt : 'if' . '(' expr ')' '{' stmt_list '}' 'else' '{' stmt_list '}'

	'('  shift 29


state 7
	type_norm : 'char' .  (87)

	.  reduce 87


state 8
	type_norm : 'int' .  (88)

	.  reduce 88


state 9
	type_norm : 'float' .  (89)

	.  reduce 89


state 10
	type_norm : 'double' .  (90)

	.  reduce 90


state 11
	type_norm : 'string' .  (91)

	.  reduce 91


state 12
	struct_or_union : 'struct' .  (97)

	.  reduce 97


state 13
	struct_or_union : 'union' .  (98)

	.  reduce 98


state 14
	$accept : program . $end  (0)

	$end  accept


state 15
	program : stmt_list .  (1)
	stmt_list : stmt_list . stmt

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13
	.  reduce 1

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 16
	stmt_list : stmt .  (2)

	.  reduce 2


state 17
	stmt : for_stmt .  (4)

	.  reduce 4


state 18
	stmt : while_stmt .  (5)

	.  reduce 5


state 19
	stmt : if_stmt .  (6)

	.  reduce 6


state 20
	stmt : declare_stmt .  (7)

	.  reduce 7


21: shift-reduce conflict (shift 2, reduce 86) on ID
21: shift-reduce conflict (shift 7, reduce 86) on 'char'
21: shift-reduce conflict (shift 8, reduce 86) on 'int'
21: shift-reduce conflict (shift 9, reduce 86) on 'float'
21: shift-reduce conflict (shift 10, reduce 86) on 'double'
21: shift-reduce conflict (shift 11, reduce 86) on 'string'
21: shift-reduce conflict (shift 12, reduce 86) on 'struct'
21: shift-reduce conflict (shift 13, reduce 86) on 'union'
state 21
	decl_norm : type_norm . decl_norm
	decl_norm : type_norm .  (86)

	ID  shift 2
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13
	.  reduce 86

	type_norm  goto 21
	decl_norm  goto 31
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


22: shift-reduce conflict (shift 34, reduce 82) on ID
state 22
	declare_stmt : decl_norm . init_declarator_list
	declare_stmt : decl_norm .  (82)

	'('  shift 32
	'*'  shift 33
	ID  shift 34
	.  reduce 82

	init_declarator_list  goto 35
	init_declarator  goto 36
	declarator  goto 37
	pointer  goto 38
	direct_declarator  goto 39


state 23
	type_norm : struct_or_union_norm .  (92)

	.  reduce 92


state 24
	type_norm : typedef_name .  (93)

	.  reduce 93


state 25
	struct_or_union_norm : struct_or_union . ID '{' struct_decl_list '}'
	struct_or_union_norm : struct_or_union . '{' struct_decl_list '}'
	struct_or_union_norm : struct_or_union . ID

	'{'  shift 40
	ID  shift 41


state 26
	for_stmt : FOR '(' . for_declare ';' expr ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' . for_declare ';' expr ';' ')' '{' stmt_list '}'
	for_stmt : FOR '(' . for_declare ';' ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' . for_declare ';' ';' ')' '{' stmt_list '}'
	for_stmt : FOR '(' . ';' expr ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' . ';' expr ';' ')' '{' stmt_list '}'
	for_stmt : FOR '(' . ';' ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' . ';' ';' ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	';'  shift 48
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 54
	STRING  shift 55
	BOOL  shift 56
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	expr  goto 57
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62
	for_declare  goto 63
	type_norm  goto 64
	declar_list  goto 65
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 27
	while_stmt : WHILE '(' . expr ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 67
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 28
	while_stmt : DO '{' . stmt_list '}' 'while' '(' expr ')'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 68
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 29
	if_stmt : 'if' '(' . expr ')' '{' stmt_list '}'
	if_stmt : 'if' '(' . expr ')' '{' stmt_list '}' 'else' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 69
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 30
	stmt_list : stmt_list stmt .  (3)

	.  reduce 3


state 31
	decl_norm : type_norm decl_norm .  (85)

	.  reduce 85


state 32
	direct_declarator : '(' . declarator ')'

	'('  shift 32
	'*'  shift 33
	ID  shift 34

	declarator  goto 70
	pointer  goto 38
	direct_declarator  goto 39


state 33
	pointer : '*' .  (126)
	pointer : '*' . pointer

	'*'  shift 33
	.  reduce 126

	pointer  goto 71


state 34
	direct_declarator : ID .  (120)

	.  reduce 120


state 35
	declare_stmt : decl_norm init_declarator_list .  (81)
	init_declarator_list : init_declarator_list . ',' init_declarator

	','  shift 72
	.  reduce 81


state 36
	init_declarator_list : init_declarator .  (101)

	.  reduce 101


state 37
	init_declarator : declarator .  (103)
	init_declarator : declarator . '=' initializer

	'='  shift 73
	.  reduce 103


state 38
	declarator : pointer . direct_declarator

	'('  shift 32
	ID  shift 34

	direct_declarator  goto 74


state 39
	declarator : direct_declarator .  (119)
	direct_declarator : direct_declarator . '[' expr ']'
	direct_declarator : direct_declarator . '[' ']'
	direct_declarator : direct_declarator . '(' id_list ')'
	direct_declarator : direct_declarator . '(' ')'

	'('  shift 75
	'['  shift 76
	.  reduce 119


state 40
	struct_or_union_norm : struct_or_union '{' . struct_decl_list '}'

	ID  shift 2
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	type_norm  goto 77
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25
	struct_decl_list  goto 78
	struct_decl  goto 79
	spec_qualifier_list  goto 80


state 41
	struct_or_union_norm : struct_or_union ID . '{' struct_decl_list '}'
	struct_or_union_norm : struct_or_union ID .  (96)

	'{'  shift 81
	.  reduce 96


state 42
	single_op : '!' .  (21)

	.  reduce 21


state 43
	single_op : '&' .  (16)

	.  reduce 16


state 44
	primary_expr : '(' . expr ')'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 82
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 45
	single_op : '*' .  (17)

	.  reduce 17


state 46
	single_op : '+' .  (18)

	.  reduce 18


state 47
	single_op : '-' .  (19)

	.  reduce 19


state 48
	for_stmt : FOR '(' ';' . expr ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' ';' . expr ';' ')' '{' stmt_list '}'
	for_stmt : FOR '(' ';' . ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' ';' . ';' ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	';'  shift 83
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 84
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 49
	single_op : '~' .  (20)

	.  reduce 20


state 50
	const : INT .  (59)

	.  reduce 59


state 51
	const : FLOAT .  (61)

	.  reduce 61


state 52
	const : DOUBLE .  (62)

	.  reduce 62


state 53
	const : CHAR .  (60)

	.  reduce 60


54: reduce-reduce conflict (reduce 53, reduce 139) on '&'
54: reduce-reduce conflict (reduce 53, reduce 139) on '('
54: reduce-reduce conflict (reduce 53, reduce 139) on '*'
54: reduce-reduce conflict (reduce 53, reduce 139) on '+'
54: reduce-reduce conflict (reduce 53, reduce 139) on '-'
state 54
	id_expr : ID .  (53)
	typedef_name : ID .  (139)

	'!'  reduce 139
	'~'  reduce 139
	INT  reduce 139
	FLOAT  reduce 139
	DOUBLE  reduce 139
	CHAR  reduce 139
	ID  reduce 139
	STRING  reduce 139
	BOOL  reduce 139
	.  reduce 53


state 55
	const : STRING .  (64)

	.  reduce 64


state 56
	const : BOOL .  (63)

	.  reduce 63


57: shift-reduce conflict (shift 85, reduce 75) on ','
state 57
	expr : expr . ',' expr_unit
	declar_list : expr .  (75)

	','  shift 85
	.  reduce 75


58: shift-reduce conflict (shift 89, reduce 11) on '+'
state 58
	expr : expr_unit .  (11)
	expr_unit : expr_unit . double_op expr_unit

	'%'  shift 86
	'&'  shift 87
	'*'  shift 88
	'+'  shift 89
	'-'  shift 90
	'/'  shift 91
	'<'  shift 92
	'='  shift 93
	'>'  shift 94
	'^'  shift 95
	'|'  shift 96
	'/='  shift 97
	'*='  shift 98
	'%='  shift 99
	'+='  shift 100
	'-='  shift 101
	'<<='  shift 102
	'>>='  shift 103
	'&='  shift 104
	'^='  shift 105
	'|='  shift 106
	'&&'  shift 107
	'=='  shift 108
	'!='  shift 109
	'>='  shift 110
	'<='  shift 111
	'<<'  shift 112
	'>>'  shift 113
	.  reduce 11

	double_op  goto 114


state 59
	expr_unit : primary_expr .  (13)

	.  reduce 13


state 60
	expr_unit : single_op . expr_unit

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr_unit  goto 115
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 61
	primary_expr : id_expr .  (50)
	id_expr : id_expr . '[' expr_unit ']'
	id_expr : id_expr . '(' expr ')'
	id_expr : id_expr . '(' ')'
	id_expr : id_expr . '.' ID
	id_expr : id_expr . '->' ID

	'('  shift 116
	'.'  shift 117
	'['  shift 118
	'->'  shift 119
	.  reduce 50


state 62
	primary_expr : const .  (51)

	.  reduce 51


state 63
	for_stmt : FOR '(' for_declare . ';' expr ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare . ';' expr ';' ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare . ';' ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare . ';' ';' ')' '{' stmt_list '}'

	';'  shift 120


state 64
	for_declare : type_norm . declar_list

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 57
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62
	declar_list  goto 121


state 65
	for_declare : declar_list .  (74)
	declar_list : declar_list . ',' expr

	','  shift 122
	.  reduce 74


state 66
	id_expr : ID .  (53)

	.  reduce 53


state 67
	expr : expr . ',' expr_unit
	while_stmt : WHILE '(' expr . ')' '{' stmt_list '}'

	')'  shift 123
	','  shift 85


state 68
	stmt_list : stmt_list . stmt
	while_stmt : DO '{' stmt_list . '}' 'while' '(' expr ')'

	'+'  shift 1
	'}'  shift 124
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 69
	expr : expr . ',' expr_unit
	if_stmt : 'if' '(' expr . ')' '{' stmt_list '}'
	if_stmt : 'if' '(' expr . ')' '{' stmt_list '}' 'else' '{' stmt_list '}'

	')'  shift 125
	','  shift 85


state 70
	direct_declarator : '(' declarator . ')'

	')'  shift 126


state 71
	pointer : '*' pointer .  (127)

	.  reduce 127


state 72
	init_declarator_list : init_declarator_list ',' . init_declarator

	'('  shift 32
	'*'  shift 33
	ID  shift 34

	init_declarator  goto 127
	declarator  goto 37
	pointer  goto 38
	direct_declarator  goto 39


state 73
	init_declarator : declarator '=' . initializer

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'{'  shift 128
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 129
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62
	initializer  goto 130


state 74
	declarator : pointer direct_declarator .  (118)
	direct_declarator : direct_declarator . '[' expr ']'
	direct_declarator : direct_declarator . '[' ']'
	direct_declarator : direct_declarator . '(' id_list ')'
	direct_declarator : direct_declarator . '(' ')'

	'('  shift 75
	'['  shift 76
	.  reduce 118


state 75
	direct_declarator : direct_declarator '(' . id_list ')'
	direct_declarator : direct_declarator '(' . ')'

	')'  shift 131
	ID  shift 132

	id_list  goto 133


state 76
	direct_declarator : direct_declarator '[' . expr ']'
	direct_declarator : direct_declarator '[' . ']'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	']'  shift 134
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 135
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


77: shift-reduce conflict (shift 2, reduce 117) on ID
state 77
	spec_qualifier_list : type_norm . spec_qualifier_list
	spec_qualifier_list : type_norm .  (117)

	ID  shift 2
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13
	.  reduce 117

	type_norm  goto 77
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25
	spec_qualifier_list  goto 136


state 78
	struct_or_union_norm : struct_or_union '{' struct_decl_list . '}'
	struct_decl_list : struct_decl_list . struct_decl

	'}'  shift 137
	ID  shift 2
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	type_norm  goto 77
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25
	struct_decl  goto 138
	spec_qualifier_list  goto 80


state 79
	struct_decl_list : struct_decl .  (99)

	.  reduce 99


state 80
	struct_decl : spec_qualifier_list . struct_declarator_list ';'

	'('  shift 32
	'*'  shift 33
	':'  shift 139
	ID  shift 34

	declarator  goto 140
	struct_declarator_list  goto 141
	struct_declarator  goto 142
	pointer  goto 38
	direct_declarator  goto 39


state 81
	struct_or_union_norm : struct_or_union ID '{' . struct_decl_list '}'

	ID  shift 2
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	type_norm  goto 77
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25
	struct_decl_list  goto 143
	struct_decl  goto 79
	spec_qualifier_list  goto 80


state 82
	expr : expr . ',' expr_unit
	primary_expr : '(' expr . ')'

	')'  shift 144
	','  shift 85


state 83
	for_stmt : FOR '(' ';' ';' . expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' ';' ';' . ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	')'  shift 145
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 146
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 84
	expr : expr . ',' expr_unit
	for_stmt : FOR '(' ';' expr . ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' ';' expr . ';' ')' '{' stmt_list '}'

	','  shift 85
	';'  shift 147


state 85
	expr : expr ',' . expr_unit

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr_unit  goto 148
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 86
	double_op : '%' .  (26)

	.  reduce 26


state 87
	double_op : '&' .  (28)

	.  reduce 28


state 88
	double_op : '*' .  (24)

	.  reduce 24


state 89
	double_op : '+' .  (22)

	.  reduce 22


state 90
	double_op : '-' .  (23)

	.  reduce 23


state 91
	double_op : '/' .  (25)

	.  reduce 25


state 92
	double_op : '<' .  (43)

	.  reduce 43


state 93
	double_op : '=' .  (30)

	.  reduce 30


state 94
	double_op : '>' .  (42)

	.  reduce 42


state 95
	double_op : '^' .  (29)

	.  reduce 29


state 96
	double_op : '|' .  (27)

	.  reduce 27


state 97
	double_op : '/=' .  (32)

	.  reduce 32


state 98
	double_op : '*=' .  (31)

	.  reduce 31


state 99
	double_op : '%=' .  (33)

	.  reduce 33


state 100
	double_op : '+=' .  (34)

	.  reduce 34


state 101
	double_op : '-=' .  (35)

	.  reduce 35


state 102
	double_op : '<<=' .  (36)

	.  reduce 36


state 103
	double_op : '>>=' .  (37)

	.  reduce 37


state 104
	double_op : '&=' .  (38)

	.  reduce 38


state 105
	double_op : '^=' .  (39)

	.  reduce 39


state 106
	double_op : '|=' . '||'

	'||'  shift 149


state 107
	double_op : '&&' .  (41)

	.  reduce 41


state 108
	double_op : '==' .  (46)

	.  reduce 46


state 109
	double_op : '!=' .  (47)

	.  reduce 47


state 110
	double_op : '>=' .  (45)

	.  reduce 45


state 111
	double_op : '<=' .  (44)

	.  reduce 44


state 112
	double_op : '<<' .  (49)

	.  reduce 49


state 113
	double_op : '>>' .  (48)

	.  reduce 48


state 114
	expr_unit : expr_unit double_op . expr_unit

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr_unit  goto 150
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


115: shift-reduce conflict (shift 86, reduce 14) on '%'
115: shift-reduce conflict (shift 87, reduce 14) on '&'
115: shift-reduce conflict (shift 88, reduce 14) on '*'
115: shift-reduce conflict (shift 89, reduce 14) on '+'
115: shift-reduce conflict (shift 90, reduce 14) on '-'
115: shift-reduce conflict (shift 91, reduce 14) on '/'
115: shift-reduce conflict (shift 92, reduce 14) on '<'
115: shift-reduce conflict (shift 93, reduce 14) on '='
115: shift-reduce conflict (shift 94, reduce 14) on '>'
115: shift-reduce conflict (shift 95, reduce 14) on '^'
115: shift-reduce conflict (shift 96, reduce 14) on '|'
115: shift-reduce conflict (shift 97, reduce 14) on '/='
115: shift-reduce conflict (shift 98, reduce 14) on '*='
115: shift-reduce conflict (shift 99, reduce 14) on '%='
115: shift-reduce conflict (shift 100, reduce 14) on '+='
115: shift-reduce conflict (shift 101, reduce 14) on '-='
115: shift-reduce conflict (shift 102, reduce 14) on '<<='
115: shift-reduce conflict (shift 103, reduce 14) on '>>='
115: shift-reduce conflict (shift 104, reduce 14) on '&='
115: shift-reduce conflict (shift 105, reduce 14) on '^='
115: shift-reduce conflict (shift 106, reduce 14) on '|='
115: shift-reduce conflict (shift 107, reduce 14) on '&&'
115: shift-reduce conflict (shift 108, reduce 14) on '=='
115: shift-reduce conflict (shift 109, reduce 14) on '!='
115: shift-reduce conflict (shift 110, reduce 14) on '>='
115: shift-reduce conflict (shift 111, reduce 14) on '<='
115: shift-reduce conflict (shift 112, reduce 14) on '<<'
115: shift-reduce conflict (shift 113, reduce 14) on '>>'
state 115
	expr_unit : single_op expr_unit .  (14)
	expr_unit : expr_unit . double_op expr_unit

	'%'  shift 86
	'&'  shift 87
	'*'  shift 88
	'+'  shift 89
	'-'  shift 90
	'/'  shift 91
	'<'  shift 92
	'='  shift 93
	'>'  shift 94
	'^'  shift 95
	'|'  shift 96
	'/='  shift 97
	'*='  shift 98
	'%='  shift 99
	'+='  shift 100
	'-='  shift 101
	'<<='  shift 102
	'>>='  shift 103
	'&='  shift 104
	'^='  shift 105
	'|='  shift 106
	'&&'  shift 107
	'=='  shift 108
	'!='  shift 109
	'>='  shift 110
	'<='  shift 111
	'<<'  shift 112
	'>>'  shift 113
	.  reduce 14

	double_op  goto 114


state 116
	id_expr : id_expr '(' . expr ')'
	id_expr : id_expr '(' . ')'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	')'  shift 151
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 152
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 117
	id_expr : id_expr '.' . ID

	ID  shift 153


state 118
	id_expr : id_expr '[' . expr_unit ']'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr_unit  goto 154
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 119
	id_expr : id_expr '->' . ID

	ID  shift 155


state 120
	for_stmt : FOR '(' for_declare ';' . expr ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare ';' . expr ';' ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare ';' . ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare ';' . ';' ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	';'  shift 156
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 157
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 121
	for_declare : type_norm declar_list .  (73)
	declar_list : declar_list . ',' expr

	','  shift 122
	.  reduce 73


state 122
	declar_list : declar_list ',' . expr

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 158
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 123
	while_stmt : WHILE '(' expr ')' . '{' stmt_list '}'

	'{'  shift 159


state 124
	while_stmt : DO '{' stmt_list '}' . 'while' '(' expr ')'

	'while'  shift 160


state 125
	if_stmt : 'if' '(' expr ')' . '{' stmt_list '}'
	if_stmt : 'if' '(' expr ')' . '{' stmt_list '}' 'else' '{' stmt_list '}'

	'{'  shift 161


state 126
	direct_declarator : '(' declarator ')' .  (121)

	.  reduce 121


state 127
	init_declarator_list : init_declarator_list ',' init_declarator .  (102)

	.  reduce 102


state 128
	initializer : '{' . initializer_list '}'
	initializer : '{' . initializer_list ',' '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'{'  shift 128
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 129
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62
	initializer  goto 162
	initializer_list  goto 163


129: shift-reduce conflict (shift 85, reduce 105) on ','
state 129
	expr : expr . ',' expr_unit
	initializer : expr .  (105)

	','  shift 85
	.  reduce 105


state 130
	init_declarator : declarator '=' initializer .  (104)

	.  reduce 104


state 131
	direct_declarator : direct_declarator '(' ')' .  (125)

	.  reduce 125


state 132
	id_list : ID .  (132)

	.  reduce 132


state 133
	direct_declarator : direct_declarator '(' id_list . ')'
	id_list : id_list . ',' ID

	')'  shift 164
	','  shift 165


state 134
	direct_declarator : direct_declarator '[' ']' .  (123)

	.  reduce 123


state 135
	expr : expr . ',' expr_unit
	direct_declarator : direct_declarator '[' expr . ']'

	','  shift 85
	']'  shift 166


state 136
	spec_qualifier_list : type_norm spec_qualifier_list .  (116)

	.  reduce 116


state 137
	struct_or_union_norm : struct_or_union '{' struct_decl_list '}' .  (95)

	.  reduce 95


state 138
	struct_decl_list : struct_decl_list struct_decl .  (100)

	.  reduce 100


state 139
	struct_declarator : ':' . expr

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 167
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 140
	struct_declarator : declarator .  (112)
	struct_declarator : declarator . ':' expr

	':'  shift 168
	.  reduce 112


state 141
	struct_declarator_list : struct_declarator_list . ',' struct_declarator
	struct_decl : spec_qualifier_list struct_declarator_list . ';'

	','  shift 169
	';'  shift 170


state 142
	struct_declarator_list : struct_declarator .  (110)

	.  reduce 110


state 143
	struct_or_union_norm : struct_or_union ID '{' struct_decl_list . '}'
	struct_decl_list : struct_decl_list . struct_decl

	'}'  shift 171
	ID  shift 2
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	type_norm  goto 77
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25
	struct_decl  goto 138
	spec_qualifier_list  goto 80


state 144
	primary_expr : '(' expr ')' .  (52)

	.  reduce 52


state 145
	for_stmt : FOR '(' ';' ';' ')' . '{' stmt_list '}'

	'{'  shift 172


state 146
	expr : expr . ',' expr_unit
	for_stmt : FOR '(' ';' ';' expr . ')' '{' stmt_list '}'

	')'  shift 173
	','  shift 85


state 147
	for_stmt : FOR '(' ';' expr ';' . expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' ';' expr ';' . ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	')'  shift 174
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 175
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 148
	expr : expr ',' expr_unit .  (12)
	expr_unit : expr_unit . double_op expr_unit

	'%'  shift 86
	'&'  shift 87
	'*'  shift 88
	'+'  shift 89
	'-'  shift 90
	'/'  shift 91
	'<'  shift 92
	'='  shift 93
	'>'  shift 94
	'^'  shift 95
	'|'  shift 96
	'/='  shift 97
	'*='  shift 98
	'%='  shift 99
	'+='  shift 100
	'-='  shift 101
	'<<='  shift 102
	'>>='  shift 103
	'&='  shift 104
	'^='  shift 105
	'|='  shift 106
	'&&'  shift 107
	'=='  shift 108
	'!='  shift 109
	'>='  shift 110
	'<='  shift 111
	'<<'  shift 112
	'>>'  shift 113
	.  reduce 12

	double_op  goto 114


state 149
	double_op : '|=' '||' .  (40)

	.  reduce 40


150: shift-reduce conflict (shift 86, reduce 15) on '%'
150: shift-reduce conflict (shift 87, reduce 15) on '&'
150: shift-reduce conflict (shift 88, reduce 15) on '*'
150: shift-reduce conflict (shift 89, reduce 15) on '+'
150: shift-reduce conflict (shift 90, reduce 15) on '-'
150: shift-reduce conflict (shift 91, reduce 15) on '/'
150: shift-reduce conflict (shift 92, reduce 15) on '<'
150: shift-reduce conflict (shift 93, reduce 15) on '='
150: shift-reduce conflict (shift 94, reduce 15) on '>'
150: shift-reduce conflict (shift 95, reduce 15) on '^'
150: shift-reduce conflict (shift 96, reduce 15) on '|'
150: shift-reduce conflict (shift 97, reduce 15) on '/='
150: shift-reduce conflict (shift 98, reduce 15) on '*='
150: shift-reduce conflict (shift 99, reduce 15) on '%='
150: shift-reduce conflict (shift 100, reduce 15) on '+='
150: shift-reduce conflict (shift 101, reduce 15) on '-='
150: shift-reduce conflict (shift 102, reduce 15) on '<<='
150: shift-reduce conflict (shift 103, reduce 15) on '>>='
150: shift-reduce conflict (shift 104, reduce 15) on '&='
150: shift-reduce conflict (shift 105, reduce 15) on '^='
150: shift-reduce conflict (shift 106, reduce 15) on '|='
150: shift-reduce conflict (shift 107, reduce 15) on '&&'
150: shift-reduce conflict (shift 108, reduce 15) on '=='
150: shift-reduce conflict (shift 109, reduce 15) on '!='
150: shift-reduce conflict (shift 110, reduce 15) on '>='
150: shift-reduce conflict (shift 111, reduce 15) on '<='
150: shift-reduce conflict (shift 112, reduce 15) on '<<'
150: shift-reduce conflict (shift 113, reduce 15) on '>>'
state 150
	expr_unit : expr_unit double_op expr_unit .  (15)
	expr_unit : expr_unit . double_op expr_unit

	'%'  shift 86
	'&'  shift 87
	'*'  shift 88
	'+'  shift 89
	'-'  shift 90
	'/'  shift 91
	'<'  shift 92
	'='  shift 93
	'>'  shift 94
	'^'  shift 95
	'|'  shift 96
	'/='  shift 97
	'*='  shift 98
	'%='  shift 99
	'+='  shift 100
	'-='  shift 101
	'<<='  shift 102
	'>>='  shift 103
	'&='  shift 104
	'^='  shift 105
	'|='  shift 106
	'&&'  shift 107
	'=='  shift 108
	'!='  shift 109
	'>='  shift 110
	'<='  shift 111
	'<<'  shift 112
	'>>'  shift 113
	.  reduce 15

	double_op  goto 114


state 151
	id_expr : id_expr '(' ')' .  (56)

	.  reduce 56


state 152
	expr : expr . ',' expr_unit
	id_expr : id_expr '(' expr . ')'

	')'  shift 176
	','  shift 85


state 153
	id_expr : id_expr '.' ID .  (57)

	.  reduce 57


state 154
	expr_unit : expr_unit . double_op expr_unit
	id_expr : id_expr '[' expr_unit . ']'

	'%'  shift 86
	'&'  shift 87
	'*'  shift 88
	'+'  shift 89
	'-'  shift 90
	'/'  shift 91
	'<'  shift 92
	'='  shift 93
	'>'  shift 94
	']'  shift 177
	'^'  shift 95
	'|'  shift 96
	'/='  shift 97
	'*='  shift 98
	'%='  shift 99
	'+='  shift 100
	'-='  shift 101
	'<<='  shift 102
	'>>='  shift 103
	'&='  shift 104
	'^='  shift 105
	'|='  shift 106
	'&&'  shift 107
	'=='  shift 108
	'!='  shift 109
	'>='  shift 110
	'<='  shift 111
	'<<'  shift 112
	'>>'  shift 113

	double_op  goto 114


state 155
	id_expr : id_expr '->' ID .  (58)

	.  reduce 58


state 156
	for_stmt : FOR '(' for_declare ';' ';' . expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare ';' ';' . ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	')'  shift 178
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 179
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 157
	expr : expr . ',' expr_unit
	for_stmt : FOR '(' for_declare ';' expr . ';' expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare ';' expr . ';' ')' '{' stmt_list '}'

	','  shift 85
	';'  shift 180


state 158
	expr : expr . ',' expr_unit
	declar_list : declar_list ',' expr .  (76)

	.  reduce 76


state 159
	while_stmt : WHILE '(' expr ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 181
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 160
	while_stmt : DO '{' stmt_list '}' 'while' . '(' expr ')'

	'('  shift 182


state 161
	if_stmt : 'if' '(' expr ')' '{' . stmt_list '}'
	if_stmt : 'if' '(' expr ')' '{' . stmt_list '}' 'else' '{' stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 183
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 162
	initializer_list : initializer .  (108)

	.  reduce 108


state 163
	initializer : '{' initializer_list . '}'
	initializer : '{' initializer_list . ',' '}'
	initializer_list : initializer_list . ',' initializer

	','  shift 184
	'}'  shift 185


state 164
	direct_declarator : direct_declarator '(' id_list ')' .  (124)

	.  reduce 124


state 165
	id_list : id_list ',' . ID

	ID  shift 186


state 166
	direct_declarator : direct_declarator '[' expr ']' .  (122)

	.  reduce 122


167: shift-reduce conflict (shift 85, reduce 114) on ','
state 167
	expr : expr . ',' expr_unit
	struct_declarator : ':' expr .  (114)

	','  shift 85
	.  reduce 114


state 168
	struct_declarator : declarator ':' . expr

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 187
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 169
	struct_declarator_list : struct_declarator_list ',' . struct_declarator

	'('  shift 32
	'*'  shift 33
	':'  shift 139
	ID  shift 34

	declarator  goto 140
	struct_declarator  goto 188
	pointer  goto 38
	direct_declarator  goto 39


state 170
	struct_decl : spec_qualifier_list struct_declarator_list ';' .  (115)

	.  reduce 115


state 171
	struct_or_union_norm : struct_or_union ID '{' struct_decl_list '}' .  (94)

	.  reduce 94


state 172
	for_stmt : FOR '(' ';' ';' ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 189
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 173
	for_stmt : FOR '(' ';' ';' expr ')' . '{' stmt_list '}'

	'{'  shift 190


state 174
	for_stmt : FOR '(' ';' expr ';' ')' . '{' stmt_list '}'

	'{'  shift 191


state 175
	expr : expr . ',' expr_unit
	for_stmt : FOR '(' ';' expr ';' expr . ')' '{' stmt_list '}'

	')'  shift 192
	','  shift 85


state 176
	id_expr : id_expr '(' expr ')' .  (55)

	.  reduce 55


state 177
	id_expr : id_expr '[' expr_unit ']' .  (54)

	.  reduce 54


state 178
	for_stmt : FOR '(' for_declare ';' ';' ')' . '{' stmt_list '}'

	'{'  shift 193


state 179
	expr : expr . ',' expr_unit
	for_stmt : FOR '(' for_declare ';' ';' expr . ')' '{' stmt_list '}'

	')'  shift 194
	','  shift 85


state 180
	for_stmt : FOR '(' for_declare ';' expr ';' . expr ')' '{' stmt_list '}'
	for_stmt : FOR '(' for_declare ';' expr ';' . ')' '{' stmt_list '}'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	')'  shift 195
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 196
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 181
	stmt_list : stmt_list . stmt
	while_stmt : WHILE '(' expr ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 197
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 182
	while_stmt : DO '{' stmt_list '}' 'while' '(' . expr ')'

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 198
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62


state 183
	stmt_list : stmt_list . stmt
	if_stmt : 'if' '(' expr ')' '{' stmt_list . '}'
	if_stmt : 'if' '(' expr ')' '{' stmt_list . '}' 'else' '{' stmt_list '}'

	'+'  shift 1
	'}'  shift 199
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 184
	initializer : '{' initializer_list ',' . '}'
	initializer_list : initializer_list ',' . initializer

	'!'  shift 42
	'&'  shift 43
	'('  shift 44
	'*'  shift 45
	'+'  shift 46
	'-'  shift 47
	'{'  shift 128
	'}'  shift 200
	'~'  shift 49
	INT  shift 50
	FLOAT  shift 51
	DOUBLE  shift 52
	CHAR  shift 53
	ID  shift 66
	STRING  shift 55
	BOOL  shift 56

	expr  goto 129
	expr_unit  goto 58
	primary_expr  goto 59
	single_op  goto 60
	id_expr  goto 61
	const  goto 62
	initializer  goto 201


state 185
	initializer : '{' initializer_list '}' .  (106)

	.  reduce 106


state 186
	id_list : id_list ',' ID .  (133)

	.  reduce 133


187: shift-reduce conflict (shift 85, reduce 113) on ','
state 187
	expr : expr . ',' expr_unit
	struct_declarator : declarator ':' expr .  (113)

	','  shift 85
	.  reduce 113


state 188
	struct_declarator_list : struct_declarator_list ',' struct_declarator .  (111)

	.  reduce 111


state 189
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' ';' ';' ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 202
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 190
	for_stmt : FOR '(' ';' ';' expr ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 203
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 191
	for_stmt : FOR '(' ';' expr ';' ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 204
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 192
	for_stmt : FOR '(' ';' expr ';' expr ')' . '{' stmt_list '}'

	'{'  shift 205


state 193
	for_stmt : FOR '(' for_declare ';' ';' ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 206
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 194
	for_stmt : FOR '(' for_declare ';' ';' expr ')' . '{' stmt_list '}'

	'{'  shift 207


state 195
	for_stmt : FOR '(' for_declare ';' expr ';' ')' . '{' stmt_list '}'

	'{'  shift 208


state 196
	expr : expr . ',' expr_unit
	for_stmt : FOR '(' for_declare ';' expr ';' expr . ')' '{' stmt_list '}'

	')'  shift 209
	','  shift 85


state 197
	while_stmt : WHILE '(' expr ')' '{' stmt_list '}' .  (77)

	.  reduce 77


state 198
	expr : expr . ',' expr_unit
	while_stmt : DO '{' stmt_list '}' 'while' '(' expr . ')'

	')'  shift 210
	','  shift 85


state 199
	if_stmt : 'if' '(' expr ')' '{' stmt_list '}' .  (79)
	if_stmt : 'if' '(' expr ')' '{' stmt_list '}' . 'else' '{' stmt_list '}'

	'else'  shift 211
	.  reduce 79


state 200
	initializer : '{' initializer_list ',' '}' .  (107)

	.  reduce 107


state 201
	initializer_list : initializer_list ',' initializer .  (109)

	.  reduce 109


state 202
	for_stmt : FOR '(' ';' ';' ')' '{' stmt_list '}' .  (72)

	.  reduce 72


state 203
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' ';' ';' expr ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 212
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 204
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' ';' expr ';' ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 213
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 205
	for_stmt : FOR '(' ';' expr ';' expr ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 214
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 206
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' for_declare ';' ';' ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 215
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 207
	for_stmt : FOR '(' for_declare ';' ';' expr ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 216
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 208
	for_stmt : FOR '(' for_declare ';' expr ';' ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 217
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 209
	for_stmt : FOR '(' for_declare ';' expr ';' expr ')' . '{' stmt_list '}'

	'{'  shift 218


state 210
	while_stmt : DO '{' stmt_list '}' 'while' '(' expr ')' .  (78)

	.  reduce 78


state 211
	if_stmt : 'if' '(' expr ')' '{' stmt_list '}' 'else' . '{' stmt_list '}'

	'{'  shift 219


state 212
	for_stmt : FOR '(' ';' ';' expr ')' '{' stmt_list '}' .  (71)

	.  reduce 71


state 213
	for_stmt : FOR '(' ';' expr ';' ')' '{' stmt_list '}' .  (70)

	.  reduce 70


state 214
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' ';' expr ';' expr ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 220
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 215
	for_stmt : FOR '(' for_declare ';' ';' ')' '{' stmt_list '}' .  (68)

	.  reduce 68


state 216
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' for_declare ';' ';' expr ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 221
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 217
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' for_declare ';' expr ';' ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 222
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 218
	for_stmt : FOR '(' for_declare ';' expr ';' expr ')' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 223
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 219
	if_stmt : 'if' '(' expr ')' '{' stmt_list '}' 'else' '{' . stmt_list '}'

	'+'  shift 1
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt_list  goto 224
	stmt  goto 16
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 220
	for_stmt : FOR '(' ';' expr ';' expr ')' '{' stmt_list '}' .  (69)

	.  reduce 69


state 221
	for_stmt : FOR '(' for_declare ';' ';' expr ')' '{' stmt_list '}' .  (67)

	.  reduce 67


state 222
	for_stmt : FOR '(' for_declare ';' expr ';' ')' '{' stmt_list '}' .  (66)

	.  reduce 66


state 223
	stmt_list : stmt_list . stmt
	for_stmt : FOR '(' for_declare ';' expr ';' expr ')' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 225
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 224
	stmt_list : stmt_list . stmt
	if_stmt : 'if' '(' expr ')' '{' stmt_list '}' 'else' '{' stmt_list . '}'

	'+'  shift 1
	'}'  shift 226
	ID  shift 2
	FOR  shift 3
	WHILE  shift 4
	DO  shift 5
	'if'  shift 6
	'char'  shift 7
	'int'  shift 8
	'float'  shift 9
	'double'  shift 10
	'string'  shift 11
	'struct'  shift 12
	'union'  shift 13

	stmt  goto 30
	for_stmt  goto 17
	while_stmt  goto 18
	if_stmt  goto 19
	declare_stmt  goto 20
	type_norm  goto 21
	decl_norm  goto 22
	struct_or_union_norm  goto 23
	typedef_name  goto 24
	struct_or_union  goto 25


state 225
	for_stmt : FOR '(' for_declare ';' expr ';' expr ')' '{' stmt_list '}' .  (65)

	.  reduce 65


state 226
	if_stmt : 'if' '(' expr ')' '{' stmt_list '}' 'else' '{' stmt_list '}' .  (80)

	.  reduce 80


Rules never reduced
	expr_stmt : expr  (9)
	expr_stmt :  (10)
	decl_list : declare_stmt  (83)
	decl_list : decl_list declare_stmt  (84)
	param_list : param_decl  (128)
	param_list : param_list ',' param_decl  (129)
	param_decl : decl_norm declarator  (130)
	param_decl : decl_norm  (131)
	init : expr  (134)
	init : '{' init_list '}'  (135)
	init : '{' init_list ',' '}'  (136)
	init_list : init  (137)
	init_list : init_list ',' init  (138)


##############################################################################
# Summary
##############################################################################

State 21 contains 8 shift-reduce conflict(s)
State 22 contains 1 shift-reduce conflict(s)
State 54 contains 5 reduce-reduce conflict(s)
State 57 contains 1 shift-reduce conflict(s)
State 58 contains 1 shift-reduce conflict(s)
State 77 contains 1 shift-reduce conflict(s)
State 115 contains 28 shift-reduce conflict(s)
State 129 contains 1 shift-reduce conflict(s)
State 150 contains 28 shift-reduce conflict(s)
State 167 contains 1 shift-reduce conflict(s)
State 187 contains 1 shift-reduce conflict(s)


64 token(s), 41 nonterminal(s)
140 grammar rule(s), 227 state(s)


##############################################################################
# End of File
##############################################################################
