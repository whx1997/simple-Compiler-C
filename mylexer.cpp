/****************************************************************************
*                     U N R E G I S T E R E D   C O P Y
* 
* You are on day 32 of your 30 day trial period.
* 
* This file was produced by an UNREGISTERED COPY of Parser Generator. It is
* for evaluation purposes only. If you continue to use Parser Generator 30
* days after installation then you are required to purchase a license. For
* more information see the online help or go to the Bumble-Bee Software
* homepage at:
* 
* http://www.bumblebeesoftware.com
* 
* This notice must remain present in the file. It cannot be removed.
****************************************************************************/

/****************************************************************************
* mylexer.cpp
* C++ source file generated from mylexer.l.
* 
* Date: 11/15/17
* Time: 19:36:57
* 
* ALex Version: 2.07
****************************************************************************/

#include <yyclex.h>

// namespaces
#ifdef YYSTDCPPLIB
using namespace std;
#endif
#ifdef YYNAMESPACE
using namespace yl;
#endif

#line 1 ".\\mylexer.l"

/****************************************************************************
mylexer.l
ParserWizard generated Lex file.

Date: 2017Äê10ÔÂ15ÈÕ
****************************************************************************/

#include "myparser.h"
#include <vector>
#include <string>


#line 52 "mylexer.cpp"
// repeated because of possible precompiled header
#include <yyclex.h>

// namespaces
#ifdef YYSTDCPPLIB
using namespace std;
#endif
#ifdef YYNAMESPACE
using namespace yl;
#endif

#include ".\mylexer.h"

/////////////////////////////////////////////////////////////////////////////
// constructor

YYLEXERNAME::YYLEXERNAME()
{
	yytables();
}

/////////////////////////////////////////////////////////////////////////////
// destructor

YYLEXERNAME::~YYLEXERNAME()
{
}

#ifndef YYTEXT_SIZE
#define YYTEXT_SIZE 100
#endif
#ifndef YYUNPUT_SIZE
#define YYUNPUT_SIZE YYTEXT_SIZE
#endif
#ifndef YYTEXT_MAX
#define YYTEXT_MAX 0
#endif
#ifndef YYUNPUT_MAX
#define YYUNPUT_MAX YYTEXT_MAX
#endif

/****************************************************************************
* N O T E
* 
* If the compiler generates a YYLEXERNAME error then you have not declared
* the name of the lexical analyser. The easiest way to do this is to use a
* name declaration. This is placed in the declarations section of your Lex
* source file and is introduced with the %name keyword. For instance, the
* following name declaration declares the lexer mylexer:
* 
* %name mylexer
* 
* For more information see help.
****************************************************************************/

// backwards compatability with lex
#ifdef input
int YYLEXERNAME::yyinput()
{
	return input();
}
#else
#define input yyinput
#endif

#ifdef output
void YYLEXERNAME::yyoutput(int ch)
{
	output(ch);
}
#else
#define output yyoutput
#endif

#ifdef unput
void YYLEXERNAME::yyunput(int ch)
{
	unput(ch);
}
#else
#define unput yyunput
#endif

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn -rch		// <warning: unreachable code> off
#endif
#endif

