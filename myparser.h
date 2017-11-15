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
* myparser.h
* C++ header file generated from myparser.y.
* 
* Date: 11/16/17
* Time: 00:34:15
* 
* AYACC Version: 2.07
****************************************************************************/

#ifndef _MYPARSER_H
#define _MYPARSER_H

#include <yycpars.h>

/////////////////////////////////////////////////////////////////////////////
// myparser

#ifndef YYEXPPARSER
#define YYEXPPARSER
#endif

class YYEXPPARSER YYFAR myparser : public _YL yyfparser {
public:
	myparser();
	virtual ~myparser();

protected:
	void yytables();
	virtual void yyaction(int action);
#ifdef YYDEBUG
	void YYFAR* yyattribute1(int index) const;
	void yyinitdebug(void YYFAR** p, int count) const;
#endif

	// attribute functions
	virtual void yystacktoval(int index);
	virtual void yyvaltostack(int index);
	virtual void yylvaltoval();
	virtual void yyvaltolval();
	virtual void yylvaltostack(int index);

	virtual void YYFAR* yynewattribute(int count);
	virtual void yydeleteattribute(void YYFAR* attribute);
	virtual void yycopyattribute(void YYFAR* dest, const void YYFAR* src, int count);

public:
};

#ifndef YYPARSERNAME
#define YYPARSERNAME myparser
#endif

#line 19 ".\\myparser.y"


/*
#ifndef YYSTYPE
#define YYSTYPE type
#endif
*/


#line 81 "myparser.h"
#define INT 257
#define FLOAT 258
#define DOUBLE 259
#define CHAR 260
#define ID 261
#define NUMBER 262
#define VOID 263
#define MAIN 264
#define FOR 265
#define WHILE 266
#define IF 267
#define ELSE 268
#define STRUCT 269
#define READ 270
#define WRITE 271
#define DO 272
#define RETURN 273
#define PUBLIC 274
#define PRIVATE 275
#define CLASS 276
#define STATIC 277
#define STRING 278
#define BOOL 279
#define while 301
#define if 302
#define else 303
#define char 304
#define int 305
#define float 306
#define double 307
#define string 308
#define struct 309
#define union 310
#endif
