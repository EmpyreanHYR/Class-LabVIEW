
typedef struct positionqueue
	{
	int row;
	int column;
	}positionqueue;
	




int Check_Neighbours(int chessBoard[8][8], int chessColor, int selfRow, 
				   int selfColumn, int neighbourRow, int neighbourColumn)
{
	int currentColor;
	selfRow+=neighbourRow;  selfColumn+=neighbourColumn;
	if ((selfRow<0)||(selfRow>7)||(selfColumn<0)||(selfColumn>7)) return(0);
	else
	{
		currentColor=chessBoard[selfRow][selfColumn];
		if (chessColor==0) 
			if (currentColor>10)
			{
				chessColor=chessBoard[selfRow][selfColumn];
				return(Check_Neighbours(chessBoard,chessColor,selfRow,
						selfColumn,neighbourRow,neighbourColumn));
			}
			else return(0);
		else
		{
			if (currentColor<10) return(0);
			else
				if (currentColor==chessColor)
					return(Check_Neighbours(chessBoard,chessColor,selfRow,
						selfColumn,neighbourRow,neighbourColumn));
				else return(currentColor-10);
		}
	}
}


void Check_One_Neighbour(int chessBoard[8][8], int *posibleColor,  
					  int selfRow, int selfColumn, 
					  int neighbourRow, int neighbourColumn)
{
	switch (*posibleColor)
	{
		case 0 : (*posibleColor)=Check_Neighbours( chessBoard, 0, selfRow, 
					   selfColumn, neighbourRow, neighbourColumn);
			break;
		case 1 :
		case 2 :
			if (chessBoard[selfRow+neighbourRow][selfColumn+neighbourColumn]
				==((*posibleColor)+10))
				(*posibleColor)+=Check_Neighbours( chessBoard, 0, selfRow, 
					   selfColumn, neighbourRow, neighbourColumn);
			break;
		case 3 :
			break;
	}
}
	



void Flush_Position_Arrary(int chessBoard[8][8])
{
	int row,column;
	for (row=0; row<8; row++)
		for (column=0; column<8; column++)
		{
			if (chessBoard[row][column]<10)
			{
				chessBoard[row][column]=0;
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, -1, -1);
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, -1, 0);
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, -1, 1);
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, 0, -1);
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, 0, 1);
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, 1, -1);
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, 1, 0);
				Check_One_Neighbour(chessBoard, &chessBoard[row][column],  
					  row, column, 1, 1);
			}
		}
}


//-------------------------------------------------------------------
// This function check whether there has posible position to put
// down the chess.
// Return Values:   0 : Game over;
//					1 : No position for white chess;
//					2 : No position for black chess;
//					3 : There has position for either chess.
//--------------------------------------------------------------------


int Check_Status(int chessBoard[8][8], positionqueue posiblePosition[30], int *queueLengh,
				 int myColor, int *whiteChessNumber, int *blackChessNumber)
{
	int row,column;
	int positionInQueue=0;
	int whiteChessPosiblePosition=0, blackChessPosiblePosition=0;
	for (row=0; row<8; row++)
		for (column=0; column<8; column++)
			switch (chessBoard[row][column])
			{
				case 1 : whiteChessPosiblePosition++;
					if (myColor==11) 
					{
						posiblePosition[positionInQueue].row=row;
						posiblePosition[positionInQueue].column=column;
						positionInQueue++;
					}
					break;
				case 2 : blackChessPosiblePosition++;
					if (myColor==12) 
					{
						posiblePosition[positionInQueue].row=row;
						posiblePosition[positionInQueue].column=column;
						positionInQueue++;
					}

					break;
				case 3 : 
					whiteChessPosiblePosition++;
					blackChessPosiblePosition++;
					posiblePosition[positionInQueue].row=row;
					posiblePosition[positionInQueue].column=column;
					positionInQueue++;
					break;
				case 11: (*whiteChessNumber)++;
					break;
				case 12: (*blackChessNumber)++;
					break;
			}
	*queueLengh=positionInQueue;
	if (whiteChessPosiblePosition==0)
		if (whiteChessPosiblePosition==0)
			return (0);
		else return (1);
	else
		if (whiteChessPosiblePosition==0)
			return (2);
		else return (3);
}



void Build_Positon_Queue(int chessBoard[8][8], positionqueue posiblePosition[30], 
					     int *queueLengh, int myColor)
{
	int row,column;
	int positionInQueue=0;
	int whiteChessPosiblePosition=0, blackChessPosiblePosition=0;
	for (row=0; row<8; row++)
		for (column=0; column<8; column++)
			switch (chessBoard[row][column])
			{
				case 1 : 
					if (myColor==11) 
					{
						posiblePosition[positionInQueue].row=row;
						posiblePosition[positionInQueue].column=column;
						positionInQueue++;
					}
					break;
				case 2 : 
					if (myColor==12) 
					{
						posiblePosition[positionInQueue].row=row;
						posiblePosition[positionInQueue].column=column;
						positionInQueue++;
					}

					break;
				case 3 : 
					posiblePosition[positionInQueue].row=row;
					posiblePosition[positionInQueue].column=column;
					positionInQueue++;
					break;
			}
	*queueLengh=positionInQueue;
}

