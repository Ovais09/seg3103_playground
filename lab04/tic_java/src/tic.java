package src;

public class tic {

    public  String[][] emptyBoard(int rows, int columns){
        String [][] board = new String [rows][columns];

        for (int i= 0; i<rows; i++){
            for(int j=0; j<columns; j++){
                board[i][j] = "_";
            }
        }

        return board;

    }

    public int boardSize (int rows, int columns){
        return rows * columns; 
    }

    public String [][] defaultBoard (){

        String [][] defaultBoard = new String [3][3];

        for (int i= 0; i<3; i++){
            for(int j=0; j<3; j++){
                defaultBoard[i][j] = "_";
            }
        }

        return defaultBoard;


    }
    
}