int YYLEXERNAME::yyaction(int action)
{
#line 30 ".\\mylexer.l"

	// extract yylval for use later on in actions
	YYSTYPE YYFAR& yylval = *(YYSTYPE YYFAR*)yyparserptr->yylvalptr;

#line 149 "mylexer.cpp"
	yyreturnflg = yytrue;
	switch (action) {
	case 1:
		{
#line 34 ".\\mylexer.l"

#line 156 "mylexer.cpp"
		}
		break;
	case 2:
		{
#line 37 ".\\mylexer.l"
 return INT;
#line 163 "mylexer.cpp"
		}
		break;
	case 3:
		{
#line 38 ".\\mylexer.l"
 return FLOAT;
#line 170 "mylexer.cpp"
		}
		break;
	case 4:
		{
#line 39 ".\\mylexer.l"
 return DOUBLE;
#line 177 "mylexer.cpp"
		}
		break;
	case 5:
		{
#line 40 ".\\mylexer.l"
 return CHAR;
#line 184 "mylexer.cpp"
		}
		break;
	case 6:
		{
#line 41 ".\\mylexer.l"
 return VOID;
#line 191 "mylexer.cpp"
		}
		break;
	case 7:
		{
#line 42 ".\\mylexer.l"
 return MAIN;
#line 198 "mylexer.cpp"
		}
		break;
	case 8:
		{
#line 43 ".\\mylexer.l"
 return WHILE;
#line 205 "mylexer.cpp"
		}
		break;
	case 9:
		{
#line 44 ".\\mylexer.l"
 return STRUCT;
#line 212 "mylexer.cpp"
		}
		break;
	case 10:
		{
#line 45 ".\\mylexer.l"
 return IF;
#line 219 "mylexer.cpp"
		}
		break;
	case 11:
		{
#line 46 ".\\mylexer.l"
 return ELSE;
#line 226 "mylexer.cpp"
		}
		break;
	case 12:
		{
#line 47 ".\\mylexer.l"
 return FOR;
#line 233 "mylexer.cpp"
		}
		break;
	case 13:
		{
#line 48 ".\\mylexer.l"
 return READ;
#line 240 "mylexer.cpp"
		}
		break;
	case 14:
		{
#line 49 ".\\mylexer.l"
 return WRITE;
#line 247 "mylexer.cpp"
		}
		break;
	case 15:
		{
#line 50 ".\\mylexer.l"
 return RETURN;
#line 254 "mylexer.cpp"
		}
		break;
	case 16:
		{
#line 51 ".\\mylexer.l"
 return PUBLIC;
#line 261 "mylexer.cpp"
		}
		break;
	case 17:
		{
#line 52 ".\\mylexer.l"
 return PRIVATE;
#line 268 "mylexer.cpp"
		}
		break;
	case 18:
		{
#line 53 ".\\mylexer.l"
 return CLASS;
#line 275 "mylexer.cpp"
		}
		break;
	case 19:
		{
#line 54 ".\\mylexer.l"
 return STATIC;
#line 282 "mylexer.cpp"
		}
		break;
	case 20:
		{
#line 56 ".\\mylexer.l"
 return ID;
#line 289 "mylexer.cpp"
		}
		break;
	case 21:
		{
#line 57 ".\\mylexer.l"
 return NUMBER;
#line 296 "mylexer.cpp"
		}
		break;
	case 22:
		{
#line 58 ".\\mylexer.l"
 return STIRNG;
#line 303 "mylexer.cpp"
		}
		break;
	case 23:
		{
#line 59 ".\\mylexer.l"
 return CHARACTER;
#line 310 "mylexer.cpp"
		}
		break;
	case 24:
		{
#line 60 ".\\mylexer.l"

#line 317 "mylexer.cpp"
		}
		break;
	case 25:
		{
#line 61 ".\\mylexer.l"
return BOOL
#line 324 "mylexer.cpp"
		}
		break;
	case 26:
		{
#line 63 ".\\mylexer.l"
 return *yytext;
#line 331 "mylexer.cpp"
		}
		break;
	case 27:
		{
#line 66 ".\\mylexer.l"
;
#line 338 "mylexer.cpp"
		}
		break;
	default:
		yyassert(0);
		break;
	}
	yyreturnflg = yyfalse;
	return 0;
}

#ifndef YYNBORLANDWARN
#ifdef __BORLANDC__
#pragma warn .rch		// <warning: unreachable code> to the old state
#endif
#endif

