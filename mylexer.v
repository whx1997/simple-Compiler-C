#############################################################################
#                     U N R E G I S T E R E D   C O P Y
# 
# You are on day 38 of your 30 day trial period.
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
# Time: 15:31:40
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

   25  [()<>=+*/;{}.,]

   26  .


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
	0x3f - 0x62 (36)   goto 3
	0x63               goto 6
	0x64               goto 7
	0x65               goto 8
	0x66               goto 9
	0x67 - 0x68 (2)    goto 3
	0x69               goto 10
	0x6a - 0x6c (3)    goto 3
	0x6d               goto 11
	0x6e               goto 12
	0x6f               goto 3
	0x70               goto 13
	0x71               goto 3
	0x72               goto 14
	0x73               goto 15
	0x74 - 0x75 (2)    goto 3
	0x76               goto 16
	0x77               goto 17
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
	0x3f - 0x62 (36)   goto 3
	0x63               goto 6
	0x64               goto 7
	0x65               goto 8
	0x66               goto 9
	0x67 - 0x68 (2)    goto 3
	0x69               goto 10
	0x6a - 0x6c (3)    goto 3
	0x6d               goto 11
	0x6e               goto 12
	0x6f               goto 3
	0x70               goto 13
	0x71               goto 3
	0x72               goto 14
	0x73               goto 15
	0x74 - 0x75 (2)    goto 3
	0x76               goto 16
	0x77               goto 17
	0x78 - 0x7a (3)    goto 3
	0x7b               goto 5
	0x7c               goto 3
	0x7d               goto 5
	0x7e - 0xff (130)  goto 3


state 3
	match 26


state 4
	0x09 - 0x0a (2)    goto 4
	0x20               goto 4

	match 1


state 5
	match 25


state 6
	0x68               goto 18
	0x6c               goto 19
	0x6f               goto 20

	match 26


state 7
	0x6f               goto 21

	match 26


state 8
	0x6c               goto 22

	match 26


state 9
	0x6c               goto 23
	0x6f               goto 24

	match 26


state 10
	0x64               goto 25
	0x66               goto 26
	0x6e               goto 27

	match 26


state 11
	0x61               goto 28

	match 26


state 12
	0x75               goto 29

	match 26


state 13
	0x72               goto 30
	0x75               goto 31

	match 26


state 14
	0x65               goto 32

	match 26


state 15
	0x74               goto 33

	match 26


state 16
	0x6f               goto 34

	match 26


state 17
	0x68               goto 35
	0x72               goto 36

	match 26


state 18
	0x61               goto 37


state 19
	0x61               goto 38


state 20
	0x6d               goto 39


state 21
	0x75               goto 40


state 22
	0x73               goto 41


state 23
	0x6f               goto 42


state 24
	0x72               goto 43


state 25
	match 20


state 26
	match 10


state 27
	0x74               goto 44


state 28
	0x69               goto 45


state 29
	0x6d               goto 46


state 30
	0x69               goto 47


state 31
	0x62               goto 48


state 32
	0x61               goto 49
	0x74               goto 50


state 33
	0x61               goto 51
	0x72               goto 52


state 34
	0x69               goto 53


state 35
	0x69               goto 54


state 36
	0x69               goto 55


state 37
	0x72               goto 56


state 38
	0x73               goto 57


state 39
	0x6d               goto 58


state 40
	0x62               goto 59


state 41
	0x65               goto 60


state 42
	0x61               goto 61


state 43
	match 12


state 44
	match 2


state 45
	0x6e               goto 62


state 46
	0x62               goto 63


state 47
	0x76               goto 64


state 48
	0x6c               goto 65


state 49
	0x64               goto 66


state 50
	0x75               goto 67


state 51
	0x74               goto 68


state 52
	0x69               goto 69
	0x75               goto 70


state 53
	0x64               goto 71


state 54
	0x6c               goto 72


state 55
	0x74               goto 73


state 56
	0x61               goto 74

	match 5


state 57
	0x73               goto 75


state 58
	0x65               goto 76


state 59
	0x6c               goto 77


state 60
	match 11


state 61
	0x74               goto 78


state 62
	match 7


state 63
	0x65               goto 79


state 64
	0x61               goto 80


state 65
	0x69               goto 81


state 66
	match 13


state 67
	0x72               goto 82


state 68
	0x69               goto 83


state 69
	0x6e               goto 84


state 70
	0x63               goto 85


state 71
	match 6


state 72
	0x65               goto 86


state 73
	0x65               goto 87


state 74
	0x63               goto 88


state 75
	match 18


state 76
	0x6e               goto 89


state 77
	0x65               goto 90


state 78
	match 3


state 79
	0x72               goto 91


state 80
	0x74               goto 92


state 81
	0x63               goto 93


state 82
	0x6e               goto 94


state 83
	0x63               goto 95


state 84
	0x67               goto 96


state 85
	0x74               goto 97


state 86
	match 8


state 87
	match 14


state 88
	0x74               goto 98


state 89
	0x74               goto 99


state 90
	match 4


state 91
	match 21


state 92
	0x65               goto 100


state 93
	match 16


state 94
	match 15


state 95
	match 19


state 96
	match 22


state 97
	match 9


state 98
	0x65               goto 101


state 99
	match 24


state 100
	match 17


state 101
	0x72               goto 102


state 102
	match 23


#############################################################################
# Summary
#############################################################################

1 start state(s)
26 expression(s), 102 state(s)


#############################################################################
# End of File
#############################################################################
