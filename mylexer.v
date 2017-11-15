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
# mylexer.v
# Lex verbose file generated from mylexer.l.
# 
# Date: 11/15/17
# Time: 19:36:57
# 
# ALex Version: 2.07
#############################################################################


#############################################################################
# Expressions
#############################################################################

    1  [ \n\t]+

    2  int

    3  float

    4  double

    5  char

    6  void

    7  main

    8  while

    9  struct

   10  if

   11  else

   12  for

   13  read

   14  write

   15  return

   16  public

   17  private

   18  class

   19  static

   20  id

   21  number

   22  string

   23  character

   24  comment

   25  bool

   26  [()<>=+*/;{}.,]

   27  .


#############################################################################
# States
#############################################################################

state 1
	INITIAL

	0x00 - 0x08 (9)    goto 3
	0x09               goto 4
	0x0a               goto 4
	0x0b - 0x1f (21)   goto 3
	0x20               goto 4
	0x21 - 0x27 (7)    goto 3
	0x28 - 0x2c (5)    goto 5
	0x2d               goto 3
	0x2e - 0x2f (2)    goto 5
	0x30 - 0x3a (11)   goto 3
	0x3b - 0x3e (4)    goto 5
	0x3f - 0x61 (35)   goto 3
	0x62               goto 6
	0x63               goto 7
	0x64               goto 8
	0x65               goto 9
	0x66               goto 10
	0x67 - 0x68 (2)    goto 3
	0x69               goto 11
	0x6a - 0x6c (3)    goto 3
	0x6d               goto 12
	0x6e               goto 13
	0x6f               goto 3
	0x70               goto 14
	0x71               goto 3
	0x72               goto 15
	0x73               goto 16
	0x74 - 0x75 (2)    goto 3
	0x76               goto 17
	0x77               goto 18
	0x78 - 0x7a (3)    goto 3
	0x7b               goto 5
	0x7c               goto 3
	0x7d               goto 5
	0x7e - 0xff (130)  goto 3


state 2
	^INITIAL

	0x00 - 0x08 (9)    goto 3
	0x09               goto 4
	0x0a               goto 4
	0x0b - 0x1f (21)   goto 3
	0x20               goto 4
	0x21 - 0x27 (7)    goto 3
	0x28 - 0x2c (5)    goto 5
	0x2d               goto 3
	0x2e - 0x2f (2)    goto 5
	0x30 - 0x3a (11)   goto 3
	0x3b - 0x3e (4)    goto 5
	0x3f - 0x61 (35)   goto 3
	0x62               goto 6
	0x63               goto 7
	0x64               goto 8
	0x65               goto 9
	0x66               goto 10
	0x67 - 0x68 (2)    goto 3
	0x69               goto 11
	0x6a - 0x6c (3)    goto 3
	0x6d               goto 12
	0x6e               goto 13
	0x6f               goto 3
	0x70               goto 14
	0x71               goto 3
	0x72               goto 15
	0x73               goto 16
	0x74 - 0x75 (2)    goto 3
	0x76               goto 17
	0x77               goto 18
	0x78 - 0x7a (3)    goto 3
	0x7b               goto 5
	0x7c               goto 3
	0x7d               goto 5
	0x7e - 0xff (130)  goto 3


state 3
	match 27


state 4
	0x09 - 0x0a (2)    goto 4
	0x20               goto 4

	match 1


state 5
	match 26


state 6
	0x6f               goto 19

	match 27


state 7
	0x68               goto 20
	0x6c               goto 21
	0x6f               goto 22

	match 27


state 8
	0x6f               goto 23

	match 27


state 9
	0x6c               goto 24

	match 27


state 10
	0x6c               goto 25
	0x6f               goto 26

	match 27


state 11
	0x64               goto 27
	0x66               goto 28
	0x6e               goto 29

	match 27


state 12
	0x61               goto 30

	match 27


state 13
	0x75               goto 31

	match 27


state 14
	0x72               goto 32
	0x75               goto 33

	match 27


state 15
	0x65               goto 34

	match 27


state 16
	0x74               goto 35

	match 27


state 17
	0x6f               goto 36

	match 27


state 18
	0x68               goto 37
	0x72               goto 38

	match 27


state 19
	0x6f               goto 39


state 20
	0x61               goto 40


state 21
	0x61               goto 41


state 22
	0x6d               goto 42


state 23
	0x75               goto 43


state 24
	0x73               goto 44


state 25
	0x6f               goto 45


state 26
	0x72               goto 46


state 27
	match 20


state 28
	match 10


state 29
	0x74               goto 47


state 30
	0x69               goto 48


state 31
	0x6d               goto 49


state 32
	0x69               goto 50


state 33
	0x62               goto 51


state 34
	0x61               goto 52
	0x74               goto 53


state 35
	0x61               goto 54
	0x72               goto 55


state 36
	0x69               goto 56


state 37
	0x69               goto 57


state 38
	0x69               goto 58


state 39
	0x6c               goto 59


state 40
	0x72               goto 60


state 41
	0x73               goto 61


state 42
	0x6d               goto 62


state 43
	0x62               goto 63


state 44
	0x65               goto 64


state 45
	0x61               goto 65


state 46
	match 12


state 47
	match 2


state 48
	0x6e               goto 66


state 49
	0x62               goto 67


state 50
	0x76               goto 68


state 51
	0x6c               goto 69


state 52
	0x64               goto 70


state 53
	0x75               goto 71


state 54
	0x74               goto 72


state 55
	0x69               goto 73
	0x75               goto 74


state 56
	0x64               goto 75


state 57
	0x6c               goto 76


state 58
	0x74               goto 77


state 59
	match 25


state 60
	0x61               goto 78

	match 5


state 61
	0x73               goto 79


state 62
	0x65               goto 80


state 63
	0x6c               goto 81


state 64
	match 11


state 65
	0x74               goto 82


state 66
	match 7


state 67
	0x65               goto 83


state 68
	0x61               goto 84


state 69
	0x69               goto 85


state 70
	match 13


state 71
	0x72               goto 86


state 72
	0x69               goto 87


state 73
	0x6e               goto 88


state 74
	0x63               goto 89


state 75
	match 6


state 76
	0x65               goto 90


state 77
	0x65               goto 91


state 78
	0x63               goto 92


state 79
	match 18


state 80
	0x6e               goto 93


state 81
	0x65               goto 94


state 82
	match 3


state 83
	0x72               goto 95


state 84
	0x74               goto 96


state 85
	0x63               goto 97


state 86
	0x6e               goto 98


state 87
	0x63               goto 99


state 88
	0x67               goto 100


state 89
	0x74               goto 101


state 90
	match 8


state 91
	match 14


state 92
	0x74               goto 102


state 93
	0x74               goto 103


state 94
	match 4


state 95
	match 21


state 96
	0x65               goto 104


state 97
	match 16


state 98
	match 15


state 99
	match 19


state 100
	match 22


state 101
	match 9


state 102
	0x65               goto 105


state 103
	match 24


state 104
	match 17


state 105
	0x72               goto 106


state 106
	match 23


#############################################################################
# Summary
#############################################################################

1 start state(s)
27 expression(s), 106 state(s)


#############################################################################
# End of File
#############################################################################
