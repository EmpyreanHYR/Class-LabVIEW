

int Over_Extremum(int newValue, int extremum, int moreOrLess)
{
	if (moreOrLess)
		 return (newValue>=extremum);
	else return (newValue<=extremum);
}

int SelectBetterValue(int oldValue, int newValue, 
					  int *oldPosition, int newPosition, int moreOrLess)
{
	if (moreOrLess)
	{
		if (newValue>oldValue)
		{
			*oldPosition=newPosition;
			return ( newValue );
		}
		else
		{
			if ((newValue==oldValue)&&(rand()/RAND_MAX<0.4)) *oldPosition=newPosition;
			return (oldValue);
		}
	}
	else 
	{
		if (newValue<oldValue)
		{
			*oldPosition =newPosition;
			return (newValue);
		}
		else
		{
			if ((newValue==oldValue)&&(rand()/RAND_MAX<0.4)) *oldPosition=newPosition;
			return (oldValue);
		}
	}
	
}


int Chess_In_Corner(int oldValue, int moreOrLess, int row, int column)
{
	if (((row==0)&&(column==0))||((row==0)&&(column==7))||((row==7)&&(column==0))
			||((row==7)&&(column==7)))
		if (moreOrLess) return (oldValue+10);
		else return (oldValue-10);
	else return (oldValue); 
}


int Think_Deeper_Step(int initialChessBoard[8][8], int chessColor, int calculateStep,
					  int extremumValue, int moreOrLess, int newChessRow, int newChessColumn)
{
	int chessBoard[8][8];
	positionqueue posiblePosition[30];
	int queueLengh;
	int whiteChessNumber=0, blackChessNumber=0, superInWhiteChess;
	int currentStatus;
	int i,j;
	for (i=0; i<8; i++)
		for (j=0; j<8; j++)
		chessBoard[i][j]=initialChessBoard[i][j];

	
	Turn_Over_Chesses(chessBoard, chessColor, newChessRow, newChessColumn);
	Flush_Position_Arrary(chessBoard);
	chessColor=23-chessColor;

	currentStatus=Check_Status(chessBoard, posiblePosition, &queueLengh, chessColor, 
							   &whiteChessNumber, &blackChessNumber);

	calculateStep--;
	superInWhiteChess=whiteChessNumber-blackChessNumber;
	if ((calculateStep<0)||(currentStatus==0))	
		if (currentStatus==0)	return (100*superInWhiteChess);
		else					return (superInWhiteChess);

	else
	{
		int bestValue, bestPosition=0;
		
		if (currentStatus==(chessColor-10))
		{
			chessColor=23-chessColor;
			moreOrLess=!moreOrLess;
			Build_Positon_Queue(chessBoard, posiblePosition, &queueLengh, chessColor);
		}
		bestValue=(moreOrLess)? -90 : 90;
		for ( i=0; i<queueLengh; i++)
		{
			bestValue=SelectBetterValue(bestValue, 
										Think_Deeper_Step(chessBoard, chessColor, 
														  calculateStep, bestValue, !moreOrLess, 
														  posiblePosition[i].row, 
														  posiblePosition[i].column ), 
										&bestPosition, i, moreOrLess);
			bestValue=Chess_In_Corner(bestValue, moreOrLess, 
									  posiblePosition[i].row, posiblePosition[i].column );
			if ( Over_Extremum( bestValue, extremumValue, moreOrLess) )  break;
		}
		
		return (bestValue);
	}

}



void Auto_Put_Chess(int chessBoard[8][8], int chessColor, int calculateStep,
					int *bestRow, int *bestColumn)
{
	positionqueue posiblePosition[30];
	int queueLengh;
	int bestPosition=0, bestValue=-90;
	int temp;
	int i;
	
	Build_Positon_Queue(chessBoard, posiblePosition, &queueLengh, chessColor);
	for ( i=0; i<queueLengh; i++)
	{
		bestValue=SelectBetterValue(bestValue, 
									temp=Think_Deeper_Step(chessBoard, chessColor, 
														   calculateStep, bestValue, 0, 
														   posiblePosition[i].row, 
														   posiblePosition[i].column ), 
									&bestPosition, i, 1);
		bestValue=Chess_In_Corner(bestValue, 1, 
								  posiblePosition[i].row, posiblePosition[i].column );
	}
	*bestRow=posiblePosition[bestPosition].row;
	*bestColumn=posiblePosition[bestPosition].column;

}


