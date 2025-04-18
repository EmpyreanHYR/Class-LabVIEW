// Othello.cpp : Defines the entry point for the console application.
//

#include "stdio.h"
#include "stdlib.h"
#include "CheckStatus.h"
#include "TurnOver.h"
#include "AutoPutOneChess.h"


int GetNewChessPosition(int thePositionArrary[8][8], int chessColor, 
						 int step, int *autoRow, int *autoColumn) 
{   rand();
	if ((step)<54)
		Auto_Put_Chess(thePositionArrary, chessColor, 7, autoRow, autoColumn);
	else 
		Auto_Put_Chess(thePositionArrary, chessColor, 64-(step), autoRow, autoColumn);
	return(0);
}
