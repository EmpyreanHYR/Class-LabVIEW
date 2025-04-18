
int Turn_Over_Next_chess(int chessBoard[8][8], int chessColor, int selfRow, 
						 int selfColumn, int neighbourRow, int neighbourColumn)
{
	int couldTurn= 0;
	int currentColor;
	selfRow+=neighbourRow;  selfColumn+=neighbourColumn;
	if ((selfRow>0)&&(selfRow<7)&&(selfColumn>0)&&(selfColumn<7)) 
	{
		currentColor=chessBoard[selfRow][selfColumn];
		if (currentColor>10)
			if (chessColor!=currentColor)
				couldTurn=Turn_Over_Next_chess(chessBoard, chessColor, 
												selfRow, selfColumn, 
												neighbourRow, neighbourColumn);
			else couldTurn=1;
	}
	if (couldTurn) chessBoard[selfRow][selfColumn]=chessColor;
	return (couldTurn);
}


	



void Turn_Over_Chesses(int chessBoard[8][8], int chessColor, int row, int column)
{
	chessBoard[row][column]=chessColor;
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, -1, -1); 
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, -1, 0); 
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, -1, 1); 
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, 0, -1); 
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, 0, 1); 
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, 1, -1); 
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, 1, 0); 
	Turn_Over_Next_chess(chessBoard, chessColor, row, column, 1, 1); 
}