void YYLEXERNAME::yytables()
{
	yystext_size = YYTEXT_SIZE;
	yysunput_size = YYUNPUT_SIZE;
	yytext_max = YYTEXT_MAX;
	yyunput_max = YYUNPUT_MAX;

	static const yymatch_t YYNEARFAR YYBASED_CODE match[] = {
		0
	};
	yymatch = match;

	yytransitionmax = 121;
	static const yytransition_t YYNEARFAR YYBASED_CODE transition[] = {
		{ 0, 0 },
		{ 4, 1 },
		{ 4, 1 },
		{ 4, 4 },
		{ 4, 4 },
		{ 54, 35 },
		{ 52, 34 },
		{ 73, 55 },
		{ 37, 18 },
		{ 20, 7 },
		{ 27, 11 },
		{ 25, 10 },
		{ 28, 11 },
		{ 21, 7 },
		{ 26, 10 },
		{ 24, 9 },
		{ 22, 7 },
		{ 34, 15 },
		{ 38, 18 },
		{ 74, 55 },
		{ 29, 11 },
		{ 35, 16 },
		{ 55, 35 },
		{ 36, 17 },
		{ 4, 1 },
		{ 53, 34 },
		{ 4, 4 },
		{ 32, 14 },
		{ 19, 6 },
		{ 39, 19 },
		{ 33, 14 },
		{ 40, 20 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 41, 21 },
		{ 5, 1 },
		{ 5, 1 },
		{ 42, 22 },
		{ 43, 23 },
		{ 44, 24 },
		{ 45, 25 },
		{ 46, 26 },
		{ 47, 29 },
		{ 48, 30 },
		{ 49, 31 },
		{ 50, 32 },
		{ 51, 33 },
		{ 23, 8 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 30, 12 },
		{ 56, 36 },
		{ 57, 37 },
		{ 58, 38 },
		{ 59, 39 },
		{ 60, 40 },
		{ 61, 41 },
		{ 62, 42 },
		{ 63, 43 },
		{ 64, 44 },
		{ 65, 45 },
		{ 66, 48 },
		{ 67, 49 },
		{ 68, 50 },
		{ 69, 51 },
		{ 70, 52 },
		{ 71, 53 },
		{ 72, 54 },
		{ 31, 13 },
		{ 75, 56 },
		{ 76, 57 },
		{ 77, 58 },
		{ 78, 60 },
		{ 79, 61 },
		{ 80, 62 },
		{ 81, 63 },
		{ 82, 65 },
		{ 83, 67 },
		{ 84, 68 },
		{ 85, 69 },
		{ 86, 71 },
		{ 87, 72 },
		{ 88, 73 },
		{ 89, 74 },
		{ 90, 76 },
		{ 6, 1 },
		{ 7, 1 },
		{ 8, 1 },
		{ 9, 1 },
		{ 10, 1 },
		{ 91, 77 },
		{ 92, 78 },
		{ 11, 1 },
		{ 93, 80 },
		{ 94, 81 },
		{ 95, 83 },
		{ 12, 1 },
		{ 13, 1 },
		{ 96, 84 },
		{ 14, 1 },
		{ 97, 85 },
		{ 15, 1 },
		{ 16, 1 },
		{ 98, 86 },
		{ 99, 87 },
		{ 17, 1 },
		{ 18, 1 },
		{ 100, 88 },
		{ 101, 89 },
		{ 102, 92 },
		{ 5, 1 },
		{ 104, 96 },
		{ 5, 1 },
		{ 103, 93 },
		{ 105, 102 },
		{ 106, 105 }
	};
	yytransition = transition;

	static const yystate_t YYNEARFAR YYBASED_CODE state[] = {
		{ 0, 0, 0 },
		{ -3, -8, 0 },
		{ 1, 0, 0 },
		{ 0, 0, 27 },
		{ 0, -6, 1 },
		{ 0, 0, 26 },
		{ 0, -83, 27 },
		{ 0, -95, 27 },
		{ 0, -61, 27 },
		{ 0, -93, 27 },
		{ 0, -97, 27 },
		{ 0, -90, 27 },
		{ 0, -42, 27 },
		{ 0, -44, 27 },
		{ 0, -87, 27 },
		{ 0, -84, 27 },
		{ 0, -95, 27 },
		{ 0, -88, 27 },
		{ 0, -96, 27 },
		{ 0, -82, 0 },
		{ 0, -66, 0 },
		{ 0, -60, 0 },
		{ 0, -69, 0 },
		{ 0, -76, 0 },
		{ 0, -73, 0 },
		{ 0, -68, 0 },
		{ 0, -70, 0 },
		{ 0, 0, 20 },
		{ 0, 0, 10 },
		{ 0, -71, 0 },
		{ 0, -59, 0 },
		{ 0, -62, 0 },
		{ 0, -57, 0 },
		{ 0, -49, 0 },
		{ 0, -91, 0 },
		{ 0, -92, 0 },
		{ 0, -49, 0 },
		{ 0, -48, 0 },
		{ 0, -47, 0 },
		{ 0, -49, 0 },
		{ 0, -54, 0 },
		{ 0, -54, 0 },
		{ 0, -47, 0 },
		{ 0, -35, 0 },
		{ 0, -37, 0 },
		{ 0, -32, 0 },
		{ 0, 0, 12 },
		{ 0, 0, 2 },
		{ 0, -44, 0 },
		{ 0, -31, 0 },
		{ 0, -50, 0 },
		{ 0, -39, 0 },
		{ 0, -30, 0 },
		{ 0, -46, 0 },
		{ 0, -44, 0 },
		{ 0, -98, 0 },
		{ 0, -26, 0 },
		{ 0, -33, 0 },
		{ 0, -40, 0 },
		{ 0, 0, 25 },
		{ 0, -20, 5 },
		{ 0, -37, 0 },
		{ 0, -22, 0 },
		{ 0, -28, 0 },
		{ 0, 0, 11 },
		{ 0, -35, 0 },
		{ 0, 0, 7 },
		{ 0, -19, 0 },
		{ 0, -14, 0 },
		{ 0, -21, 0 },
		{ 0, 0, 13 },
		{ 0, -29, 0 },
		{ 0, -19, 0 },
		{ 0, -23, 0 },
		{ 0, -11, 0 },
		{ 0, 0, 6 },
		{ 0, -12, 0 },
		{ 0, -6, 0 },
		{ 0, -3, 0 },
		{ 0, 0, 18 },
		{ 0, -12, 0 },
		{ 0, -2, 0 },
		{ 0, 0, 3 },
		{ 0, -14, 0 },
		{ 0, -13, 0 },
		{ 0, 6, 0 },
		{ 0, -2, 0 },
		{ 0, 10, 0 },
		{ 0, 9, 0 },
		{ 0, -3, 0 },
		{ 0, 0, 8 },
		{ 0, 0, 14 },
		{ 0, -2, 0 },
		{ 0, 2, 0 },
		{ 0, 0, 4 },
		{ 0, 0, 21 },
		{ 0, 15, 0 },
		{ 0, 0, 16 },
		{ 0, 0, 15 },
		{ 0, 0, 19 },
		{ 0, 0, 22 },
		{ 0, 0, 9 },
		{ 0, 18, 0 },
		{ 0, 0, 24 },
		{ 0, 0, 17 },
		{ 0, 6, 0 },
		{ 0, 0, 23 }
	};
	yystate = state;

	static const yybackup_t YYNEARFAR YYBASED_CODE backup[] = {
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0
	};
	yybackup = backup;
}
#line 67 ".\\mylexer.l"


