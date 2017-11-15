/****************************************************************************
*                     U N R E G I S T E R E D   C O P Y
* 
* You are on day 38 of your 30 day trial period.
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
* Time: 15:31:40
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
#line 63 ".\\mylexer.l"
 return *yytext;
#line 324 "mylexer.cpp"
		}
		break;
	case 26:
		{
#line 66 ".\\mylexer.l"
;
#line 331 "mylexer.cpp"
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

	yytransitionmax = 118;
	static const yytransition_t YYNEARFAR YYBASED_CODE transition[] = {
		{ 0, 0 },
		{ 4, 1 },
		{ 4, 1 },
		{ 4, 4 },
		{ 4, 4 },
		{ 51, 33 },
		{ 49, 32 },
		{ 69, 52 },
		{ 35, 17 },
		{ 18, 6 },
		{ 25, 10 },
		{ 23, 9 },
		{ 26, 10 },
		{ 19, 6 },
		{ 24, 9 },
		{ 32, 14 },
		{ 20, 6 },
		{ 33, 15 },
		{ 36, 17 },
		{ 70, 52 },
		{ 27, 10 },
		{ 34, 16 },
		{ 52, 33 },
		{ 22, 8 },
		{ 4, 1 },
		{ 50, 32 },
		{ 4, 4 },
		{ 30, 13 },
		{ 37, 18 },
		{ 38, 19 },
		{ 31, 13 },
		{ 39, 20 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 40, 21 },
		{ 5, 1 },
		{ 5, 1 },
		{ 41, 22 },
		{ 42, 23 },
		{ 43, 24 },
		{ 44, 27 },
		{ 45, 28 },
		{ 46, 29 },
		{ 47, 30 },
		{ 48, 31 },
		{ 28, 11 },
		{ 29, 12 },
		{ 53, 34 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 5, 1 },
		{ 54, 35 },
		{ 55, 36 },
		{ 56, 37 },
		{ 57, 38 },
		{ 58, 39 },
		{ 59, 40 },
		{ 60, 41 },
		{ 61, 42 },
		{ 62, 45 },
		{ 63, 46 },
		{ 64, 47 },
		{ 65, 48 },
		{ 66, 49 },
		{ 67, 50 },
		{ 68, 51 },
		{ 21, 7 },
		{ 71, 53 },
		{ 72, 54 },
		{ 73, 55 },
		{ 74, 56 },
		{ 75, 57 },
		{ 76, 58 },
		{ 77, 59 },
		{ 78, 61 },
		{ 79, 63 },
		{ 80, 64 },
		{ 81, 65 },
		{ 82, 67 },
		{ 83, 68 },
		{ 84, 69 },
		{ 85, 70 },
		{ 86, 72 },
		{ 87, 73 },
		{ 88, 74 },
		{ 89, 76 },
		{ 90, 77 },
		{ 6, 1 },
		{ 7, 1 },
		{ 8, 1 },
		{ 9, 1 },
		{ 91, 79 },
		{ 92, 80 },
		{ 10, 1 },
		{ 93, 81 },
		{ 94, 82 },
		{ 95, 83 },
		{ 11, 1 },
		{ 12, 1 },
		{ 97, 85 },
		{ 13, 1 },
		{ 96, 84 },
		{ 14, 1 },
		{ 15, 1 },
		{ 98, 88 },
		{ 99, 89 },
		{ 16, 1 },
		{ 17, 1 },
		{ 100, 92 },
		{ 101, 98 },
		{ 0, 0 },
		{ 5, 1 },
		{ 102, 101 },
		{ 5, 1 }
	};
	yytransition = transition;

	static const yystate_t YYNEARFAR YYBASED_CODE state[] = {
		{ 0, 0, 0 },
		{ -3, -8, 0 },
		{ 1, 0, 0 },
		{ 0, 0, 26 },
		{ 0, -6, 1 },
		{ 0, 0, 25 },
		{ 0, -95, 26 },
		{ 0, -41, 26 },
		{ 0, -85, 26 },
		{ 0, -97, 26 },
		{ 0, -90, 26 },
		{ 0, -49, 26 },
		{ 0, -68, 26 },
		{ 0, -87, 26 },
		{ 0, -86, 26 },
		{ 0, -99, 26 },
		{ 0, -90, 26 },
		{ 0, -96, 26 },
		{ 0, -69, 0 },
		{ 0, -68, 0 },
		{ 0, -78, 0 },
		{ 0, -80, 0 },
		{ 0, -75, 0 },
		{ 0, -70, 0 },
		{ 0, -72, 0 },
		{ 0, 0, 20 },
		{ 0, 0, 10 },
		{ 0, -73, 0 },
		{ 0, -61, 0 },
		{ 0, -64, 0 },
		{ 0, -59, 0 },
		{ 0, -51, 0 },
		{ 0, -91, 0 },
		{ 0, -92, 0 },
		{ 0, -55, 0 },
		{ 0, -50, 0 },
		{ 0, -49, 0 },
		{ 0, -57, 0 },
		{ 0, -57, 0 },
		{ 0, -50, 0 },
		{ 0, -38, 0 },
		{ 0, -40, 0 },
		{ 0, -35, 0 },
		{ 0, 0, 12 },
		{ 0, 0, 2 },
		{ 0, -47, 0 },
		{ 0, -34, 0 },
		{ 0, -53, 0 },
		{ 0, -42, 0 },
		{ 0, -33, 0 },
		{ 0, -49, 0 },
		{ 0, -47, 0 },
		{ 0, -98, 0 },
		{ 0, -29, 0 },
		{ 0, -36, 0 },
		{ 0, -43, 0 },
		{ 0, -23, 5 },
		{ 0, -40, 0 },
		{ 0, -25, 0 },
		{ 0, -31, 0 },
		{ 0, 0, 11 },
		{ 0, -38, 0 },
		{ 0, 0, 7 },
		{ 0, -22, 0 },
		{ 0, -17, 0 },
		{ 0, -24, 0 },
		{ 0, 0, 13 },
		{ 0, -32, 0 },
		{ 0, -22, 0 },
		{ 0, -26, 0 },
		{ 0, -14, 0 },
		{ 0, 0, 6 },
		{ 0, -15, 0 },
		{ 0, -14, 0 },
		{ 0, -11, 0 },
		{ 0, 0, 18 },
		{ 0, -21, 0 },
		{ 0, -11, 0 },
		{ 0, 0, 3 },
		{ 0, -19, 0 },
		{ 0, -20, 0 },
		{ 0, -1, 0 },
		{ 0, -11, 0 },
		{ 0, 1, 0 },
		{ 0, 2, 0 },
		{ 0, -13, 0 },
		{ 0, 0, 8 },
		{ 0, 0, 14 },
		{ 0, -8, 0 },
		{ 0, -7, 0 },
		{ 0, 0, 4 },
		{ 0, 0, 21 },
		{ 0, 11, 0 },
		{ 0, 0, 16 },
		{ 0, 0, 15 },
		{ 0, 0, 19 },
		{ 0, 0, 22 },
		{ 0, 0, 9 },
		{ 0, 12, 0 },
		{ 0, 0, 24 },
		{ 0, 0, 17 },
		{ 0, 2, 0 },
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
		0
	};
	yybackup = backup;
}
#line 67 ".\\mylexer.l"


